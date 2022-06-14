package com.its.personalProject.Repository;

import com.its.personalProject.DTO.CartDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CartRepository {

    @Autowired
    private SqlSessionTemplate sql;

    public void save(CartDTO cartDTO) {
        sql.insert("Cart.save",cartDTO);
    }

    public List<CartDTO> findAll(Long m_id) {
        return sql.selectList("Cart.findAll",m_id);
    }
}
