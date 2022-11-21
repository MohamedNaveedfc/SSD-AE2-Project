package lk.abcd.demoae2project.service;

import lk.abcd.demoae2project.model.Customer;
import org.junit.jupiter.api.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.persistence.EntityNotFoundException;

@SpringBootTest
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class CustomerServiceTests {
    @Autowired
    private CustomerService customerService;
    @BeforeAll
    void setup(){
        Customer customer = new Customer();
        customer.setFirstname("Muhammad");
        customer.setLastname("umar");
        customer.setMobile(Integer.valueOf("0770052313"));
        customer.setEmail("umar@gmail.com");
        customer.setPassword("UmarUmar");
        customer.setAddress("kurunegala");
        customer.setCountry("Sri lanka");
        customerService.saveCustomer(customer);
    }
    @Test
    void testFindAll() {
        Assertions.assertFalse(customerService.findAll().isEmpty());
    }
    @Test
    void testFindById() {
        Customer customer = customerService.findById(1).orElseThrow(EntityNotFoundException::new);
        Assertions.assertEquals("Muhammad", customer.getFirstname());
    }
    @Test
    void testUpdateCustomer() {
        Customer customer = customerService.findById(1).orElseThrow(EntityNotFoundException::new);
        customer.setEmail("umar@gmail.com");
        Customer updateCustomer = customerService.updatecustomer(1, customer);
        Assertions.assertEquals("umar@gmail.com", updateCustomer.getEmail());
    }
    @AfterAll
    void tearDown() {
        customerService.deleteById(1);
    }
}
