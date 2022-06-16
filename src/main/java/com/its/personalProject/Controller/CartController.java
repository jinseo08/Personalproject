package com.its.personalProject.Controller;

import com.its.personalProject.DTO.CartDTO;
import com.its.personalProject.DTO.CartItemDTO;
import com.its.personalProject.DTO.ItemDTO;
import com.its.personalProject.Service.CartService;
import com.its.personalProject.Service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/cart")
public class CartController {

    @Autowired
    private CartService cartService;
    @Autowired
    private ItemService itemService;


    @GetMapping("/save")
    public String save(@ModelAttribute CartDTO cartDTO){
        cartService.save(cartDTO);
        return "redirect:/cart/findAll?m_id=" +cartDTO.getM_id();
    }

    @GetMapping("/findAll")
    public String findAll(@RequestParam Long m_id, Model model){
        List<CartItemDTO> cartItemDTOList = cartService.findAll(m_id);
        model.addAttribute("cartList",cartItemDTOList);
        return "/item/cart";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam Long s_id,@RequestParam Long m_id){
        cartService.delete(s_id);
        return "redirect:/cart/findAll?m_id=" +m_id;
    }


}
