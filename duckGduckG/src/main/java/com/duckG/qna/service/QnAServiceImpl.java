package com.duckG.qna.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.duckG.product.mapper.ProductMapper;
import com.duckG.qna.mapper.QnAMapper;
import com.duckG.vo.ProductVO;
import com.duckG.vo.QnAVO;
import com.duckG.DataSource;

public class QnAServiceImpl implements QnAService{
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	QnAMapper mapper = sqlSession.getMapper(QnAMapper.class);
	
	@Override
	public List<QnAVO> selectQnA(int pno) {
		// TODO Auto-generated method stub
		return mapper.selectQnA(pno);
	}
	
	@Override
	public boolean addQnA(QnAVO vo) {
		// TODO Auto-generated method stub
		return mapper.addQnA(vo) == 1;
	}
	
	@Override
	public boolean delQnA(int pno) {
		// TODO Auto-generated method stub
		return mapper.delQnA(pno) == 1;
	}
	
	@Override
	public boolean updateQnA(QnAVO vo) {
		// TODO Auto-generated method stub
		return mapper.updateQnA(vo) == 1;
	}
}
