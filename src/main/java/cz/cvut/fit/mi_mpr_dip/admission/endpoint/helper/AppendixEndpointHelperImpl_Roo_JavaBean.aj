// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.endpoint.helper;

import cz.cvut.fit.mi_mpr_dip.admission.endpoint.helper.AppendixEndpointHelperImpl;
import cz.cvut.fit.mi_mpr_dip.admission.service.TermService;
import cz.cvut.fit.mi_mpr_dip.admission.service.crud.AdmissionService;
import cz.cvut.fit.mi_mpr_dip.admission.service.crud.AppendixService;

privileged aspect AppendixEndpointHelperImpl_Roo_JavaBean {
    
    public AdmissionService AppendixEndpointHelperImpl.getAdmissionService() {
        return this.admissionService;
    }
    
    public void AppendixEndpointHelperImpl.setAdmissionService(AdmissionService admissionService) {
        this.admissionService = admissionService;
    }
    
    public AppendixService AppendixEndpointHelperImpl.getAppendixService() {
        return this.appendixService;
    }
    
    public void AppendixEndpointHelperImpl.setAppendixService(AppendixService appendixService) {
        this.appendixService = appendixService;
    }
    
    public TermService AppendixEndpointHelperImpl.getTermService() {
        return this.termService;
    }
    
    public void AppendixEndpointHelperImpl.setTermService(TermService termService) {
        this.termService = termService;
    }
    
}
