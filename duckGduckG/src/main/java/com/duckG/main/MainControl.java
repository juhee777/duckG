package com.duckG.main;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duckG.Control;
import com.duckG.product.service.ProductService;
import com.duckG.product.service.ProductServiceImpl;

public class MainControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		ProductService svc = new ProductServiceImpl();

		List<String> categoryList = svc.categorList();
		req.setAttribute("categoryList", categoryList);

		req.getRequestDispatcher("main/main.tiles").forward(req, resp);
	}

}
