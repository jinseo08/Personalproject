package com.its.personalProject.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ItemDTO {

    private Long i_id;
    private String itemName;
    private int itemPrice;
    private String itemCategory;
    private String itemTitle;
    private String itemContents;
    private String itemThumbnailName;
    private String itemStatus;


}
