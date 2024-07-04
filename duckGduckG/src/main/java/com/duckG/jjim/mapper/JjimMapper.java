package com.duckG.jjim.mapper;

import java.util.List;

import com.duckG.vo.JjimVO;

public interface JjimMapper {
	List<JjimVO> selectJjim(String uid);
	
	int jjimList(JjimVO jvo);
	
	int addJjim(JjimVO jvo);
	
	int delJjim(JjimVO jvo);

}
