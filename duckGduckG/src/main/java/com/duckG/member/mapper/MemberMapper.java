package com.duckG.member.mapper;

import com.duckG.vo.MemberVO;

public interface MemberMapper {
	//로그인
	MemberVO LoginCheck(MemberVO mvo);
}
