// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.validation;

import cz.cvut.fit.mi_mpr_dip.admission.validation.PrincipalValidator;
import org.springframework.security.core.context.SecurityContextHolderStrategy;

privileged aspect PrincipalValidator_Roo_JavaBean {
    
    public SecurityContextHolderStrategy PrincipalValidator.getSecurityContextHolderStrategy() {
        return this.securityContextHolderStrategy;
    }
    
}
