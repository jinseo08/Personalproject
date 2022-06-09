package com.its.personalProject.Repository;

import com.its.personalProject.DTO.BoardDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class BoardRepository {

    @Autowired
    private SqlSessionTemplate sql;

    public int boardCount() {
        return sql.selectOne("Board.count");
    }

    public List<BoardDTO> pagingList(Map<String, Integer> pagingParam) {
        return sql.selectList("Board.pagingList", pagingParam);
    }

    public void save(BoardDTO boardDTO) {
        sql.insert("Board.save",boardDTO);
    }

    public BoardDTO findById(Long b_id) {
        sql.update("Board.boardHits",b_id);
        return sql.selectOne("Board.findById",b_id);
    }
}
