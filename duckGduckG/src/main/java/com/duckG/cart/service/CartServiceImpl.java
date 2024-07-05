package com.duckG.cart.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.duckG.DataSource;
import com.duckG.cart.mapper.CartMapper;
import com.duckG.vo.CartVO;

public class CartServiceImpl implements CartService{
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	CartMapper mapper = sqlSession.getMapper(CartMapper.class);

	@Override
	public List<CartVO> cartList(String memberId) {
		return mapper.cartList(memberId);
	}
	
	@Override
	public boolean addCart(CartVO cvo) {
		return mapper.addCart(cvo) == 1;
	}
	
	@Override
	public boolean deleteCart(int cartNo) {
		return mapper.deleteCart(cartNo) == 1;
	}
	
	@Override
	public boolean updateCart(CartVO cvo) {
		return mapper.modifyCart(cvo) == 1;
	}
	

	@Override

	public boolean checkCart(CartVO cvo) {

		return mapper.checkCart(cvo) == 0;
	}
	
	@Override
	public boolean checkUpdateCart(CartVO cvo) {
		return mapper.checkUpdateCart(cvo) == 1;
	}

	@Override
	public List<CartVO> iconCnt(CartVO cvo) {
		return mapper.checkCart(cvo);
	}
	
	

	
}
