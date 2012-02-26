package cz.cvut.fit.mi_mpr_dip.admission.domain.user;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Transient;
import javax.persistence.Version;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
@RooJpaActiveRecord(finders = { "findUserIdentitysByUsernameEquals" })
public class UserIdentity {

	@Version
	@Transient
	@XmlTransient
	private int version;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@XmlTransient
	private Long userIdentityId;

	@NotNull
	@Column(unique = true)
	private String username;

	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable(name = "user_identity_role", joinColumns = { @JoinColumn(name = "user_identity_id", referencedColumnName = "userIdentityId") }, inverseJoinColumns = { @JoinColumn(name = "user_role_id", referencedColumnName = "userRoleId") })
	private Set<UserRole> roles;

	@OneToMany(mappedBy = "userIdentity", cascade = CascadeType.ALL)
	@OrderBy("grantValidTo DESC")
	private Set<UserSession> sessions;

	private static final String[] excludeFields = new String[] { "userIdentityId", "roles", "sessions" };

	@Override
	public boolean equals(Object obj) {
		return EqualsBuilder.reflectionEquals(this, obj, excludeFields);
	}
}