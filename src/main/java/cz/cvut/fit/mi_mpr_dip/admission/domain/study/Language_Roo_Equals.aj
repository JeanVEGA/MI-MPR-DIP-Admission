// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.study;

import cz.cvut.fit.mi_mpr_dip.admission.domain.study.Language;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

privileged aspect Language_Roo_Equals {
    
    public boolean Language.equals(Object obj) {
        if (!(obj instanceof Language)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        Language rhs = (Language) obj;
        return new EqualsBuilder().append(name, rhs.name).isEquals();
    }
    
    public int Language.hashCode() {
        return new HashCodeBuilder().append(name).toHashCode();
    }
    
}