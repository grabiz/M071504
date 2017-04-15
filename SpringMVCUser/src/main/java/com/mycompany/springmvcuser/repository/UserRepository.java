/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.springmvcuser.repository;

import com.mycompany.springmvcuser.entities.UserEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author iviettech
 */
@Repository
public interface UserRepository extends CrudRepository<UserEntity,Integer> {
    
}
