package com.its.personalProject.Controller;

import com.its.personalProject.DTO.DogDTO;
import com.its.personalProject.Service.DogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/dog")
public class DogController {

    @Autowired
    private DogService dogService;

    @GetMapping("/save")
    public String saveForm(HttpSession session,Model model){
        Long dogSave = (Long) session.getAttribute("m_id");
        model.addAttribute("m_id",dogSave);
        return "/dog/save";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute DogDTO dogDTO) throws IOException {
        dogService.save(dogDTO);
        return "redirect:/";
    }


}
