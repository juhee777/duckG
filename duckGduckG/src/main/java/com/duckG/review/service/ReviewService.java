package com.duckG.review.service;

import java.util.List;

import com.duckG.vo.ReviewVO;

public interface ReviewService {
	List<ReviewVO> selectReview(int pno);

}
