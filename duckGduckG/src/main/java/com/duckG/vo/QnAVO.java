package com.duckG.vo;

import lombok.Data;

@Data
public class QnAVO {
	private int qnaNo;
	private int productNo;
	private String member_id;
	private String qnaContent;
	private String qnaTitle;
	private String qnaAnswer;
}
