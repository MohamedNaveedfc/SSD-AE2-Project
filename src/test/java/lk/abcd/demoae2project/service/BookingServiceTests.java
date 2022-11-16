package lk.abcd.demoae2project.service;

import lk.abcd.demoae2project.model.Booking;
import org.junit.jupiter.api.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.persistence.EntityNotFoundException;

@SpringBootTest
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class BookingServiceTests {
    @Autowired
    private BookingService bookingService;
    @BeforeAll
    void setup() {
        Booking booking = new Booking();
        booking.setEmployeename("umar");
        booking.setCustomerid("1");
        booking.setPackageid("1");
        booking.setBookedon("10/06/22");
        booking.setNumberofdays("2");
        bookingService.saveBooking(booking);
    }
    @Test
    void testFindAll() {
        Assertions.assertFalse(bookingService.findAll().isEmpty());
    }
    @Test
    void testFindById() {
        Booking booking = bookingService.findById(1).orElseThrow(EntityNotFoundException::new);
        Assertions.assertEquals("umar", booking.getEmployeename());
    }
    @Test
    void testUpdateBooking() {
        Booking booking = bookingService.findById(1).orElseThrow(EntityNotFoundException::new);
        booking.setNumberofdays("2");
        Booking updateBooking = bookingService.updatebooking(1, booking);
        Assertions.assertEquals("2", updateBooking.getNumberofdays());
    }
    @AfterAll
    void tearDown() {
        bookingService.deleteById(1);
    }
}
