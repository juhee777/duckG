package com.duckG.review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duckG.Control;
import com.duckG.order.service.OrderService;
import com.duckG.order.service.OrderServiceImpl;
import com.duckG.review.service.ReviewService;
import com.duckG.review.service.ReviewServiceImpl;
import com.duckG.vo.OrderVO;
import com.duckG.vo.ReviewVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class AddReview implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");

		String savePath = "C:\\Users\\admin\\git\\duckG\\duckGduckG\\src\\main\\webapp\\img\\reviewimg";
		int maxSize = 1024 * 1024 * 5;
		String encoding = "utf-8";
		MultipartRequest mr = new MultipartRequest(req, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
		
		
		//리뷰작성
		String username = mr.getParameter("username");
		String prono = mr.getParameter("prono");
		String rate = mr.getParameter("rate");
		String reviewComments = mr.getParameter("reviewComments");
		String image = mr.getFilesystemName("upimage");
		
		ReviewService rsv = new ReviewServiceImpl();
		ReviewVO rvo = new ReviewVO();
		
		rvo.setMemberId(username); 
		rvo.setProductNo(Integer.parseInt(prono));
		rvo.setReviewScore(Integer.parseInt(rate));
		rvo.setReviewContent(reviewComments);
		rvo.setReviewImage(image);
		

		String orderno = mr.getParameter("reviewName");// 다른것 사용
		OrderService osv = new OrderServiceImpl();
		OrderVO ovo = new OrderVO();
		
		ovo.setOrderNo(Integer.parseInt(orderno));
		ovo.setOrderSta(3);
		
		
		osv.UpdateOrder(ovo);
		rsv.AddReview(rvo);
		
		resp.sendRedirect("MyInfo.do");
	}

}
