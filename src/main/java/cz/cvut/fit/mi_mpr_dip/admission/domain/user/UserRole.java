package cz.cvut.fit.mi_mpr_dip.admission.domain.user;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Transient;
import javax.persistence.Version;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlTransient;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.roo.addon.equals.RooEquals;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString(excludeFields = { "identities" })
@RooEquals(excludeFields = { "userRoleId", "identities", "permissions" })
@RooJpaActiveRecord(finders = { "findUserRolesByNameEquals" })
@XmlAccessorType(XmlAccessType.FIELD)
public class UserRole implements Serializable {

	private static final long serialVersionUID = 4057258281308034608L;

	@Version
	@Transient
	@XmlTransient
	private int version;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@XmlTransient
	private Long userRoleId;

	@NotEmpty
	@NotNull
	@Column(unique = true)
	private String name;

	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "user_role_permission", joinColumns = { @JoinColumn(name = "user_role_id",
			referencedColumnName = "userRoleId") }, inverseJoinColumns = { @JoinColumn(name = "user_permission_id",
			referencedColumnName = "userPermissionId") })
	@XmlElementWrapper(name = "permissions")
	@XmlElement(name = "permission")
	private Set<UserPermission> permissions;
}
