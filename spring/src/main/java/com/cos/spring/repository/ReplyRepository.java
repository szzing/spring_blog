package com.cos.spring.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.spring.model.Reply;
import com.cos.spring.model.Users;

public interface ReplyRepository extends JpaRepository<Reply, Integer> {

	List <Reply> findByUsers(Users users);
	
}
