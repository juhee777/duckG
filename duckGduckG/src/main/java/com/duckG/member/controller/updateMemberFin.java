package com.duckG.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duckG.Control;
import com.duckG.member.service.MemberService;
import com.duckG.member.service.MemberServiceImpl;
import com.duckG.vo.MemberVO;

public class updateMemberFin implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		
		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String Phone = req.getParameter("Phone");
		String Email = req.getParameter("Email");
		String add1 = req.getParameter("add");

		
		
	
		MemberService msv = new MemberServiceImpl();
		MemberVO mvo = new MemberVO();
		mvo.setMemberId(id);
		mvo.setMemberName(name);
		mvo.setPhone(Phone);
		mvo.setEmail(Email);
		mvo.setAddress(add1);

		
		System.out.println(mvo);
		if(msv.updateMemberFin(mvo)) {
			System.out.println("변경성공");
			resp.sendRedirect("updateMember.do");
		}else {
			System.out.println("변경실패");
		}
	
		
	}

}
