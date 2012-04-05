package cz.cvut.fit.mi_mpr_dip.admission.domain;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Transient;
import javax.persistence.Version;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlTransient;
import org.springframework.roo.addon.equals.RooEquals;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooEquals(excludeFields = { "admissionStateId", "name", "desciption", "admissions" })
@XmlAccessorType(XmlAccessType.FIELD)
@RooJpaActiveRecord(finders = { "findAdmissionStatesByCodeEquals" })
public class AdmissionState {

	@Version
	@Transient
	@XmlTransient
	private int version;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@XmlTransient
	private Long admissionStateId;

	@NotNull
	@Column(unique = true)
	private String code;

	@NotNull
	private String name;

	private String desciption;

	@OneToMany(orphanRemoval = true, fetch = FetchType.EAGER, mappedBy = "admissionState")
	@XmlTransient
	private Set<Admission> admissions;
}
