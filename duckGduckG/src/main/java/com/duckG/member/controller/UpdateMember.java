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

		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("logId");
		
		MemberService msv = new MemberServiceImpl();
		MemberVO mvo = msv.updateMemberfind(id);
		
		req.setAttribute("mvo", mvo);
		req.getRequestDispatcher("MyInfo/updateMember.tiles").forward(req, resp);

	}

}
