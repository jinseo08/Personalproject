package com.its.personalProject.Controller;

import com.its.personalProject.DTO.CartDTO;
import com.its.personalProject.Service.CartService;
import com.its.personalProject.Service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/cart")
public class CartController {

    @Autowired
    private CartService cartService;


    @GetMapping("/save")
    public String save(@ModelAttribute CartDTO cartDTO){
        cartService.save(cartDTO);
        return "redirect:/cart/findAll";
    }

    @GetMapping("/findAll")
    public String findAll(@RequestParam Long m_id, Model model){
        List<CartDTO> cartDTOList = cartService.findAll(m_id);
        model.addAttribute("cartList",cartDTOList);
        return "/item/cart";
    }


}
