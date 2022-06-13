package com.its.personalProject.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CartDTO {

    private Long s_id;
    private Long m_id;
    private Long i_id;
    private int itemQTY;


}
