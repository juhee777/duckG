package com.duckG.vo;

import java.util.Date;

import lombok.Data;

@Data
public class OrderVO {
	private int orderNo;
	private String memberId;
	private int productNo;
	private int count;
	private int howMuch;
	private Date boughtDate;
	private int orderSta;
	private String orderPak;
	
	private String image;
	private String productName;
	private int price;
	private int sales;
	
	private String memberName;
	private String phone;
	private String addrNo;
	private String addrLocal;
	private String addrRoad;
	private String addrDet;
	
	private String ROWNUM;
	
}
