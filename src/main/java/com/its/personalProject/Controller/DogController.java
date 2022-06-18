package com.its.personalProject.Controller;

import com.its.personalProject.DTO.DogDTO;
import com.its.personalProject.Service.DogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

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
        return "index";
    }

    // 마이페이지에서 반려견 목록
    @GetMapping("/findAll")
    public String findAll(@RequestParam Long m_id,Model model){
        List<DogDTO> dogDTOList = dogService.findAll(m_id);
        model.addAttribute("dogList",dogDTOList);
        return "/dog/list";
    }

    // 반려견 리스트에서 이름눌렀을때 나오는 상세페이지
    @GetMapping("/detail")
    public String findById(@RequestParam Long d_id, Model model){
        DogDTO dogDTO = dogService.findById(d_id);
        model.addAttribute("dog",dogDTO);
        return "/dog/dogPage";
    }

    //반려견 리스트에서 ajax로 html 페이지 넘겨주기
    @GetMapping("/detail2")
    public String findById2(@RequestParam Long d_id, Model model){
        DogDTO dogDTO = dogService.findById(d_id);
        model.addAttribute("dog",dogDTO);
        return "/dog/dogPage2";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam Long d_id,@RequestParam Long m_id){
        dogService.delete(d_id);
        System.out.println(m_id);
        return "redirect:/dog/findAll?m_id=" +m_id;
    }

    @PostMapping("/update")
    public String update(@ModelAttribute DogDTO dogDTO,HttpSession session){
        boolean result = dogService.update(dogDTO);
        Long m_id = (Long) session.getAttribute("m_id");
        if(result){
//            return "redirect:/dog/detail?d_id="+dogDTO.getD_id();
           return  "redirect:/dog/findAll?m_id=" +m_id;
        }else {
            return "index";
        }
    }


}
