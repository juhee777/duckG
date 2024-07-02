package com.duckG.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.duckG.Control;
import com.duckG.member.service.MemberService;
import com.duckG.member.service.MemberServiceImpl;
import com.duckG.vo.MemberVO;

public class AddMember implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		MemberVO mvo = new MemberVO();
		
		mvo.setMemberName(name);
		mvo.setMemberId(id);
		mvo.setMemberPw(pw);
		
		MemberService svc = new MemberServiceImpl();
		
		try {
			if(svc.Regist(mvo)) {
				resp.getWriter().print("{\"retCode\":\"OK\"}");
			}
		} catch (Exception e) {
			e.printStackTrace();
			resp.getWriter().print("{\"retCode\":\"NO\"}");
		}

	}

}
