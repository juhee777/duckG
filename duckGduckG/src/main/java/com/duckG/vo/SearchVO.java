package com.duckG.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SearchVO {
	private int page;
	private String keyword;
	private String category;
	
}
