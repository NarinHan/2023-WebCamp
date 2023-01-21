package com.example.DAO;

import com.example.DTO.UserDTO;

public interface UserDAO {
    public int insertUser(UserDTO dto);
    public UserDTO getUser(UserDTO dto);
}
