// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.endpoint.helper;

import cz.cvut.fit.mi_mpr_dip.admission.dao.TermRegistrationDao;
import cz.cvut.fit.mi_mpr_dip.admission.endpoint.helper.RegistrationEndpointHelperImpl;
import cz.cvut.fit.mi_mpr_dip.admission.endpoint.helper.UriEndpointHelper;
import cz.cvut.fit.mi_mpr_dip.admission.service.TermService;
import cz.cvut.fit.mi_mpr_dip.admission.service.crud.AdmissionService;
import cz.cvut.fit.mi_mpr_dip.admission.service.crud.AppendixService;
import cz.cvut.fit.mi_mpr_dip.admission.service.deduplication.ApologyDeduplicationService;
import cz.cvut.fit.mi_mpr_dip.admission.validation.unique.TermRegistrationUniqueConstraintValidator;

privileged aspect RegistrationEndpointHelperImpl_Roo_JavaBean {
    
    public AdmissionService RegistrationEndpointHelperImpl.getAdmissionService() {
        return this.admissionService;
    }
    
    public void RegistrationEndpointHelperImpl.setAdmissionService(AdmissionService admissionService) {
        this.admissionService = admissionService;
    }
    
    public ApologyDeduplicationService RegistrationEndpointHelperImpl.getApologyDeduplicationService() {
        return this.apologyDeduplicationService;
    }
    
    public void RegistrationEndpointHelperImpl.setApologyDeduplicationService(ApologyDeduplicationService apologyDeduplicationService) {
        this.apologyDeduplicationService = apologyDeduplicationService;
    }
    
    public AppendixService RegistrationEndpointHelperImpl.getAppendixService() {
        return this.appendixService;
    }
    
    public void RegistrationEndpointHelperImpl.setAppendixService(AppendixService appendixService) {
        this.appendixService = appendixService;
    }
    
    public TermRegistrationDao RegistrationEndpointHelperImpl.getTermRegistrationDao() {
        return this.termRegistrationDao;
    }
    
    public void RegistrationEndpointHelperImpl.setTermRegistrationDao(TermRegistrationDao termRegistrationDao) {
        this.termRegistrationDao = termRegistrationDao;
    }
    
    public TermService RegistrationEndpointHelperImpl.getTermService() {
        return this.termService;
    }
    
    public void RegistrationEndpointHelperImpl.setTermService(TermService termService) {
        this.termService = termService;
    }
    
    public TermRegistrationUniqueConstraintValidator RegistrationEndpointHelperImpl.getUniqueConstraintValidator() {
        return this.uniqueConstraintValidator;
    }
    
    public void RegistrationEndpointHelperImpl.setUniqueConstraintValidator(TermRegistrationUniqueConstraintValidator uniqueConstraintValidator) {
        this.uniqueConstraintValidator = uniqueConstraintValidator;
    }
    
    public UriEndpointHelper RegistrationEndpointHelperImpl.getUriEndpointHelper() {
        return this.uriEndpointHelper;
    }
    
    public void RegistrationEndpointHelperImpl.setUriEndpointHelper(UriEndpointHelper uriEndpointHelper) {
        this.uriEndpointHelper = uriEndpointHelper;
    }
    
}
