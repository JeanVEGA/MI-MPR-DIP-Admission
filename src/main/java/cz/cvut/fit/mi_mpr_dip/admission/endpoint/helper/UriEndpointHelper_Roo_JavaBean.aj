// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.endpoint.helper;

import cz.cvut.fit.mi_mpr_dip.admission.endpoint.helper.UriEndpointHelper;
import cz.cvut.fit.mi_mpr_dip.admission.util.TermDateUtils;

privileged aspect UriEndpointHelper_Roo_JavaBean {
    
    public TermDateUtils UriEndpointHelper.getTermDateUtils() {
        return this.termDateUtils;
    }
    
    public void UriEndpointHelper.setTermDateUtils(TermDateUtils termDateUtils) {
        this.termDateUtils = termDateUtils;
    }
    
}
