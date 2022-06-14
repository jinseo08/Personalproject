package com.its.personalProject.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderDTO {

    private Long o_id;
    private Long m_id;
    private Long i_id;
    private Long s_id;
    private int itemQTY;
    private String orderCreatedDate;

}
