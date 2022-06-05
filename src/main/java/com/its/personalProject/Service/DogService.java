package com.its.personalProject.Service;

import com.its.personalProject.DTO.DogDTO;
import com.its.personalProject.Repository.DogRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@Service
public class DogService {

    @Autowired
    private DogRepository dogRepository;

    public void save(DogDTO dogDTO) throws IOException {
        MultipartFile dogProfile = dogDTO.getDogProfile();
        String dogProfileName = dogProfile.getOriginalFilename();
        dogProfileName = System.currentTimeMillis() + "-" + dogProfileName;
        dogDTO.setDogProfileName(dogProfileName);
        String savePath = "C:\\spring_img\\" + dogProfileName;
        if(!dogProfile.isEmpty()){
            dogProfile.transferTo(new File(savePath));
        }
        dogRepository.save(dogDTO);
    }
}