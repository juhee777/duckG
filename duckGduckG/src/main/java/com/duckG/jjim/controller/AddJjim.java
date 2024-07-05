package com.duckG.jjim.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.duckG.Control;
import com.duckG.jjim.service.JjimService;
import com.duckG.jjim.service.JjimServiceImpl;
import com.duckG.vo.JjimVO;

public class AddJjim implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		JjimService svc = new JjimServiceImpl();
		int productNo = Integer.parseInt(req.getParameter("productNo"));
		
		HttpSession session = req.getSession();
		String memberId = (String) session.getAttribute("logId");
		
		JjimVO jvo = new JjimVO();
		jvo.setProductNo(productNo);
		jvo.setMemberId(memberId);		
		
		if(!svc.jjimList(jvo)) {
			resp.getWriter().print("{\"retCode\": \"overlap\", \"retMsg\": \"Success\"}");
		}else if(svc.addJjim(jvo)) { //{'retCode": "OK", "retMsg": "Success"}
			resp.getWriter().print("{\"retCode\": \"OK\", \"retMsg\": \"Success\"}");
		}else { //{'retCode": "NG", "retMsg": "Fail"}
			resp.getWriter().print("{\"retCode\": \"NG\", \"retMsg\": \"Fail\"}");
		}
		
	}

}
