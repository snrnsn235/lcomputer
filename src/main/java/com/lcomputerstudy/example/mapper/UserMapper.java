package com.lcomputerstudy.example.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.security.core.GrantedAuthority;

import com.lcomputerstudy.example.domain.Pagination;
import com.lcomputerstudy.example.domain.User;

@Mapper
public interface UserMapper {
	   //유저읽기
	   public User readUser(String username);
	   
	   //유저생성
	   public void createUser(User user);

	   // 권한 읽기
	   public List<GrantedAuthority> readAuthorities(String username);

	   // 권한 생성
	   public void createAuthority(User user);
	   
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

