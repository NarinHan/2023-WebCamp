package com.example.Service;

import com.example.DTO.UserDTO;

public interface UserService {
    public int insertUser(UserDTO dto);
    public UserDTO getUser(UserDTO dto);
}
