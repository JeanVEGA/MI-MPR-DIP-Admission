// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.endpoint.mapper;

import cz.cvut.fit.mi_mpr_dip.admission.endpoint.mapper.JaxbExceptionMapper;
import cz.cvut.fit.mi_mpr_dip.admission.endpoint.mapper.WebApplicationExceptionMapper;

privileged aspect WebApplicationExceptionMapper_Roo_JavaBean {
    
    public JaxbExceptionMapper WebApplicationExceptionMapper.getJaxbExceptionMapper() {
        return this.jaxbExceptionMapper;
    }
    
    public void WebApplicationExceptionMapper.setJaxbExceptionMapper(JaxbExceptionMapper jaxbExceptionMapper) {
        this.jaxbExceptionMapper = jaxbExceptionMapper;
    }
    
}