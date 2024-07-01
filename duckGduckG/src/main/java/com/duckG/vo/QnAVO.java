package com.duckG.vo;

import lombok.Data;

@Data
public class QnAVO {
	private int qnaNo;
	private int productNo;
	private String memberId;
	private String qnaContent;
	private String qnaTitle;
	private String qnaAnswer;
}
