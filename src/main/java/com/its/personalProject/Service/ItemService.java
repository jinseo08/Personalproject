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
        MultipartFile itemFile = itemDTO.getItemFile();
        String itemThumbnailName = itemThumbnail.getOriginalFilename();
        String itemFileName = itemFile.getOriginalFilename();
        itemThumbnailName = System.currentTimeMillis() + "-" + itemThumbnailName;
        itemFileName = System.currentTimeMillis()+"-"+itemFileName;
        itemDTO.setItemThumbnailName(itemThumbnailName);
        itemDTO.setItemFileName(itemFileName);
        String savePath = "C:\\spring_img\\" + itemThumbnailName;
        String savePath2 = "C:\\spring_img\\" + itemFileName;
        if(!itemThumbnail.isEmpty()){
            itemThumbnail.transferTo(new File(savePath));
            itemFile.transferTo(new File(savePath2));
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

//    public void delete(Long i_id) {
//        itemRepository.delete(i_id);
//    }
}
