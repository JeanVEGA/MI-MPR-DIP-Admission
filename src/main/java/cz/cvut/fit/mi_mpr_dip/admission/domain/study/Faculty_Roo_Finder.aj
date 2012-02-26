// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.study;

import cz.cvut.fit.mi_mpr_dip.admission.domain.study.Faculty;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Faculty_Roo_Finder {
    
    public static TypedQuery<Faculty> Faculty.findFacultysByNameEquals(String name) {
        if (name == null || name.length() == 0) throw new IllegalArgumentException("The name argument is required");
        EntityManager em = Faculty.entityManager();
        TypedQuery<Faculty> q = em.createQuery("SELECT o FROM Faculty AS o WHERE o.name = :name", Faculty.class);
        q.setParameter("name", name);
        return q;
    }
    
}