// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.endpoint;

import cz.cvut.fit.mi_mpr_dip.admission.endpoint.RegistrationEndpointImpl;
import cz.cvut.fit.mi_mpr_dip.admission.endpoint.helper.RegistrationEndpointHelper;

privileged aspect RegistrationEndpointImpl_Roo_JavaBean {
    
    public RegistrationEndpointHelper RegistrationEndpointImpl.getRegistrationEndpointHelper() {
        return this.registrationEndpointHelper;
    }
    
    public void RegistrationEndpointImpl.setRegistrationEndpointHelper(RegistrationEndpointHelper registrationEndpointHelper) {
        this.registrationEndpointHelper = registrationEndpointHelper;
    }
    
}