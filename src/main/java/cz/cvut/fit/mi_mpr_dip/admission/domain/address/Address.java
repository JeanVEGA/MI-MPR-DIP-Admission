package cz.cvut.fit.mi_mpr_dip.admission.domain.address;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Transient;
import javax.persistence.Version;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlTransient;

import org.springframework.roo.addon.equals.RooEquals;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooEquals(excludeFields = { "addressId" })
@RooJpaActiveRecord
@XmlAccessorType(XmlAccessType.FIELD)
public class Address {

	@Version
	@Transient
	@XmlTransient
	private int version;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@XmlTransient
	private Long addressId;

	@NotNull
	@ManyToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.REFRESH, CascadeType.DETACH },
			fetch = FetchType.LAZY)
	@Valid
	private AddressType addressType;

	private String street;

	private String houseNumber;

	@NotNull
	@ManyToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.REFRESH, CascadeType.DETACH },
			fetch = FetchType.LAZY)
	@Valid
	private City city;

	private String postNumber;

	private String postalCode;

	@NotNull
	@ManyToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.REFRESH, CascadeType.DETACH },
			fetch = FetchType.LAZY)
	@Valid
	private Country country;

	@OneToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "address_print_line", joinColumns = { @JoinColumn(name = "address_id",
			referencedColumnName = "addressId") }, inverseJoinColumns = { @JoinColumn(name = "print_line_id",
			referencedColumnName = "printLineId") })
	@Valid
	@XmlElementWrapper(name = "printLines")
	@XmlElement(name = "printLine")
	private Set<PrintLine> printLines;
}
