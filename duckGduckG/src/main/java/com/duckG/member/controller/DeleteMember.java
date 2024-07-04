package com.duckG.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.duckG.Control;
import com.duckG.member.service.MemberService;
import com.duckG.member.service.MemberServiceImpl;
import com.duckG.vo.MemberVO;

public class DeleteMember implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("logId");
		
		
		MemberService msv = new MemberServiceImpl();
		MemberVO mvo = new MemberVO();

		mvo.setMemberId(id);
		
		msv.delmember(id);
		resp.sendRedirect("main.do");
		
	}

}
