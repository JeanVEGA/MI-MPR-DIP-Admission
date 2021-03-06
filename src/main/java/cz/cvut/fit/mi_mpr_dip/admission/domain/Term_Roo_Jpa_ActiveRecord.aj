// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain;

import cz.cvut.fit.mi_mpr_dip.admission.domain.Term;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Term_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Term.entityManager;
    
    public static final EntityManager Term.entityManager() {
        EntityManager em = new Term().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Term.countTerms() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Term o", Long.class).getSingleResult();
    }
    
    public static List<Term> Term.findAllTerms() {
        return entityManager().createQuery("SELECT o FROM Term o", Term.class).getResultList();
    }
    
    public static Term Term.findTerm(Long termId) {
        if (termId == null) return null;
        return entityManager().find(Term.class, termId);
    }
    
    public static List<Term> Term.findTermEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Term o", Term.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Term.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Term.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Term attached = Term.findTerm(this.termId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Term.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Term.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Term Term.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Term merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
