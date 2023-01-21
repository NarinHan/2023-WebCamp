package com.example.Service;

import com.example.DAO.BoardDAO;
import com.example.DTO.BoardDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardServiceImpl implements BoardService {

    @Autowired
    BoardDAO boardDAO;

    @Override
    public int insertBoard(BoardDTO dto) {
        return boardDAO.insertBoard(dto);
    }

    @Override
    public int deleteBoard(int id) {
        return boardDAO.deleteBoard(id);
    }

    @Override
    public int updateBoard(BoardDTO dto) {
        return boardDAO.updateBoard(dto);
    }

    @Override
    public BoardDTO getBoard(int id) {
        return boardDAO.getBoard(id);
    }

    @Override
    public List<BoardDTO> getBoardList() {
        return boardDAO.getBoardList();
    }
}
