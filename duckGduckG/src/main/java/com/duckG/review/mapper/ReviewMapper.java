package com.duckG.review.mapper;

import java.util.List;

import com.duckG.vo.ReviewVO;

public interface ReviewMapper {
	List<ReviewVO> selectReview(int pno);

}
