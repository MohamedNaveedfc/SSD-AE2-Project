package lk.abcd.demoae2project.controller;

import lk.abcd.demoae2project.model.Hotel;
import lk.abcd.demoae2project.service.HotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class HotelController {
    @Autowired
    private HotelService hotelService;

    @GetMapping("/read-hotel")
    public String showreadHotelPage(Model model){
        model.addAttribute("hotels", hotelService.findAll());
        return "readhotel";
    }
    @GetMapping("/create-hotel")
    public String showCreateHotelPage(Model model){
        model.addAttribute("command", new Hotel());
        return "createhotel";
    }

    @PostMapping("/create-hotel")
    public String createHotel(@ModelAttribute("hotel")Hotel hotel){
        hotelService.saveHotel(hotel);
        return "redirect:/read-hotel";
    }

    @GetMapping("/update-hotel/{id}")
    public String showupdateHotelPage(@PathVariable int id, Model model){
        model.addAttribute("id", id);
        model.addAttribute("command", hotelService.findById(id).orElse(null));
        return "updatehotel";
    }
    @PostMapping("/update-hotel/{id}")
    public String updateHotel(@PathVariable int id, @ModelAttribute("hotel") Hotel hotel){
        hotelService.updatehotel(id, hotel);
        return "redirect:/read-hotel";
    }

    @GetMapping("/delete-hotel/{id}")
    public String deleteHotel(@PathVariable int id){
       hotelService.deleteById(id);
        return "redirect:/read-hotel";
    }
}
