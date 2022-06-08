package com.its.personalProject.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardDTO {

    private MultipartFile boardFile;
    private String m_id;
    private String memberId;
    private String boardTitle;
    private String boardContents;
    private String boardHits;
    private String boardCreatedDate;
    private String boardUpdateDate;
    private Long b_id;
    private String boardFileName;
    private String dogName;


}
