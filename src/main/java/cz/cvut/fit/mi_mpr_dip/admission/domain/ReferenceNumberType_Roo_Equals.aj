// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain;

import cz.cvut.fit.mi_mpr_dip.admission.domain.ReferenceNumberType;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

privileged aspect ReferenceNumberType_Roo_Equals {
    
    public boolean ReferenceNumberType.equals(Object obj) {
        if (!(obj instanceof ReferenceNumberType)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        ReferenceNumberType rhs = (ReferenceNumberType) obj;
        return new EqualsBuilder().append(name, rhs.name).isEquals();
    }
    
    public int ReferenceNumberType.hashCode() {
        return new HashCodeBuilder().append(name).toHashCode();
    }
    
}