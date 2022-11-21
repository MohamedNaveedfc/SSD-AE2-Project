package lk.abcd.demoae2project.service;

import lk.abcd.demoae2project.model.Feedback;
import org.junit.jupiter.api.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.persistence.EntityNotFoundException;

@SpringBootTest
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class FeedbackServiceTests {
    @Autowired
    private FeedbackService feedbackService;
    @BeforeAll
    void setup() {
       Feedback feedback = new Feedback();
        feedback.setName("banu");
        feedback.setEmail("example@gmail.com");
       feedback.setMessage("graded");
        feedbackService.saveFeedback(feedback);
    }
    @Test
    void testFindAll() {
        Assertions.assertFalse(feedbackService.findAll().isEmpty());
    }

    @Test
    void testFindByid() {
        Feedback feedback = feedbackService.findById(1).orElseThrow(EntityNotFoundException::new);
        Assertions.assertEquals("banu", feedback.getName());
    }
    @Test
    void testUpdateFeedback() {
        Feedback feedback = feedbackService.findById(1).orElseThrow(EntityNotFoundException::new);
        feedback.setEmail("example@gmail.com");
        Feedback updatedFeedback = feedbackService.updatefeedback(1,feedback);
        Assertions.assertEquals("example@gmail.com", updatedFeedback.getEmail());
    }
    @AfterAll
    void tearDown(){
        feedbackService.deleteById(1);
    }
}
