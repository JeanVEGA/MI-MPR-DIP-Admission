// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.service;

import cz.cvut.fit.mi_mpr_dip.admission.endpoint.helper.UriEndpointHelper;
import cz.cvut.fit.mi_mpr_dip.admission.service.LinkServiceImpl;

privileged aspect LinkServiceImpl_Roo_JavaBean {
    
    public UriEndpointHelper LinkServiceImpl.getUriEndpointHelper() {
        return this.uriEndpointHelper;
    }
    
    public void LinkServiceImpl.setUriEndpointHelper(UriEndpointHelper uriEndpointHelper) {
        this.uriEndpointHelper = uriEndpointHelper;
    }
    
}
