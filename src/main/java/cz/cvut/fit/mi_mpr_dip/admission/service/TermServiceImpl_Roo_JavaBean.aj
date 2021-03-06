// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.service;

import cz.cvut.fit.mi_mpr_dip.admission.dao.TermDao;
import cz.cvut.fit.mi_mpr_dip.admission.endpoint.helper.UriEndpointHelper;
import cz.cvut.fit.mi_mpr_dip.admission.exception.util.BusinessExceptionUtil;
import cz.cvut.fit.mi_mpr_dip.admission.service.LinkService;
import cz.cvut.fit.mi_mpr_dip.admission.service.TermServiceImpl;
import cz.cvut.fit.mi_mpr_dip.admission.service.crud.AppendixService;
import cz.cvut.fit.mi_mpr_dip.admission.util.TermDateUtils;

privileged aspect TermServiceImpl_Roo_JavaBean {
    
    public AppendixService TermServiceImpl.getAppendixService() {
        return this.appendixService;
    }
    
    public void TermServiceImpl.setAppendixService(AppendixService appendixService) {
        this.appendixService = appendixService;
    }
    
    public BusinessExceptionUtil TermServiceImpl.getBusinessExceptionUtil() {
        return this.businessExceptionUtil;
    }
    
    public void TermServiceImpl.setBusinessExceptionUtil(BusinessExceptionUtil businessExceptionUtil) {
        this.businessExceptionUtil = businessExceptionUtil;
    }
    
    public LinkService TermServiceImpl.getLinkService() {
        return this.linkService;
    }
    
    public void TermServiceImpl.setLinkService(LinkService linkService) {
        this.linkService = linkService;
    }
    
    public TermDao TermServiceImpl.getTermDao() {
        return this.termDao;
    }
    
    public void TermServiceImpl.setTermDao(TermDao termDao) {
        this.termDao = termDao;
    }
    
    public TermDateUtils TermServiceImpl.getTermDateUtils() {
        return this.termDateUtils;
    }
    
    public void TermServiceImpl.setTermDateUtils(TermDateUtils termDateUtils) {
        this.termDateUtils = termDateUtils;
    }
    
    public UriEndpointHelper TermServiceImpl.getUriEndpointHelper() {
        return this.uriEndpointHelper;
    }
    
    public void TermServiceImpl.setUriEndpointHelper(UriEndpointHelper uriEndpointHelper) {
        this.uriEndpointHelper = uriEndpointHelper;
    }
    
}
