package com.duckG.review.mapper;

import java.util.List;

import com.duckG.vo.ReviewVO;

public interface ReviewMapper {
	List<ReviewVO> selectReview(int pno);
	int AddReview(ReviewVO rvo);

	List<ReviewVO> lastestReview();	//최근리뷰 9건
}
