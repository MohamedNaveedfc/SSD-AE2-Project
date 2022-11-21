package lk.abcd.demoae2project.controller;


import lk.abcd.demoae2project.model.Package;
import lk.abcd.demoae2project.service.PackageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class PackageController {
    @Autowired
    private PackageService packageService;

    @GetMapping("/read-package")
    public String showreadPackagePage(Model model){
        model.addAttribute("packages", packageService.findAll());
        return "readpackage";
    }
    @GetMapping("/add-package")
    public String showaddPackagePage(Model model){
        model.addAttribute("command", new Package());
        return "addpackage";
    }
    @PostMapping("/add-package")
    public String addPackage(@ModelAttribute("package") Package packag){
        packageService.savePackage(packag);
        return "redirect:/read-package";
    }

    @GetMapping("/update-package/{id}")
    public String showupdatePackagePage(@PathVariable int id, Model model){
        model.addAttribute("id", id);
        model.addAttribute("command", packageService.findById(id).orElse(null));
        return "updatepackage";
    }
    @PostMapping("/update-package/{id}")
    public String updatePackage(@PathVariable int id, @ModelAttribute("package") Package packag){
        packageService.updatepackage(id, packag);
        return "redirect:/read-package";
    }

    @GetMapping("/delete-package/{id}")
    public String deletePackage(@PathVariable int id){
        packageService.deleteById(id);
        return "redirect:/read-package";
    }
}

