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

public class ChangePwFin implements Control {
	
	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("logId");
				
		MemberService msv = new MemberServiceImpl();
		MemberVO mvo = new MemberVO();
		
		//String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		String pw1 = req.getParameter("pw1");
		String pw2 = req.getParameter("pw2");
		String pwdb = msv.pwdb(id).getMemberPw();
		
		mvo.setMemberId(id);
		mvo.setMemberPw(pw1);
		
		if(pwdb.equals(pw)) {		
			if(pw1.equals(pw2)) {
				if(pw1.contains("!") || pw1.contains("#") || pw1.contains("&") || pw1.contains("*")) {
					msv.updatpw(mvo);
					resp.setContentType("text/html; charset=UTF-8");
				    PrintWriter out = resp.getWriter();
				    out.println("<script>alert('정상적으로 변경되었습니다.'); location.href='MyInfo.do';</script>");
				    out.flush();
				    resp.flushBuffer();
				    out.close();
				}else {
					resp.setContentType("text/html; charset=UTF-8");
				    PrintWriter out = resp.getWriter();
				    out.println("<script>alert('특수문자를 입력해주세요.(#,!,&,*'); location.href='ChangePw.do';</script>");
				    out.flush();
				    resp.flushBuffer();
				    out.close();
				}
			}else {
				resp.setContentType("text/html; charset=UTF-8");
			    PrintWriter out = resp.getWriter();
			    out.println("<script>alert('변경할 비밀번호가 일치하지 않습니다.'); location.href='ChangePw.do';</script>");
			    out.flush();
			    resp.flushBuffer();
			    out.close();
			}
		}else {	    
			resp.setContentType("text/html; charset=UTF-8");
		    PrintWriter out = resp.getWriter();
		    out.println("<script>alert('현재 비밀번호를 잘못입력하셨습니다.'); location.href='ChangePw.do';</script>");
		    out.flush();
		    resp.flushBuffer();
		    out.close();
			
		}

		


	}

}

