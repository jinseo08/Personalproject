package com.its.personalProject.Repository;

import com.its.personalProject.DTO.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberRepository {

    @Autowired
    private SqlSessionTemplate sql;


    public int save(MemberDTO memberDTO) {
        System.out.println("MemberRepository.save");
        System.out.println("memberDTO = " + memberDTO);
        return sql.insert("Member.save",memberDTO);
    }

    public MemberDTO login(MemberDTO memberDTO) {
        return sql.selectOne("Member.login",memberDTO);
    }
}
