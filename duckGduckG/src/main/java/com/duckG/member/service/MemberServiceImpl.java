package com.duckG.member.service;

import org.apache.ibatis.session.SqlSession;

import com.duckG.DataSource;
import com.duckG.member.mapper.MemberMapper;
import com.duckG.vo.MemberVO;

public class MemberServiceImpl implements MemberService{
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
	
	@Override
	public MemberVO Login(MemberVO mvo) {
		// TODO Auto-generated method stub
		return mapper.LoginCheck(mvo);
	}

	@Override
	public boolean Regist(MemberVO mvo) {
		// TODO Auto-generated method stub
		return mapper.addMember(mvo) == 1;
	}
	
	@Override
	public MemberVO updateMemberfind(String id) {
		// TODO Auto-generated method stub
		return mapper.updateMemberfind(id);
	}
	
	@Override
	public boolean updateMemberFin(MemberVO mvo) {
		// TODO Auto-generated method stub
		return mapper.updateMemberFin(mvo) == 1;
	}

	@Override
	public MemberVO pwdb(String id) {
		// TODO Auto-generated method stub
		return mapper.pwdb(id);
	}
	
	@Override
	public boolean updatpw(MemberVO mvo) {
		// TODO Auto-generated method stub
		return mapper.updatpw(mvo) == 1;
	}
	
	@Override
	public boolean delmember(String id) {
		// TODO Auto-generated method stub
		return mapper.delmember(id) == 1;
	}

}
