package com.duckG.review.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.duckG.vo.ReviewVO;

public interface ReviewMapper {
	List<ReviewVO> selectReview(int pno);
	List<ReviewVO> selectReviewPage(@Param("productNo") int pno, @Param("page") int page);
	int AddReview(ReviewVO rvo);

	List<ReviewVO> lastestReview();	//최근리뷰 9건
}
