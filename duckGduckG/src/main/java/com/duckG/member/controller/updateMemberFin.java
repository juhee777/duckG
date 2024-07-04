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

public class updateMemberFin implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		
		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String Phone = req.getParameter("Phone");
		String Email = req.getParameter("Email");
		String addrno = req.getParameter("addrno");
		String addroad = req.getParameter("addroad");
		String addrlocal = req.getParameter("addrlocal");
		String addrdet = req.getParameter("addrdet");
		
		
	
		MemberService msv = new MemberServiceImpl();
		MemberVO mvo = new MemberVO();
		
		mvo.setMemberId(id);
		mvo.setMemberName(name);
		mvo.setPhone(Phone);
		mvo.setEmail(Email);
		mvo.setAddrNo(addrno);
		mvo.setAddrLocal(addrlocal);
		mvo.setAddrRoad(addroad);
		mvo.setAddrDet(addrdet);

		System.out.println(mvo);
		
		
		if(msv.updateMemberFin(mvo)) {
			resp.setContentType("text/html; charset=UTF-8");
		    PrintWriter out = resp.getWriter();
		    out.println("<script>alert('정상적으로 변경되었습니다.'); location.href='updateMember.do';</script>");
		    out.flush();
		    resp.flushBuffer();
		    out.close();
		}else {
		}
	
		
	}

}
