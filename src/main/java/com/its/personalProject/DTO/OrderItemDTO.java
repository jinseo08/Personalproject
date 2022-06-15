package com.its.personalProject.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderItemDTO {
    private Long o_id;
    private Long m_id;
    private Long i_id;
    private Long s_id;
    private int itemQTY;
    private int price;
    private String orderCreatedDate;
    private int totalPrice;
    private String itemName;
    private int itemPrice;
    private String itemCategory;
    private String itemTitle;
    private String itemContents;
    private String itemThumbnailName;
    private String itemStatus;
    private MultipartFile itemThumbnail;

}
