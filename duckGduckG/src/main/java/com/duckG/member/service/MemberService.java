package com.duckG.member.service;

import com.duckG.vo.MemberVO;

public interface MemberService {
	//로그인
	MemberVO Login(MemberVO mvo);
	//회원가입
	boolean Regist(MemberVO mvo);
	
	MemberVO updateMemberfind(String id);
	boolean updateMemberFin(MemberVO mvo);
	MemberVO pwdb(String id);
	boolean updatpw(MemberVO mvo);
}