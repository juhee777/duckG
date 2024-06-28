package com.duckG.vo;

import lombok.Data;
import oracle.sql.DATE;

@Data
public class ReviewVO {
	private int reviewNo;
	private int productNo;
	private String memberId;
	private String reviewContent;
	private int reviewScore;
	private String reviewImage;
	private Data createDate;	
}
