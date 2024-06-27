package com.duckG.vo;

import lombok.Data;
import oracle.sql.DATE;

@Data
public class productVO {
	private int productNo;
	private String memberId;
	private String productName;
	private String image;
	private int price;
	private String categoryName;
	private DATE createDate;
	private int stock;
	private String mainInfo;
	private String semiInfo;
	private int discount;
	private int sales;
}
