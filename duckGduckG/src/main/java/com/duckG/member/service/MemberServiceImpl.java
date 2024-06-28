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

}
