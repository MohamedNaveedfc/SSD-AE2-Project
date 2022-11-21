package lk.abcd.demoae2project.service;

import lk.abcd.demoae2project.model.Hotel;
import org.junit.jupiter.api.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.persistence.EntityNotFoundException;

@SpringBootTest
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class HotelServiceTests {
    @Autowired
    private HotelService hotelService;
    @BeforeAll
    void setup() {
        Hotel hotel = new Hotel();
        hotel.setName("galaxy");
        hotel.setAddressline1("street1");
        hotel.setAddressline2("street2");
        hotel.setCountry("SriLanka");
        hotel.setNumberofemployees("ten");

        hotelService.saveHotel(hotel);
    }
    @Test
    void testFindAll() {
        Assertions.assertFalse(hotelService.findAll().isEmpty());
    }

    @Test
    void testFindByid() {
        Hotel hotel = hotelService.findById(1).orElseThrow(EntityNotFoundException::new);
        Assertions.assertEquals("galaxy", hotel.getName());
    }
    @Test
    void testUpdateHotel() {
        Hotel hotel = hotelService.findById(1).orElseThrow(EntityNotFoundException::new);
        hotel.setName("galaxy");
        Hotel updatedHotel = hotelService.updatehotel(1,hotel);
        Assertions.assertEquals("galaxy", updatedHotel.getName());
    }
    @AfterAll
    void tearDown(){
        hotelService.deleteById(1);
    }
}
