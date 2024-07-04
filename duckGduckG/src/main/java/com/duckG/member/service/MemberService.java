package com.duckG.member.service;

import java.util.List;

import com.duckG.vo.MemberVO;
import com.duckG.vo.OrderVO;

public interface MemberService {
	//로그인
	MemberVO Login(MemberVO mvo);
	//회원가입
	boolean Regist(MemberVO mvo);
	
	MemberVO updateMemberfind(String id);
	boolean updateMemberFin(MemberVO mvo);
	MemberVO pwdb(String id);
	boolean updatpw(MemberVO mvo);
	
	boolean delmember(String id);
	
	List<OrderVO> Inquireget(String id);
	
}