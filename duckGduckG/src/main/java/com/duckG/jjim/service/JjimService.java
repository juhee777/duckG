package com.duckG.jjim.service;

import java.util.List;

import com.duckG.vo.JjimVO;

public interface JjimService {
	List<JjimVO> selectJjim(String uid, int page);
	
	boolean jjimList(JjimVO jvo);

	boolean addJjim(JjimVO jvo);

	boolean delJjim(JjimVO jvo);
	
	int jjimTotal(String uid);

}
