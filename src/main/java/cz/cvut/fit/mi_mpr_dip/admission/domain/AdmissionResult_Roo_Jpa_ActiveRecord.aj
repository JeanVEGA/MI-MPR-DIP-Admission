// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain;

import cz.cvut.fit.mi_mpr_dip.admission.domain.AdmissionResult;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect AdmissionResult_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager AdmissionResult.entityManager;
    
    public static final EntityManager AdmissionResult.entityManager() {
        EntityManager em = new AdmissionResult().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long AdmissionResult.countAdmissionResults() {
        return entityManager().createQuery("SELECT COUNT(o) FROM AdmissionResult o", Long.class).getSingleResult();
    }
    
    public static List<AdmissionResult> AdmissionResult.findAllAdmissionResults() {
        return entityManager().createQuery("SELECT o FROM AdmissionResult o", AdmissionResult.class).getResultList();
    }
    
    public static AdmissionResult AdmissionResult.findAdmissionResult(Long admissionResultId) {
        if (admissionResultId == null) return null;
        return entityManager().find(AdmissionResult.class, admissionResultId);
    }
    
    public static List<AdmissionResult> AdmissionResult.findAdmissionResultEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM AdmissionResult o", AdmissionResult.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void AdmissionResult.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void AdmissionResult.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            AdmissionResult attached = AdmissionResult.findAdmissionResult(this.admissionResultId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void AdmissionResult.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void AdmissionResult.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public AdmissionResult AdmissionResult.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        AdmissionResult merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}