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

public class UpdateMember implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//임시 로그인
		HttpSession session = req.getSession();
		session.setAttribute("logId", "user01");	
		MemberService msv = new MemberServiceImpl();
		MemberVO mvo = msv.updateMemberfind("user01");
		
		req.setAttribute("mvo", mvo);
		req.getRequestDispatcher("MyInfo/updateMember.tiles").forward(req, resp);

	}

}
