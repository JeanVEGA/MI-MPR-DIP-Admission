// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.service;

import cz.cvut.fit.mi_mpr_dip.admission.dao.AdmissionDao;
import cz.cvut.fit.mi_mpr_dip.admission.service.AdmissionServiceImpl;

privileged aspect AdmissionServiceImpl_Roo_JavaBean {
    
    public AdmissionDao AdmissionServiceImpl.getAdmissionDao() {
        return this.admissionDao;
    }
    
    public void AdmissionServiceImpl.setAdmissionDao(AdmissionDao admissionDao) {
        this.admissionDao = admissionDao;
    }
    
}
