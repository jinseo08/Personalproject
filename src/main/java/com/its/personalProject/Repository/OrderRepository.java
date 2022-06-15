package com.its.personalProject.Repository;

import com.its.personalProject.DTO.OrderDTO;
import com.its.personalProject.DTO.OrderItemDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class OrderRepository {

    @Autowired
    private SqlSessionTemplate sql;

    public void save(OrderDTO orderDTO) {
        sql.insert("Order.save",orderDTO);
    }

    public List<OrderItemDTO> findAll(Long m_id) {
        return sql.selectList("Order.findAll",m_id);
    }
}
