package com.its.personalProject.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CommentDTO {

    private Long c_id;
    private String memberId;
    private String commentContents;
    private String commentCreatedDate;
    private String dogProfileName;
    private Long b_id;


}
