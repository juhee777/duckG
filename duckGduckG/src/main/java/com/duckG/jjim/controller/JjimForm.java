package com.duckG.jjim.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.duckG.Control;
import com.duckG.jjim.service.JjimService;
import com.duckG.jjim.service.JjimServiceImpl;
import com.duckG.vo.JjimVO;
import com.duckG.vo.jjimPageDTO;

public class JjimForm implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub		
		JjimService svc = new JjimServiceImpl();
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/json;charset=UTF-8");
		String page = req.getParameter("page");
		
		page = page == null ? "1" :page;

		HttpSession session = req.getSession();
		String uid = (String) session.getAttribute("logId");
		int totalCnt = svc.jjimTotal(uid);

		List<JjimVO> list = svc.selectJjim(uid, Integer.parseInt(page));
		jjimPageDTO dto = new jjimPageDTO(Integer.parseInt(page), totalCnt);

		req.setAttribute("paging", dto);
		req.setAttribute("jjim", list);
		
		req.getRequestDispatcher("jjim/jjimForm.tiles").forward(req, resp);
	}
}
