package com.duckG.product.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duckG.Control;
import com.duckG.product.service.ProductService;
import com.duckG.product.service.ProductServiceImpl;
import com.duckG.vo.ProductVO;
import com.duckG.vo.SearchVO;
import com.duckG.vo.pageDTO;


public class ProductForm implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String kw = req.getParameter("keyword");
		String category = req.getParameter("category");
		String page = req.getParameter("page");
		
		page = page == null ? "1" : page; //페이지 값이 널이면 1, 아니면 원래 페이지
		
		ProductService svc = new ProductServiceImpl();
		List<ProductVO> products = svc.productList();
		
		SearchVO search = new SearchVO(Integer.parseInt(page), category, kw);
		
		if (kw != null && !kw.trim().isEmpty()) {
            SearchVO searchVO = new SearchVO(Integer.parseInt(page), category, kw);
            searchVO.setKeyword(kw);
            products = svc.selectProduct(search);
        } else if (category != null && !category.trim().isEmpty()) {
            products = svc.selectCategory(category);
        } else {
            products = svc.productListPaging(search);
        }
		
		req.setAttribute("products", products);
		req.setAttribute("search", kw);
		req.setAttribute("category", category);
		
		//paging계산
		int total = svc.productTotal(search);
		pageDTO dto = new pageDTO(Integer.parseInt(page), total);
		req.setAttribute("paging", dto);
		
		
		
		req.getRequestDispatcher("search/productForm.tiles").forward(req, resp);
	}

}
