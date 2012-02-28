// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.user;

import cz.cvut.fit.mi_mpr_dip.admission.domain.user.UserSession;
import java.util.Date;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect UserSession_Roo_Finder {
    
    public static TypedQuery<UserSession> UserSession.findUserSessionsByIdentifierEqualsAndGrantValidToGreaterThan(String identifier, Date grantValidTo) {
        if (identifier == null || identifier.length() == 0) throw new IllegalArgumentException("The identifier argument is required");
        if (grantValidTo == null) throw new IllegalArgumentException("The grantValidTo argument is required");
        EntityManager em = UserSession.entityManager();
        TypedQuery<UserSession> q = em.createQuery("SELECT o FROM UserSession AS o WHERE o.identifier = :identifier  AND o.grantValidTo > :grantValidTo", UserSession.class);
        q.setParameter("identifier", identifier);
        q.setParameter("grantValidTo", grantValidTo);
        return q;
    }
    
}