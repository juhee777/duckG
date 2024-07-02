package com.duckG.vo;

import lombok.Data;

@Data
public class ProductVO {
	private int productNo;
	private String memberId;
	private String productName;
	private String image;
	private int price;
	private String categoryName;
	private String createDate;
	private int stock;
	private String mainInfo;
	private String semiInfo;
	private double discount;
	private int sales;
}
