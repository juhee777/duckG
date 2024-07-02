package com.duckG.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.duckG.Control;
import com.duckG.member.service.MemberService;
import com.duckG.member.service.MemberServiceImpl;
import com.duckG.vo.MemberVO;

public class LoginControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("loginId");
		String pw = req.getParameter("loginPass");
		
		MemberVO mvo = new MemberVO();
		
		mvo.setMemberId(id);
		mvo.setMemberPw(pw);
		
		MemberService svc = new MemberServiceImpl();
		try {
			mvo = svc.Login(mvo);
			if(mvo != null) {
				HttpSession session = req.getSession();
				session.setAttribute("logId", mvo.getMemberId());
				session.setAttribute("manage", mvo.getManagement());
				resp.getWriter().print("{\"retCode\":\"OK\"}");
			} else {
				resp.getWriter().print("{\"retCode\":\"NG\"}");	
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			resp.getWriter().print("{\"retCode\":\"SQL\"}");	
		}
		

	}

}
