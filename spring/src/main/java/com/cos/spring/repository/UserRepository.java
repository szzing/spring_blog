package com.cos.spring.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.spring.model.Users;

//@Repository
public interface UserRepository extends JpaRepository<Users, Integer> {
	
	Optional<Users> findByUsername(String username);

}
