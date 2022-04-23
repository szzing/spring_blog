package com.cos.spring.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

//import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.DynamicInsert;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@SequenceGenerator(
		name = "USER_SEQ_GENERATOR"
		, sequenceName = "USER_SEQ"
		, initialValue = 1
		, allocationSize = 1
		)

@Table(name="users")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@DynamicInsert
public class Users {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="USER_SEQ_GENERATOR")
	private int id;
	
	@Column(nullable=false, length=30, unique = true)
	private String username;
	
	@Column(nullable=false, length=30)
	private String nickname;
	
	@Column(nullable=false, length=100)
	private String password;
	
	@Column(nullable=false, length=50)
	private String email;
	
	@Enumerated(EnumType.STRING)
	private RoleType roles;
	
	@CreationTimestamp
	private Timestamp createDate;
	
}
