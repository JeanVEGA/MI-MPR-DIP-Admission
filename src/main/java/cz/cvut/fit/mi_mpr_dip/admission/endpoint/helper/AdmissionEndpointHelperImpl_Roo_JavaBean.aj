// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.endpoint.helper;

import cz.cvut.fit.mi_mpr_dip.admission.dao.AdmissionDao;
import cz.cvut.fit.mi_mpr_dip.admission.endpoint.helper.AdmissionEndpointHelperImpl;
import cz.cvut.fit.mi_mpr_dip.admission.endpoint.helper.UriEndpointHelper;
import cz.cvut.fit.mi_mpr_dip.admission.service.TermService;
import cz.cvut.fit.mi_mpr_dip.admission.validation.AdmissionCodeValidator;
import org.springframework.context.ApplicationContext;

privileged aspect AdmissionEndpointHelperImpl_Roo_JavaBean {
    
    public AdmissionCodeValidator AdmissionEndpointHelperImpl.getAdmissionCodeValidator() {
        return this.admissionCodeValidator;
    }
    
    public void AdmissionEndpointHelperImpl.setAdmissionCodeValidator(AdmissionCodeValidator admissionCodeValidator) {
        this.admissionCodeValidator = admissionCodeValidator;
    }
    
    public AdmissionDao AdmissionEndpointHelperImpl.getAdmissionDao() {
        return this.admissionDao;
    }
    
    public void AdmissionEndpointHelperImpl.setAdmissionDao(AdmissionDao admissionDao) {
        this.admissionDao = admissionDao;
    }
    
    public ApplicationContext AdmissionEndpointHelperImpl.getApplicationContext() {
        return this.applicationContext;
    }
    
    public TermService AdmissionEndpointHelperImpl.getTermService() {
        return this.termService;
    }
    
    public void AdmissionEndpointHelperImpl.setTermService(TermService termService) {
        this.termService = termService;
    }
    
    public UriEndpointHelper AdmissionEndpointHelperImpl.getUriEndpointHelper() {
        return this.uriEndpointHelper;
    }
    
    public void AdmissionEndpointHelperImpl.setUriEndpointHelper(UriEndpointHelper uriEndpointHelper) {
        this.uriEndpointHelper = uriEndpointHelper;
    }
    
}
