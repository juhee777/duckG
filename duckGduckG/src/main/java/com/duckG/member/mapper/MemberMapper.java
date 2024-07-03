package com.duckG.member.mapper;

import com.duckG.vo.MemberVO;

public interface MemberMapper {
	//로그인
	MemberVO LoginCheck(MemberVO mvo);
	//회원가입
	int addMember(MemberVO mvo);
	
	//내정보 수정
	MemberVO updateMemberfind(String id); // 개인정보 조회
	int updateMemberFin(MemberVO mvo);    // 개인정보 수정
	MemberVO pwdb(String id);         // 비밀번호 조회
	int updatpw(MemberVO mvo);
	
	int delmember(String id);
	
}
