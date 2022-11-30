package lk.abcd.demoae2project.service;

import lk.abcd.demoae2project.model.Package;
import org.junit.jupiter.api.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.persistence.EntityNotFoundException;


@SpringBootTest
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class PackageServiceTests {
    @Autowired
    private PackageService packageService;
    @BeforeAll
    void setup() {
        Package packag = new Package();
        packag.setPackagename("winter cottage");
        packag.setPackagetype("fully Accommodation");
        packag.setPackagedetails("This package has all the facilities");
        packag.setPackageprice("30000");
        packageService.savePackage(packag);
    }
    @Test
    void testFindAll() {
        Assertions.assertFalse(packageService.findAll().isEmpty());
    }
    @Test
    void testFindById(){
        Package packag = packageService.findById(1).orElseThrow(EntityNotFoundException::new);
        Assertions.assertEquals("winter cottage", packag.getPackagename());
    }
    @Test
    void testUpdateBooking(){
        Package packag = packageService.findById(1).orElseThrow(EntityNotFoundException::new);
        packag.setPackageprice("30000");
        Package updatepackage = packageService.updatepackage(1, packag);
        Assertions.assertEquals("30000",updatepackage.getPackageprice());
    }
    @AfterAll
    void teardown(){
        packageService.deleteById(1);
    }
}
