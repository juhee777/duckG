package com.duckG.jjim.mapper;

import java.util.List;

import com.duckG.vo.JjimVO;

public interface JjimMapper {
	List<JjimVO> selectJjim(int pno);
	
	int addJjim(JjimVO jvo);
	
	int delJjim(JjimVO jvo);

}
