package com.its.personalProject.Controller;

import com.its.personalProject.DTO.ItemDTO;
import com.its.personalProject.DTO.MemberDTO;
import com.its.personalProject.DTO.OrderDTO;
import com.its.personalProject.DTO.OrderItemDTO;
import com.its.personalProject.Service.ItemService;
import com.its.personalProject.Service.MemberService;
import com.its.personalProject.Service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderController {

    @Autowired
    private OrderService orderService;
    @Autowired
    private ItemService itemService;
    @Autowired
    private MemberService memberService;

    @GetMapping("/save")
    public String saveForm(@RequestParam Long i_id,@RequestParam Long m_id,@RequestParam int itemQTY,@RequestParam int totalPrice, Model model){
        // 결제하기 창에 보여줄 아이템 정보 가져오기
        ItemDTO itemDTO = itemService.findById(i_id);
        model.addAttribute("item",itemDTO);
        // 결제하기 창에 보여줄 회원 정보 가져오기
        MemberDTO memberDTO = memberService.findById(m_id);
        System.out.println("m_id = " + m_id + "memberDTO = " + memberDTO);
        model.addAttribute("member",memberDTO);
        // 상품수량 모델로 넘겨주기
        model.addAttribute("itemQTY",itemQTY);
        // 총 금액 모델로 넘겨주기
        model.addAttribute("totalPrice",totalPrice);
        return "/item/order";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute OrderDTO orderDTO){
        orderService.save(orderDTO);
        return "redirect:/order/findAll?m_id=" +orderDTO.getM_id();
    }


    @GetMapping("/findAll")
    public String findAll(@RequestParam Long m_id,Model model){
        List<OrderItemDTO> orderDTOList = orderService.findAll(m_id);
        model.addAttribute("orderList",orderDTOList);
        return "/item/orderList";
    }

    @GetMapping("detail")
    public String findById(@RequestParam Long o_id,Model model){
        OrderItemDTO orderDTO = orderService.findById(o_id);
        model.addAttribute("orderDetail",orderDTO);
        return "/item/orderDetail";
    }
}
