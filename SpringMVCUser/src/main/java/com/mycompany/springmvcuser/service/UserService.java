/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.springmvcuser.service;

import com.mycompany.springmvcuser.entities.UserEntity;
import java.util.List;

/**
 *
 * @author iviettech
 */
public interface UserService {
    
    public UserEntity insertAndUpdate(UserEntity user);
    public boolean delete(int id);
    public UserEntity findUserById(int id);
    public UserEntity findUserByFirstName(String name);
    public List<UserEntity> findAllUser();
}
