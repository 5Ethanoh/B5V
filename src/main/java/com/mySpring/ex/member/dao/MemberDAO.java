package com.mySpring.ex.member.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.mySpring.ex.member.vo.MemberVO;

public interface MemberDAO {
	public List selectAllMemberList() throws DataAccessException;
	 public int insertMember(MemberVO memberVO) throws DataAccessException ;
	 public int deleteMember(String id) throws DataAccessException;
	 public int updateMember(MemberVO memberVO) throws DataAccessException;
	 public MemberVO findMember(String _id) throws DataAccessException;
	 public int idCheck(String id) throws Exception;
	 public MemberVO loginById(MemberVO memberVO) throws DataAccessException;

}
