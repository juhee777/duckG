package com.duckG.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;

import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.util.StreamUtils;

import com.duckG.Control;
import com.duckG.member.service.MemberService;
import com.duckG.member.service.MemberServiceImpl;
import com.duckG.vo.MemberVO;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.GsonBuilder;

public class AddMember implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ServletInputStream sis = req.getInputStream();	//stream : 자바에서 데이터를 주고받고 하는 통로
		String json = StreamUtils.copyToString(sis, StandardCharsets.UTF_8);
		System.out.println(json);
		
		//문자열 -> 객체(CenterVO)
		ObjectMapper objectMapper = new ObjectMapper();	//jackson(maven)
		MemberVO[] mvoList = objectMapper.readValue(json, MemberVO[].class);
		resp.setContentType("text/json;charset=utf-8");
		String name = req.getParameter("name");
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		System.out.println(mvoList);
		System.out.println(name);
		System.out.println(id);
		System.out.println(pw);
		
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
