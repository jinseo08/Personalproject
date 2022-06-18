package com.its.personalProject.Repository;

import com.its.personalProject.DTO.DogDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class DogRepository {

    @Autowired
    private SqlSessionTemplate sql;

    public int save(DogDTO dogDTO) {
        return sql.insert("Dog.save",dogDTO);
    }

    public List<DogDTO> findAll(Long m_id) {
        return sql.selectList("Dog.findAll",m_id);
    }

    public DogDTO findById(Long d_id) {
        return sql.selectOne("Dog.findById",d_id);
    }

    public void delete(Long d_id) {
        sql.delete("Dog.delete",d_id);
    }


    public int update(DogDTO dogDTO) {
        return sql.update("Dog.update",dogDTO);
    }
}
