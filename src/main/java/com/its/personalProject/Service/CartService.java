package com.its.personalProject.Service;

import com.its.personalProject.DTO.CartDTO;
import com.its.personalProject.DTO.CartItemDTO;
import com.its.personalProject.Repository.CartRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartService {

    @Autowired
    private CartRepository cartRepository;

    public void save(CartDTO cartDTO) {
        cartRepository.save(cartDTO);
    }

    public List<CartItemDTO> findAll(Long m_id) {
        List<CartItemDTO> cartDTOList = cartRepository.findAll(m_id);
        return cartDTOList;
    }
}
