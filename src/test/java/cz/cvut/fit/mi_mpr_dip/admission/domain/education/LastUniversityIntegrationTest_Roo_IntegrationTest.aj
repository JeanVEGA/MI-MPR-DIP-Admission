// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.education;

import cz.cvut.fit.mi_mpr_dip.admission.domain.education.LastUniversity;
import cz.cvut.fit.mi_mpr_dip.admission.domain.education.LastUniversityDataOnDemand;
import cz.cvut.fit.mi_mpr_dip.admission.domain.education.LastUniversityIntegrationTest;
import java.util.List;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect LastUniversityIntegrationTest_Roo_IntegrationTest {
    
    declare @type: LastUniversityIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: LastUniversityIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: LastUniversityIntegrationTest: @Transactional;
    
    @Autowired
    private LastUniversityDataOnDemand LastUniversityIntegrationTest.dod;
    
    @Test
    public void LastUniversityIntegrationTest.testCountLastUniversitys() {
        Assert.assertNotNull("Data on demand for 'LastUniversity' failed to initialize correctly", dod.getRandomLastUniversity());
        long count = LastUniversity.countLastUniversitys();
        Assert.assertTrue("Counter for 'LastUniversity' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void LastUniversityIntegrationTest.testFindLastUniversity() {
        LastUniversity obj = dod.getRandomLastUniversity();
        Assert.assertNotNull("Data on demand for 'LastUniversity' failed to initialize correctly", obj);
        Long id = obj.getLastUniversityId();
        Assert.assertNotNull("Data on demand for 'LastUniversity' failed to provide an identifier", id);
        obj = LastUniversity.findLastUniversity(id);
        Assert.assertNotNull("Find method for 'LastUniversity' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'LastUniversity' returned the incorrect identifier", id, obj.getLastUniversityId());
    }
    
    @Test
    public void LastUniversityIntegrationTest.testFindAllLastUniversitys() {
        Assert.assertNotNull("Data on demand for 'LastUniversity' failed to initialize correctly", dod.getRandomLastUniversity());
        long count = LastUniversity.countLastUniversitys();
        Assert.assertTrue("Too expensive to perform a find all test for 'LastUniversity', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<LastUniversity> result = LastUniversity.findAllLastUniversitys();
        Assert.assertNotNull("Find all method for 'LastUniversity' illegally returned null", result);
        Assert.assertTrue("Find all method for 'LastUniversity' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void LastUniversityIntegrationTest.testFindLastUniversityEntries() {
        Assert.assertNotNull("Data on demand for 'LastUniversity' failed to initialize correctly", dod.getRandomLastUniversity());
        long count = LastUniversity.countLastUniversitys();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<LastUniversity> result = LastUniversity.findLastUniversityEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'LastUniversity' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'LastUniversity' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void LastUniversityIntegrationTest.testFlush() {
        LastUniversity obj = dod.getRandomLastUniversity();
        Assert.assertNotNull("Data on demand for 'LastUniversity' failed to initialize correctly", obj);
        Long id = obj.getLastUniversityId();
        Assert.assertNotNull("Data on demand for 'LastUniversity' failed to provide an identifier", id);
        obj = LastUniversity.findLastUniversity(id);
        Assert.assertNotNull("Find method for 'LastUniversity' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyLastUniversity(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'LastUniversity' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void LastUniversityIntegrationTest.testMergeUpdate() {
        LastUniversity obj = dod.getRandomLastUniversity();
        Assert.assertNotNull("Data on demand for 'LastUniversity' failed to initialize correctly", obj);
        Long id = obj.getLastUniversityId();
        Assert.assertNotNull("Data on demand for 'LastUniversity' failed to provide an identifier", id);
        obj = LastUniversity.findLastUniversity(id);
        boolean modified =  dod.modifyLastUniversity(obj);
        Integer currentVersion = obj.getVersion();
        LastUniversity merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getLastUniversityId(), id);
        Assert.assertTrue("Version for 'LastUniversity' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void LastUniversityIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'LastUniversity' failed to initialize correctly", dod.getRandomLastUniversity());
        LastUniversity obj = dod.getNewTransientLastUniversity(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'LastUniversity' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'LastUniversity' identifier to be null", obj.getLastUniversityId());
        obj.persist();
        obj.flush();
        Assert.assertNotNull("Expected 'LastUniversity' identifier to no longer be null", obj.getLastUniversityId());
    }
    
    @Test
    public void LastUniversityIntegrationTest.testRemove() {
        LastUniversity obj = dod.getRandomLastUniversity();
        Assert.assertNotNull("Data on demand for 'LastUniversity' failed to initialize correctly", obj);
        Long id = obj.getLastUniversityId();
        Assert.assertNotNull("Data on demand for 'LastUniversity' failed to provide an identifier", id);
        obj = LastUniversity.findLastUniversity(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'LastUniversity' with identifier '" + id + "'", LastUniversity.findLastUniversity(id));
    }
    
}