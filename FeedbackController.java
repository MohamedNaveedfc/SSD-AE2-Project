package lk.abcd.demoae2project.controller;

import lk.abcd.demoae2project.model.Feedback;
import lk.abcd.demoae2project.service.FeedbackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class FeedbackController {
    @Autowired
    private FeedbackService feedbackService;

    @GetMapping("/read-feedback")
    public String showreadFeedbackPage(Model model){
        model.addAttribute("feedbacks", feedbackService.findAll());
        return "readfeedback";
    }
    @GetMapping("/create-feedback")
    public String showCreateFeedbackPage(Model model){
        model.addAttribute("command", new Feedback());
        return "createfeedback";
    }
    @PostMapping("/create-feedback")
    public String createFeedback(@ModelAttribute("feedback")Feedback feedback){
       feedbackService.saveFeedback(feedback);
        return "redirect:/read-feedback";
    }

    @GetMapping("/update-feedback/{id}")
    public String showupdateFeedbackPage(@PathVariable int id, Model model){
        model.addAttribute("id", id);
        model.addAttribute("command", feedbackService.findById(id).orElse(null));
        return "updatefeedback";
    }
    @PostMapping("/update-feedback/{id}")
    public String updateFeedback(@PathVariable int id, @ModelAttribute("feedback") Feedback feedback){
        feedbackService.updatefeedback(id, feedback);
        return "redirect:/read-feedback";
    }

    @GetMapping("/delete-feedback/{id}")
    public String deleteFeedback(@PathVariable int id){
        feedbackService.deleteById(id);
        return "redirect:/read-feedback";
    }
}
