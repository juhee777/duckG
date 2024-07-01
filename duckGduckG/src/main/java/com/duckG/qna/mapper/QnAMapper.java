package com.duckG.qna.mapper;

import java.util.List;

import com.duckG.vo.QnAVO;

public interface QnAMapper {
	List<QnAVO> selectQnA(int pno);

	int addQnA(QnAVO vo);

	int delQnA(int pno);

	int updateQnA(QnAVO vo);

}
