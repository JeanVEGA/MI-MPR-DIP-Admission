// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.dao.persistence;

import cz.cvut.fit.mi_mpr_dip.admission.dao.persistence.AdmissionUniqueConstraint;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

privileged aspect AdmissionUniqueConstraint_Roo_Equals {
    
    public boolean AdmissionUniqueConstraint.equals(Object obj) {
        if (!(obj instanceof AdmissionUniqueConstraint)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        AdmissionUniqueConstraint rhs = (AdmissionUniqueConstraint) obj;
        return new EqualsBuilder().append(admissionCode, rhs.admissionCode).isEquals();
    }
    
    public int AdmissionUniqueConstraint.hashCode() {
        return new HashCodeBuilder().append(admissionCode).toHashCode();
    }
    
}