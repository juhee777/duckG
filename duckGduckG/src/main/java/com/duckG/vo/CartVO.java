package com.duckG.vo;

import lombok.Data;

@Data
public class CartVO {

	private int cartNo;
	private int productNo;
	private String memberId;
	private int count;
	private String image;
	private String productName;
	private int price;
	private String mainInfo;
	private int discount;
}
