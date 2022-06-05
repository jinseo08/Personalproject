package com.its.personalProject.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DogDTO {

    private Long d_id;
    private Long m_id;
    private String dogName;
    private String dogDateBirth;
    private String dogDayWeMet;
    private String dogGender;
    private String dogProfileName;
    private String dogContents;
    private MultipartFile dogProfile;

}
