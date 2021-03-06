// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.service.user;

import cz.cvut.fit.mi_mpr_dip.admission.adapter.PwdAuthenticationAdapter;
import cz.cvut.fit.mi_mpr_dip.admission.dao.AdmissionDao;
import cz.cvut.fit.mi_mpr_dip.admission.dao.PersonDao;
import cz.cvut.fit.mi_mpr_dip.admission.exception.util.BusinessExceptionUtil;
import cz.cvut.fit.mi_mpr_dip.admission.service.user.PasswordGenerator;
import cz.cvut.fit.mi_mpr_dip.admission.service.user.UserPasswordServiceImpl;
import cz.cvut.fit.mi_mpr_dip.admission.validation.PrincipalValidator;

privileged aspect UserPasswordServiceImpl_Roo_JavaBean {
    
    public AdmissionDao UserPasswordServiceImpl.getAdmissionDao() {
        return this.admissionDao;
    }
    
    public void UserPasswordServiceImpl.setAdmissionDao(AdmissionDao admissionDao) {
        this.admissionDao = admissionDao;
    }
    
    public BusinessExceptionUtil UserPasswordServiceImpl.getBusinessExceptionUtil() {
        return this.businessExceptionUtil;
    }
    
    public void UserPasswordServiceImpl.setBusinessExceptionUtil(BusinessExceptionUtil businessExceptionUtil) {
        this.businessExceptionUtil = businessExceptionUtil;
    }
    
    public PasswordGenerator UserPasswordServiceImpl.getPasswordGenerator() {
        return this.passwordGenerator;
    }
    
    public void UserPasswordServiceImpl.setPasswordGenerator(PasswordGenerator passwordGenerator) {
        this.passwordGenerator = passwordGenerator;
    }
    
    public PrincipalValidator UserPasswordServiceImpl.getPrincipalValidator() {
        return this.principalValidator;
    }
    
    public void UserPasswordServiceImpl.setPrincipalValidator(PrincipalValidator principalValidator) {
        this.principalValidator = principalValidator;
    }
    
    public PwdAuthenticationAdapter UserPasswordServiceImpl.getAuthenticationAdapter() {
        return this.authenticationAdapter;
    }
    
    public PersonDao UserPasswordServiceImpl.getPersonDao() {
        return this.personDao;
    }
    
    public void UserPasswordServiceImpl.setPersonDao(PersonDao personDao) {
        this.personDao = personDao;
    }
    
}
