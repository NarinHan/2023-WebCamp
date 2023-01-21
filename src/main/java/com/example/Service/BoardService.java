package com.example.Service;

import com.example.DTO.BoardDTO;

import java.util.List;

public interface BoardService {
    public int insertBoard(BoardDTO dto);
    public int deleteBoard(int id);
    public int updateBoard(BoardDTO dto);
    public BoardDTO getBoard(int id);
    public List<BoardDTO> getBoardList();
}
