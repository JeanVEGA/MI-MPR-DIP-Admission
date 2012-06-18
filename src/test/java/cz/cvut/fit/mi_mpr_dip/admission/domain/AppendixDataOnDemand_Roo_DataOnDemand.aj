// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain;

import cz.cvut.fit.mi_mpr_dip.admission.domain.Appendix;
import cz.cvut.fit.mi_mpr_dip.admission.domain.AppendixContent;
import cz.cvut.fit.mi_mpr_dip.admission.domain.AppendixContentDataOnDemand;
import cz.cvut.fit.mi_mpr_dip.admission.domain.AppendixDataOnDemand;
import cz.cvut.fit.mi_mpr_dip.admission.domain.AppendixTypeDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect AppendixDataOnDemand_Roo_DataOnDemand {
    
    declare @type: AppendixDataOnDemand: @Component;
    
    private Random AppendixDataOnDemand.rnd = new SecureRandom();
    
    private List<Appendix> AppendixDataOnDemand.data;
    
    @Autowired
    private AppendixContentDataOnDemand AppendixDataOnDemand.appendixContentDataOnDemand;
    
    @Autowired
    private AppendixTypeDataOnDemand AppendixDataOnDemand.appendixTypeDataOnDemand;
    
    public Appendix AppendixDataOnDemand.getNewTransientAppendix(int index) {
        Appendix obj = new Appendix();
        setAppendixContent(obj, index);
        setFilename(obj, index);
        setIdentifier(obj, index);
        setMimeType(obj, index);
        return obj;
    }
    
    public void AppendixDataOnDemand.setAppendixContent(Appendix obj, int index) {
        AppendixContent appendixContent = appendixContentDataOnDemand.getSpecificAppendixContent(index);
        obj.setAppendixContent(appendixContent);
    }
    
    public void AppendixDataOnDemand.setFilename(Appendix obj, int index) {
        String filename = "filename_" + index;
        obj.setFilename(filename);
    }
    
    public void AppendixDataOnDemand.setIdentifier(Appendix obj, int index) {
        String identifier = "identifier_" + index;
        obj.setIdentifier(identifier);
    }
    
    public void AppendixDataOnDemand.setMimeType(Appendix obj, int index) {
        String mimeType = "mimeType_" + index;
        obj.setMimeType(mimeType);
    }
    
    public Appendix AppendixDataOnDemand.getSpecificAppendix(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Appendix obj = data.get(index);
        Long id = obj.getAppendixId();
        return Appendix.findAppendix(id);
    }
    
    public Appendix AppendixDataOnDemand.getRandomAppendix() {
        init();
        Appendix obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getAppendixId();
        return Appendix.findAppendix(id);
    }
    
    public boolean AppendixDataOnDemand.modifyAppendix(Appendix obj) {
        return false;
    }
    
    public void AppendixDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Appendix.findAppendixEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Appendix' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Appendix>();
        for (int i = 0; i < 10; i++) {
            Appendix obj = getNewTransientAppendix(i);
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
