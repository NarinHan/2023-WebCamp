package com.example.Service;

import com.example.DAO.UserDAO;
import com.example.DTO.UserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserServiceImpl implements UserService {

    @Autowired
    UserDAO userDAO;

    @Override
    public int insertUser(UserDTO dto) {
        return userDAO.insertUser(dto);
    }

    @Override
    public UserDTO getUser(UserDTO dto) {
        return userDAO.getUser(dto);
    }
}
