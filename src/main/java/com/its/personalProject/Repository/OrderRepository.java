package com.its.personalProject.Repository;

import com.its.personalProject.DTO.OrderDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderRepository {

    @Autowired
    private SqlSessionTemplate sql;

    public void save(OrderDTO orderDTO) {
        sql.insert("Order.save",orderDTO);
    }

}
