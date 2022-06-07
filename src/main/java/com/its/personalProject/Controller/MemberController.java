package com.its.personalProject.Controller;

import com.its.personalProject.DTO.MemberDTO;
import com.its.personalProject.Service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/member")
public class MemberController {

    @Autowired
    private MemberService memberService;


    @GetMapping("/save")
    public String saveForm(){
        return "/member/save";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute MemberDTO memberDTO){
        System.out.println("보내기전 memberDTO = " + memberDTO);
        boolean saveResult = memberService.save(memberDTO);
        if(saveResult){
            return "/member/login";
        }else {
            return "/member/save";
        }
    }

    @GetMapping("login")
    public String login(){
        return "/member/login";
    }

    @PostMapping("login")
    public String login(@ModelAttribute MemberDTO memberDTO, Model model, HttpSession session){
        MemberDTO loginResult = memberService.login(memberDTO);
        if(loginResult != null) {
            model.addAttribute("memberLogin",loginResult);
            session.setAttribute("memberId",loginResult.getMemberId());
            session.setAttribute("m_id",loginResult.getM_id());
            return "redirect:/";
        }else {
            return "index";
        }
    }

    @PostMapping("/idCheck")
    public @ResponseBody String idCheck(@RequestParam String memberId){
        String checkResult = memberService.idCheck(memberId);
        return checkResult;
    }

    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/";
    }

    // 마이페이지 이동(상세조회) - 세션 이용
    @GetMapping("/detail")
    public String findById(HttpSession session,Model model){
        Long detailId = (Long) session.getAttribute("m_id");
        MemberDTO memberDTO = memberService.findById(detailId);
        model.addAttribute("member",memberDTO);
        return "/member/myPage";
    }

    //관리자용 회원 상세조회
    @GetMapping("/detailAdmin")
    public String findByIdAdmin(@RequestParam Long m_id, Model model){
        MemberDTO memberDTO = memberService.findById(m_id);
        model.addAttribute("member",memberDTO);
        return "/member/myPage";
    }


    @GetMapping("/findAll")
    public String findAll(Model model){
        List<MemberDTO> memberDTOList = memberService.findAll();
        model.addAttribute("memberList",memberDTOList);
        return "admin/memberList";
    }

}
