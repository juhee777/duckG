package com.duckG.qna.service;

import java.util.List;

import com.duckG.vo.ProductVO;
import com.duckG.vo.QnAVO;

public interface QnAService {
	List<QnAVO> selectQnA(int pno);
	
	boolean addQnA(QnAVO vo);

	boolean delQnA(int pno);

	boolean updateQnA(QnAVO vo);

}
