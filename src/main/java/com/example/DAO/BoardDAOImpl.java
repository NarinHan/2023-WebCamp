package com.example.DAO;

import com.example.DTO.BoardDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardDAOImpl implements BoardDAO {

    @Autowired
    SqlSession sqlSession;

    @Override
    public int insertBoard(BoardDTO dto) {
        int result = sqlSession.insert("Board.insertBoard", dto);
        return result;
    }

    @Override
    public int deleteBoard(int id) {
        int result = sqlSession.delete("Board.deleteBoard", id);
        return result;
    }

    @Override
    public int updateBoard(BoardDTO dto) {
        int result = sqlSession.update("Board.updateBoard", dto);
        return result;
    }

    @Override
    public BoardDTO getBoard(int id) {
        BoardDTO one = sqlSession.selectOne("Board.getBoard", id);
        return one;
    }

    @Override
    public List<BoardDTO> getBoardList() {
        List<BoardDTO> list = sqlSession.selectList("Board.getBoardList");
        return list;
    }
}
