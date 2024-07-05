package com.duckG.vo;

import lombok.Data;

@Data
public class PageDTO {
	// 현재페이지 기준으로 보여주기
	private int startPage, endPage;
	// 이전 페이지가 있는지 이후 페이지가 있는지 계산
	private boolean prev, next;
	private int page;

	// 생성자
	public PageDTO(int page, int total) {
		this.page = page;
		this.endPage = (int) (Math.ceil(page / 10.0) * 10);
		this.startPage = this.endPage - 9;

		int realEnd = (int) Math.ceil(total / 5.0); // 페이지 계산
		this.endPage = this.endPage > realEnd ? realEnd : this.endPage;

		this.prev = this.startPage > 1;
		this.next = this.endPage == realEnd ? false : true;

	}

}
