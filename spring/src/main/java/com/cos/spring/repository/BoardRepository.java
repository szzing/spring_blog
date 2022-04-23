package com.cos.spring.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.spring.model.Boards;
import com.cos.spring.model.Users;

public interface BoardRepository extends JpaRepository<Boards, Integer> {

	List <Boards> findByUsers(Users users);
}
