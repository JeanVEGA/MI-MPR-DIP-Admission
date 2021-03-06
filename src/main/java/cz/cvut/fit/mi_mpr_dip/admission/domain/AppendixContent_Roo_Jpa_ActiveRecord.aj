// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain;

import cz.cvut.fit.mi_mpr_dip.admission.domain.AppendixContent;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect AppendixContent_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager AppendixContent.entityManager;
    
    public static final EntityManager AppendixContent.entityManager() {
        EntityManager em = new AppendixContent().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long AppendixContent.countAppendixContents() {
        return entityManager().createQuery("SELECT COUNT(o) FROM AppendixContent o", Long.class).getSingleResult();
    }
    
    public static List<AppendixContent> AppendixContent.findAllAppendixContents() {
        return entityManager().createQuery("SELECT o FROM AppendixContent o", AppendixContent.class).getResultList();
    }
    
    public static AppendixContent AppendixContent.findAppendixContent(Long appendixContentId) {
        if (appendixContentId == null) return null;
        return entityManager().find(AppendixContent.class, appendixContentId);
    }
    
    public static List<AppendixContent> AppendixContent.findAppendixContentEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM AppendixContent o", AppendixContent.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void AppendixContent.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void AppendixContent.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            AppendixContent attached = AppendixContent.findAppendixContent(this.appendixContentId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void AppendixContent.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void AppendixContent.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public AppendixContent AppendixContent.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        AppendixContent merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
