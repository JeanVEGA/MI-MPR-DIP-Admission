package cz.cvut.fit.mi_mpr_dip.admission.service.deduplication.template;

import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.stereotype.Service;

import com.google.common.collect.Sets;

import cz.cvut.fit.mi_mpr_dip.admission.domain.Admission;
import cz.cvut.fit.mi_mpr_dip.admission.domain.education.Accomplishment;
import cz.cvut.fit.mi_mpr_dip.admission.domain.education.AccomplishmentType;

@Service
public class AccomplishmentDeduplicationTemplate implements AdmissionDeduplicationTemplate {

	@Override
	public void deduplicate(Admission admission) {
		Set<Accomplishment> accomplishments = admission.getAccomplishments();
		if (CollectionUtils.isNotEmpty(accomplishments)) {
			deduplicateAccomplishments(accomplishments);
		}
	}

	private void deduplicateAccomplishments(Set<Accomplishment> accomplishments) {
		Set<AccomplishmentType> accomplishmentTypes = collectAccomplishmentTypes(accomplishments);
		deduplicateAccomplishmentTypes(accomplishmentTypes);
		deduplicateAccomplishments(accomplishments, accomplishmentTypes);
	}

	private void deduplicateAccomplishments(Set<Accomplishment> accomplishments,
			Set<AccomplishmentType> accomplishmentTypes) {
		for (AccomplishmentType accomplishmentType : accomplishmentTypes) {
			for (Accomplishment accomplishment : accomplishments) {
				if (accomplishment.getAccomplishmentType().equals(accomplishmentType)) {
					accomplishment.setAccomplishmentType(accomplishmentType);
				}
			}
		}
	}

	private Set<AccomplishmentType> collectAccomplishmentTypes(Set<Accomplishment> accomplishments) {
		Set<AccomplishmentType> accomplishmentTypes = Sets.newHashSet();
		for (Accomplishment accomplishment : accomplishments) {
			accomplishmentTypes.add(accomplishment.getAccomplishmentType());
		}
		return accomplishmentTypes;
	}

	private void deduplicateAccomplishmentTypes(Set<AccomplishmentType> accomplishmentTypes) {
		Set<AccomplishmentType> replacements = Sets.newHashSet();
		Iterator<AccomplishmentType> iterator = accomplishmentTypes.iterator();
		while (iterator.hasNext()) {
			AccomplishmentType accomplishmentType = iterator.next();
			List<AccomplishmentType> dbAccomplishmentTypes = AccomplishmentType.findAccomplishmentTypesByNameEquals(
					accomplishmentType.getName()).getResultList();
			if (CollectionUtils.isNotEmpty(dbAccomplishmentTypes)) {
				iterator.remove();
				replacements.add(dbAccomplishmentTypes.get(0));
			}
		}
		accomplishmentTypes.addAll(replacements);
	}
}
