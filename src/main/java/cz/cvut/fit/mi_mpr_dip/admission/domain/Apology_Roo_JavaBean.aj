// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain;

import cz.cvut.fit.mi_mpr_dip.admission.domain.Apology;
import cz.cvut.fit.mi_mpr_dip.admission.domain.Attachmnt;
import cz.cvut.fit.mi_mpr_dip.admission.domain.TermRegistration;
import java.util.Set;

privileged aspect Apology_Roo_JavaBean {
    
    public int Apology.getVersion() {
        return this.version;
    }
    
    public void Apology.setVersion(int version) {
        this.version = version;
    }
    
    public Long Apology.getApologyId() {
        return this.apologyId;
    }
    
    public void Apology.setApologyId(Long apologyId) {
        this.apologyId = apologyId;
    }
    
    public TermRegistration Apology.getRegistration() {
        return this.registration;
    }
    
    public void Apology.setRegistration(TermRegistration registration) {
        this.registration = registration;
    }
    
    public Boolean Apology.getApproved() {
        return this.approved;
    }
    
    public void Apology.setApproved(Boolean approved) {
        this.approved = approved;
    }
    
    public String Apology.getText() {
        return this.text;
    }
    
    public void Apology.setText(String text) {
        this.text = text;
    }
    
    public Set<Attachmnt> Apology.getFiles() {
        return this.files;
    }
    
    public void Apology.setFiles(Set<Attachmnt> files) {
        this.files = files;
    }
    
}