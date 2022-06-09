package com.its.personalProject.Controller;

import com.its.personalProject.DTO.ItemDTO;
import com.its.personalProject.Service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;

@Controller
@RequestMapping("/item")
public class ItemController {

    @Autowired
    private ItemService itemService;

    @GetMapping("/save")
    public String saveForm(){
        return "/item/save";
    }

    @GetMapping("/findAll")
    public String findAll(){
        return "/item/list";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute ItemDTO itemDTO) throws IOException {
        itemService.save(itemDTO);
        return "/item/list";
    }

}
