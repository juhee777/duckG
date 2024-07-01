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
	private Date createdDate;
	private int orderSta;
	private String orderPak;
}
