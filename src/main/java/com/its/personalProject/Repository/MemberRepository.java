package com.its.personalProject.Repository;

import com.its.personalProject.DTO.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

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

    public String idCheck(String memberId) {
        return sql.selectOne("Member.idCheck",memberId);
    }

    public MemberDTO findById(Long m_id) {
        return sql.selectOne("Member.findById",m_id);
    }

    public List<MemberDTO> findAll() {
        return sql.selectList("Member.findAll");
    }

    public void delete(Long m_id) {
        sql.delete("Member.delete",m_id);
    }

    public int update(MemberDTO memberDTO) {
        return sql.update("Member.update",memberDTO);
    }
}
