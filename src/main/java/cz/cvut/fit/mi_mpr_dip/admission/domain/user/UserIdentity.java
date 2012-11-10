package cz.cvut.fit.mi_mpr_dip.admission.domain.user;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.OrderBy;
import javax.persistence.Transient;
import javax.persistence.Version;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.roo.addon.equals.RooEquals;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

import cz.cvut.fit.mi_mpr_dip.admission.domain.Admission;
import cz.cvut.fit.mi_mpr_dip.admission.util.WebKeys;

@RooJavaBean
@RooToString
@RooEquals(excludeFields = { "admissionLink", "userIdentityId", "roles", "sessions", "userPassword" })
@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
@RooJpaActiveRecord(finders = { "findUserIdentitysByUsernameEquals",
		"findUserIdentitysByUsernameEqualsAndAuthenticationEquals", "findUserIdentitysByUsernameLike" })
public class UserIdentity implements Serializable {

	private static final long serialVersionUID = -8446297622173027596L;

	@Version
	@Transient
	@XmlTransient
	private int version;

	@Transient
	@XmlElement(name = WebKeys.ADMISSION)
	private Admission admissionLink;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@XmlTransient
	private Long userIdentityId;

	@NotEmpty
	@NotNull
	@Column(unique = true)
	private String username;

	@ManyToMany(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.REFRESH, CascadeType.DETACH })
	@JoinTable(name = "user_identity_role", joinColumns = { @JoinColumn(name = "user_identity_id",
			referencedColumnName = "userIdentityId") }, inverseJoinColumns = { @JoinColumn(name = "user_role_id",
			referencedColumnName = "userRoleId") })
	@XmlElementWrapper(name = "roles")
	@XmlElement(name = "role")
	private Set<UserRole> roles;

	@OneToMany(mappedBy = "userIdentity", cascade = CascadeType.ALL)
	@OrderBy("grantValidTo DESC")
	@XmlElementWrapper(name = "sessions")
	@XmlElement(name = "session")
	private Set<UserSession> sessions;

	@NotNull
	@Enumerated(EnumType.STRING)
	private UserIdentityAuthentication authentication;

	@XmlTransient
	@OneToOne(cascade = CascadeType.ALL)
	private UserPassword userPassword;
}
