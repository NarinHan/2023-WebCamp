package com.example.DAO;

import com.example.DTO.UserDTO;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl implements UserDAO {

    @Autowired
    SqlSessionTemplate sqlSession;

    @Override
    public int insertUser(UserDTO dto) {
        int result = sqlSession.insert("User.insertUser", dto);
        return result;
    }

    @Override
    public UserDTO getUser(UserDTO dto) {
        return sqlSession.selectOne("User.getUser", dto);
    }
}
