// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain;

import cz.cvut.fit.mi_mpr_dip.admission.domain.AppealType;
import cz.cvut.fit.mi_mpr_dip.admission.domain.AppealTypeDataOnDemand;
import cz.cvut.fit.mi_mpr_dip.admission.domain.AppealTypeIntegrationTest;
import java.util.List;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect AppealTypeIntegrationTest_Roo_IntegrationTest {
    
    declare @type: AppealTypeIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: AppealTypeIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: AppealTypeIntegrationTest: @Transactional;
    
    @Autowired
    private AppealTypeDataOnDemand AppealTypeIntegrationTest.dod;
    
    @Test
    public void AppealTypeIntegrationTest.testCountAppealTypes() {
        Assert.assertNotNull("Data on demand for 'AppealType' failed to initialize correctly", dod.getRandomAppealType());
        long count = AppealType.countAppealTypes();
        Assert.assertTrue("Counter for 'AppealType' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void AppealTypeIntegrationTest.testFindAppealType() {
        AppealType obj = dod.getRandomAppealType();
        Assert.assertNotNull("Data on demand for 'AppealType' failed to initialize correctly", obj);
        Long id = obj.getAppealTypeId();
        Assert.assertNotNull("Data on demand for 'AppealType' failed to provide an identifier", id);
        obj = AppealType.findAppealType(id);
        Assert.assertNotNull("Find method for 'AppealType' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'AppealType' returned the incorrect identifier", id, obj.getAppealTypeId());
    }
    
    @Test
    public void AppealTypeIntegrationTest.testFindAllAppealTypes() {
        Assert.assertNotNull("Data on demand for 'AppealType' failed to initialize correctly", dod.getRandomAppealType());
        long count = AppealType.countAppealTypes();
        Assert.assertTrue("Too expensive to perform a find all test for 'AppealType', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<AppealType> result = AppealType.findAllAppealTypes();
        Assert.assertNotNull("Find all method for 'AppealType' illegally returned null", result);
        Assert.assertTrue("Find all method for 'AppealType' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void AppealTypeIntegrationTest.testFindAppealTypeEntries() {
        Assert.assertNotNull("Data on demand for 'AppealType' failed to initialize correctly", dod.getRandomAppealType());
        long count = AppealType.countAppealTypes();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<AppealType> result = AppealType.findAppealTypeEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'AppealType' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'AppealType' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void AppealTypeIntegrationTest.testFlush() {
        AppealType obj = dod.getRandomAppealType();
        Assert.assertNotNull("Data on demand for 'AppealType' failed to initialize correctly", obj);
        Long id = obj.getAppealTypeId();
        Assert.assertNotNull("Data on demand for 'AppealType' failed to provide an identifier", id);
        obj = AppealType.findAppealType(id);
        Assert.assertNotNull("Find method for 'AppealType' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyAppealType(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'AppealType' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void AppealTypeIntegrationTest.testMergeUpdate() {
        AppealType obj = dod.getRandomAppealType();
        Assert.assertNotNull("Data on demand for 'AppealType' failed to initialize correctly", obj);
        Long id = obj.getAppealTypeId();
        Assert.assertNotNull("Data on demand for 'AppealType' failed to provide an identifier", id);
        obj = AppealType.findAppealType(id);
        boolean modified =  dod.modifyAppealType(obj);
        Integer currentVersion = obj.getVersion();
        AppealType merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getAppealTypeId(), id);
        Assert.assertTrue("Version for 'AppealType' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void AppealTypeIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'AppealType' failed to initialize correctly", dod.getRandomAppealType());
        AppealType obj = dod.getNewTransientAppealType(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'AppealType' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'AppealType' identifier to be null", obj.getAppealTypeId());
        obj.persist();
        obj.flush();
        Assert.assertNotNull("Expected 'AppealType' identifier to no longer be null", obj.getAppealTypeId());
    }
    
    @Test
    public void AppealTypeIntegrationTest.testRemove() {
        AppealType obj = dod.getRandomAppealType();
        Assert.assertNotNull("Data on demand for 'AppealType' failed to initialize correctly", obj);
        Long id = obj.getAppealTypeId();
        Assert.assertNotNull("Data on demand for 'AppealType' failed to provide an identifier", id);
        obj = AppealType.findAppealType(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'AppealType' with identifier '" + id + "'", AppealType.findAppealType(id));
    }
    
}
