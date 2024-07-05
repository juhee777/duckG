package com.duckG.jjim.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.duckG.vo.JjimVO;

public interface JjimMapper {
	List<JjimVO> selectJjim(@Param("memberId") String uid, @Param("page") int page);
	
	int jjimList(JjimVO jvo);
	
	int addJjim(JjimVO jvo);
	
	int delJjim(JjimVO jvo);
	
	int jjimTotal(String uid);

}
