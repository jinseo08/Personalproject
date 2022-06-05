package com.its.personalProject.Repository;

import com.its.personalProject.DTO.DogDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DogRepository {

    @Autowired
    private SqlSessionTemplate sql;

    public int save(DogDTO dogDTO) {
        return sql.insert("Dog.save",dogDTO);
    }
}
