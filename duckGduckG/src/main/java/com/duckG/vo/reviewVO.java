package com.duckG.vo;

import lombok.Data;
import oracle.sql.DATE;

@Data
public class reviewVO {
	private int orderNo;
	private String memberId;
	private int productNo;
	private int count;
	private int howMuch;
	private DATE boughtDate;
}
