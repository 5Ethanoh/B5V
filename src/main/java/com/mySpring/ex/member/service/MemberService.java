package com.mySpring.ex.member.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.mySpring.ex.member.vo.MemberVO;

public interface MemberService {
	 public List listMembers() throws DataAccessException;
	 public int addMember(MemberVO memberVO) throws DataAccessException;
	 public int removeMember(String id) throws DataAccessException;
	 public MemberVO findMember(String _id) throws DataAccessException;
	 public void modMember(MemberVO memberVO) throws Exception;
	 public int idCheck(String id) throws Exception;
	 public MemberVO login(MemberVO memberVO) throws Exception;
}
