package com.duckG.jjim.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.duckG.product.mapper.ProductMapper;
import com.duckG.vo.JjimVO;
import com.duckG.DataSource;
import com.duckG.jjim.mapper.JjimMapper;

public class JjimServiceImpl implements JjimService{
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	JjimMapper mapper = sqlSession.getMapper(JjimMapper.class);
	
	@Override
	public List<JjimVO> selectJjim(String uid) {
		// TODO Auto-generated method stub
		return mapper.selectJjim(uid);
	}
	
	@Override
	public boolean addJjim(JjimVO jvo) {
		// TODO Auto-generated method stub
		return mapper.addJjim(jvo) == 1;
	}
	
	@Override
	public boolean delJjim(JjimVO jvo) {
		// TODO Auto-generated method stub
		return mapper.delJjim(jvo) == 1;
	}
	
	@Override
	public boolean jjimList(JjimVO jvo) {
		// TODO Auto-generated method stub
		return mapper.jjimList(jvo) == 0;
	}
	
	

}
