/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.springmvcuser.dao.impl;

import com.mycompany.springmvcuser.dao.UserDao;
import com.mycompany.springmvcuser.entities.UserEntity;
import com.mycompany.springmvcuser.repository.UserRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author iviettech
 */
@Repository
public class UserDaoImpl implements UserDao {
    
    @Autowired
    private UserRepository userRepository;
    
    @Override
    public UserEntity insertAndUpdate(UserEntity user) {
         return userRepository.save(user);
    }

    @Override
    public boolean delete(int id) {
         return false;
    }

    @Override
    public UserEntity findUserById(int id) {
         return null;
    }

    @Override
    public UserEntity findUserByFirstName(String name) {
        return null;
    }

    @Override
    public List<UserEntity> findAllUser() {
        return (List<UserEntity>) userRepository.findAll();
    }
    
}
