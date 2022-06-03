package com.its.personalProject.Service;

import com.its.personalProject.DTO.MemberDTO;
import com.its.personalProject.Repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

    @Autowired
    private MemberRepository memberRepository;


    public boolean save(MemberDTO memberDTO) {
        System.out.println("MemberService.save");
        System.out.println("memberDTO = " + memberDTO);
        int result = memberRepository.save(memberDTO);
        if(result > 0){
            return true;
        }else {
            return false;
        }
    }

    public MemberDTO login(MemberDTO memberDTO) {
        MemberDTO loginResult = memberRepository.login(memberDTO);
        return loginResult;
    }

    public String idCheck(String memberId) {
        String checkResult = memberRepository.idCheck(memberId);
        if(checkResult == null){
            return "ok";
        }else {
            return "no";
        }
    }
}
