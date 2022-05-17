package com.lcomputerstudy.example.service;

import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetailsService;

import com.lcomputerstudy.example.domain.Pagination;
import com.lcomputerstudy.example.domain.User;

public interface UserService extends UserDetailsService{
	   //유저읽기
	   public User readUser(String username);
	      
	   //유저생성
	   public void createUser(User user);

	   // 권한 생성
	   public void createAuthorities(User user);
	   
	   // 시큐리티 권한 얻기
	   Collection<GrantedAuthority> getAuthorities(String username);
	   
	   //회원리스트
	   public List<User> getList();
	   
	   //회원 상세페이지
	   public User viewMember(User user);

	   public User getUser(User user);
	   
	   public void editUser(User user) throws Exception;
	   
	   public void deleteUser(User user);
	   
	   public int countUser();

	   public List<User> selectUser(Pagination pg);

	}

	
