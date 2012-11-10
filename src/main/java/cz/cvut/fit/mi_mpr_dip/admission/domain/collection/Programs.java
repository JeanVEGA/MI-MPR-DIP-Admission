package cz.cvut.fit.mi_mpr_dip.admission.domain.collection;

import java.util.Set;

import javax.validation.Valid;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import org.springframework.roo.addon.equals.RooEquals;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;

import cz.cvut.fit.mi_mpr_dip.admission.domain.study.Programme;

@RooJavaBean
@RooToString
@RooEquals
@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class Programs extends DomainCollection {

	private static final long serialVersionUID = 6878820390566165261L;

	@Valid
	@XmlElement(name = "programme")
	private Set<Programme> programs;
}
