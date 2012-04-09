// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain;

import cz.cvut.fit.mi_mpr_dip.admission.domain.Apology;
import cz.cvut.fit.mi_mpr_dip.admission.domain.ApologyDataOnDemand;
import cz.cvut.fit.mi_mpr_dip.admission.domain.TermRegistration;
import cz.cvut.fit.mi_mpr_dip.admission.domain.TermRegistrationDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect ApologyDataOnDemand_Roo_DataOnDemand {
    
    declare @type: ApologyDataOnDemand: @Component;
    
    private Random ApologyDataOnDemand.rnd = new SecureRandom();
    
    private List<Apology> ApologyDataOnDemand.data;
    
    @Autowired
    private TermRegistrationDataOnDemand ApologyDataOnDemand.termRegistrationDataOnDemand;
    
    public Apology ApologyDataOnDemand.getNewTransientApology(int index) {
        Apology obj = new Apology();
        setApproved(obj, index);
        setRegistration(obj, index);
        setText(obj, index);
        return obj;
    }
    
    public void ApologyDataOnDemand.setApproved(Apology obj, int index) {
        Boolean approved = Boolean.TRUE;
        obj.setApproved(approved);
    }
    
    public void ApologyDataOnDemand.setRegistration(Apology obj, int index) {
        TermRegistration registration = termRegistrationDataOnDemand.getSpecificTermRegistration(index);
        obj.setRegistration(registration);
    }
    
    public void ApologyDataOnDemand.setText(Apology obj, int index) {
        String text = "text_" + index;
        obj.setText(text);
    }
    
    public Apology ApologyDataOnDemand.getSpecificApology(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Apology obj = data.get(index);
        Long id = obj.getApologyId();
        return Apology.findApology(id);
    }
    
    public Apology ApologyDataOnDemand.getRandomApology() {
        init();
        Apology obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getApologyId();
        return Apology.findApology(id);
    }
    
    public boolean ApologyDataOnDemand.modifyApology(Apology obj) {
        return false;
    }
    
    public void ApologyDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Apology.findApologyEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Apology' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Apology>();
        for (int i = 0; i < 10; i++) {
            Apology obj = getNewTransientApology(i);
            try {
                obj.persist();
            } catch (ConstraintViolationException e) {
                StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getConstraintDescriptor()).append(":").append(cv.getMessage()).append("=").append(cv.getInvalidValue()).append("]");
                }
                throw new RuntimeException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}