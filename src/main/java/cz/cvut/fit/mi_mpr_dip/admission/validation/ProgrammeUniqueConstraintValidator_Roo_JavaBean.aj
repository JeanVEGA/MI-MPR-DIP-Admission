// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.validation;

import cz.cvut.fit.mi_mpr_dip.admission.dao.ProgrammeDao;
import cz.cvut.fit.mi_mpr_dip.admission.validation.ProgrammeUniqueConstraintValidator;

privileged aspect ProgrammeUniqueConstraintValidator_Roo_JavaBean {
    
    public ProgrammeDao ProgrammeUniqueConstraintValidator.getProgrammeDao() {
        return this.programmeDao;
    }
    
    public void ProgrammeUniqueConstraintValidator.setProgrammeDao(ProgrammeDao programmeDao) {
        this.programmeDao = programmeDao;
    }
    
}
