package com.duckG.review.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.duckG.DataSource;
import com.duckG.product.mapper.ProductMapper;
import com.duckG.review.mapper.ReviewMapper;
import com.duckG.vo.ReviewVO;

public class ReviewServiceImpl implements ReviewService{
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ReviewMapper mapper = sqlSession.getMapper(ReviewMapper.class);
	
	@Override
	public List<ReviewVO> selectReview(int pno) {
		// TODO Auto-generated method stub
		return mapper.selectReview(pno);
	}

}
