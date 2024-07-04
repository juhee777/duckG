package com.duckG.main;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duckG.Control;
import com.duckG.product.service.ProductService;
import com.duckG.product.service.ProductServiceImpl;
import com.duckG.review.service.ReviewService;
import com.duckG.review.service.ReviewServiceImpl;
import com.duckG.vo.ProductVO;
import com.duckG.vo.ReviewVO;

public class MainControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		ProductService psvc = new ProductServiceImpl();
		ReviewService rsvc = new ReviewServiceImpl();

		List<String> categoryList = psvc.categorList();
		List<ProductVO> lastProductList = psvc.lastestProduct();
		List<ProductVO> topProductList = psvc.popularProduct();
		List<ReviewVO> topReviewList = rsvc.lastestReview();
		
		req.setAttribute("categoryList", categoryList);
		req.setAttribute("lastproductList", lastProductList);
		req.setAttribute("topproductList", topProductList);
		req.setAttribute("topreviewList", topReviewList);

		req.getRequestDispatcher("main/main.tiles").forward(req, resp);
	}

}
