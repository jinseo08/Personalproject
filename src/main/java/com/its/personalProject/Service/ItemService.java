package com.its.personalProject.Service;

import com.its.personalProject.DTO.ItemDTO;
import com.its.personalProject.Repository.ItemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Service
public class ItemService {

    @Autowired
    private ItemRepository itemRepository;

    public void save(ItemDTO itemDTO) throws IOException {
        MultipartFile itemThumbnail = itemDTO.getItemThumbnail();
        String itemThumbnailName = itemThumbnail.getOriginalFilename();
        itemThumbnailName = System.currentTimeMillis() + "-" + itemThumbnailName;
        itemDTO.setItemThumbnailName(itemThumbnailName);
        String savePath = "C:\\spring_img\\" + itemThumbnailName;
        if(!itemThumbnail.isEmpty()){
            itemThumbnail.transferTo(new File(savePath));
        }
        itemRepository.save(itemDTO);
    }

    public List<ItemDTO> findAll() {
        List<ItemDTO> itemDTOList = itemRepository.findAll();
        return itemDTOList;
    }

    public ItemDTO findById(Long i_id) {
        ItemDTO itemDTO = itemRepository.findById(i_id);
        return itemDTO;
    }
}
