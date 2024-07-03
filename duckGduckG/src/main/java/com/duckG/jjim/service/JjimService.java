package com.duckG.jjim.service;

import java.util.List;

import com.duckG.vo.JjimVO;

public interface JjimService {
	List<JjimVO> selectJjim(int pno);

	boolean addJjim(JjimVO jvo);

	boolean delJjim(JjimVO jvo);

}
