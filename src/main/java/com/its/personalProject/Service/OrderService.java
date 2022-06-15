package com.its.personalProject.Service;

import com.its.personalProject.DTO.OrderDTO;
import com.its.personalProject.DTO.OrderItemDTO;
import com.its.personalProject.Repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Service
public class OrderService {

    @Autowired
    private OrderRepository orderRepository;

    public void save(OrderDTO orderDTO) {
        orderRepository.save(orderDTO);
    }


    public List<OrderItemDTO> findAll(Long m_id) {
        return orderRepository.findAll(m_id);
    }
}
