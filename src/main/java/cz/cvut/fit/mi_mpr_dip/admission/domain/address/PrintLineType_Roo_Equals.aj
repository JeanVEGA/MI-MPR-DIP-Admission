// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.address;

import cz.cvut.fit.mi_mpr_dip.admission.domain.address.PrintLineType;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

privileged aspect PrintLineType_Roo_Equals {
    
    public boolean PrintLineType.equals(Object obj) {
        if (!(obj instanceof PrintLineType)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        PrintLineType rhs = (PrintLineType) obj;
        return new EqualsBuilder().append(name, rhs.name).isEquals();
    }
    
    public int PrintLineType.hashCode() {
        return new HashCodeBuilder().append(name).toHashCode();
    }
    
}