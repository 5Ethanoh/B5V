package com.mySpring.ex.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.mySpring.ex.member.vo.MemberVO;


@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO {
	@Autowired
	private SqlSession sqlSession; //������ ����

	@Override
	public List selectAllMemberList() throws DataAccessException {
		List<MemberVO> membersList = null;
		membersList = sqlSession.selectList("mapper.member.selectAllMemberList"); //mapper.member�� ���ǵ� selectAllMemberList�� ã����
		//MyBatis�� �̿��ϰ� �Ǹ鼭 �� �κ��� ���� ��
		return membersList;
	}

	@Override
	public int insertMember(MemberVO memberVO) throws DataAccessException {
		int result = sqlSession.insert("mapper.member.insertMember", memberVO); //memberVO��� �Ķ���͵� ���� �Ѱ���
		return result;
	}

	@Override
	public int deleteMember(String id) throws DataAccessException {
		int result = sqlSession.delete("mapper.member.deleteMember", id);
		return result;
	}
	
	@Override
	public MemberVO findMember(String _id) throws DataAccessException {
		MemberVO vo = sqlSession.selectOne("mapper.member.findMember", _id);
		return vo;
	}
	@Override
	public int idCheck(String id) throws Exception{
		int result = sqlSession.selectOne("mapper.member.CheckId", id);
		return result;
	}
	
	
	@Override
	public int updateMember(MemberVO memberVO) throws DataAccessException {
		int result = sqlSession.update("mapper.member.updateMember", memberVO);
		return result;
	}
	
	@Override
	public MemberVO loginById(MemberVO memberVO) throws DataAccessException{
		  MemberVO vo = sqlSession.selectOne("mapper.member.loginById",memberVO);
		return vo;
	}

}
