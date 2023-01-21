package com.example;

import com.example.DTO.BoardDTO;
import com.example.Service.BoardServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {

    @Autowired
    BoardServiceImpl boardService;

    @RequestMapping(value = "/board", method = RequestMethod.GET)
    public String boardList(Model model) {
        model.addAttribute("boardList", boardService.getBoardList());
        return "board";
    }

    /** 글쓰기 : 글쓰기 버튼 눌렀을 때 addform 페이지로 이동 **/
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add() {
        return "addform";
    }

    /** addform 페이지에서 작동하는 form action **/
    @RequestMapping(value = "/addconfirm", method = RequestMethod.POST)
    public String addConfirm(BoardDTO dto, Model model) {
        if(boardService.insertBoard(dto) == 0) { // 데이터 추가 실패
            dto.setStatus(0);
        } else {
            dto.setStatus(1); // 데이터 추가 성공
        }
        model.addAttribute("addConfirm", dto);
        return "redirect:board";
    }

    /** 수정 : 수정 버튼 눌렀을 때 editform/{id} 로 이동 **/
    @RequestMapping(value = "/editform/{id}", method = RequestMethod.GET)
    public String edit(@PathVariable("id") int id, Model model) {
        BoardDTO boardDTO = boardService.getBoard(id);
        model.addAttribute("edit", boardDTO);
        return "editform";
    }

    /** editform 페이지에서 작동하는 form action **/
    @RequestMapping(value = "/editconfirm", method = RequestMethod.POST)
    public String editConfirm(BoardDTO dto) {
        if(boardService.updateBoard(dto) == 0) {
            System.out.println("데이터 수정 실패");
        } else {
            System.out.println("데이터 수정 성공");
        }
        return "redirect:board";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") int id) {
        if(boardService.deleteBoard(id) == 0) {
            System.out.println("데이터 삭제 실패");
        } else {
            System.out.println("데이터 삭제 성공");
        }
        return "redirect:../board";
    }

}
