package com.its.personalProject.Repository;

import com.its.personalProject.DTO.ItemDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ItemRepository {

    @Autowired
    private SqlSessionTemplate sql;


    public void save(ItemDTO itemDTO) {
        sql.insert("Item.save",itemDTO);
    }

    public List<ItemDTO> findAll() {
        return sql.selectList("Item.findAll");
    }

    public ItemDTO findById(Long i_id) {
        return sql.selectOne("Item.findById",i_id);
    }

    public void delete(Long i_id) {
        sql.delete("Item.delete",i_id);
    }
}
