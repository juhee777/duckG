package com.duckG.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

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
				resp.setContentType("text/html; charset=utf-8");
		        PrintWriter w = resp.getWriter();
		        w.write("<script>alert('회원가입 성공!!');location.href='loginForm.do';</script>");
		        w.flush();
		        w.close();
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

	}

}
