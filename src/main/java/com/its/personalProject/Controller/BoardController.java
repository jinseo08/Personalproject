package com.its.personalProject.Controller;

import com.its.personalProject.DTO.BoardDTO;
import com.its.personalProject.DTO.DogDTO;
import com.its.personalProject.DTO.PageDTO;
import com.its.personalProject.Service.BoardService;
import com.its.personalProject.Service.DogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/board")
public class BoardController {

    @Autowired
    private BoardService boardService;

    @Autowired
    private DogService dogService;


    @GetMapping("/paging")
    public String paging(@RequestParam(value="page", required=false, defaultValue="1") int page, Model model) {
        // required-false로 요청하면 /board/paging 요청도 가능
        // 별도의 페이지 값을 요청하지 않으면 첫페이지(page=1)를 보여주자
        List<BoardDTO> boardList = boardService.pagingList(page);
        PageDTO paging = boardService.paging(page);
        model.addAttribute("boardList", boardList);
        model.addAttribute("paging", paging);
        return "board/list";
    }

    @GetMapping("/save")
    public String save(HttpSession session, Model model){
        Long m_id = (Long) session.getAttribute("m_id");
        List<DogDTO> dogDTOList = dogService.findAll(m_id);
        model.addAttribute("dogList",dogDTOList);
        return "/board/save";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute BoardDTO boardDTO){
        boardService.save(boardDTO);
        return "redirect:/board/paging";
    }


}
