// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain;

import cz.cvut.fit.mi_mpr_dip.admission.domain.Term;
import java.util.Date;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Term_Roo_Finder {
    
    public static TypedQuery<Term> Term.findTermsByDateOfTermEqualsAndRoomEquals(Date dateOfTerm, String room) {
        if (dateOfTerm == null) throw new IllegalArgumentException("The dateOfTerm argument is required");
        if (room == null || room.length() == 0) throw new IllegalArgumentException("The room argument is required");
        EntityManager em = Term.entityManager();
        TypedQuery<Term> q = em.createQuery("SELECT o FROM Term AS o WHERE o.dateOfTerm = :dateOfTerm  AND o.room = :room", Term.class);
        q.setParameter("dateOfTerm", dateOfTerm);
        q.setParameter("room", room);
        return q;
    }
    
}
