package cz.cvut.fit.mi_mpr_dip.admission.service.deduplication.template;

import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.stereotype.Service;

import com.google.common.collect.Sets;

import cz.cvut.fit.mi_mpr_dip.admission.domain.Admission;
import cz.cvut.fit.mi_mpr_dip.admission.domain.Evaluation;
import cz.cvut.fit.mi_mpr_dip.admission.domain.EvaluationType;

@Service
public class EvaluationDeduplicationTemplate implements AdmissionDeduplicationTemplate {

	@Override
	public void deduplicate(Admission admission) {
		Set<Evaluation> evaluations = admission.getEvaluations();
		if (CollectionUtils.isNotEmpty(evaluations)) {
			deduplicateEvaluations(evaluations);
		}
	}

	private void deduplicateEvaluations(Set<Evaluation> evaluations) {
		Set<EvaluationType> evaluationTypes = collectEvaluationTypes(evaluations);
		deduplicateEvaluationTypes(evaluationTypes);
		deduplicateEvaluations(evaluations, evaluationTypes);
	}

	private void deduplicateEvaluations(Set<Evaluation> evaluations, Set<EvaluationType> evaluationTypes) {
		for (EvaluationType evaluationType : evaluationTypes) {
			for (Evaluation evaluation : evaluations) {
				if (evaluation.getEvaluationType().equals(evaluationType)) {
					evaluation.setEvaluationType(evaluationType);
				}
			}
		}
	}

	private Set<EvaluationType> collectEvaluationTypes(Set<Evaluation> evaluations) {
		Set<EvaluationType> evaluationTypes = getEvaluationTypes();
		for (Evaluation evaluation : evaluations) {
			evaluationTypes.add(evaluation.getEvaluationType());
		}
		return evaluationTypes;
	}

	private void deduplicateEvaluationTypes(Set<EvaluationType> evaluationTypes) {
		Set<EvaluationType> replacements = getEvaluationTypes();
		Iterator<EvaluationType> iterator = evaluationTypes.iterator();
		while (iterator.hasNext()) {
			EvaluationType evaluationType = iterator.next();
			List<EvaluationType> dbEvaluationTypes = EvaluationType.findEvaluationTypesByNameEquals(
					evaluationType.getName()).getResultList();
			if (CollectionUtils.isNotEmpty(dbEvaluationTypes)) {
				replacements.add(dbEvaluationTypes.get(0));
				iterator.remove();
			}
		}
		evaluationTypes.addAll(replacements);
	}

	private Set<EvaluationType> getEvaluationTypes() {
		return Sets.newHashSet();
	}
}