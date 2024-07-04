package com.duckG.comeon;

import org.apache.ibatis.session.SqlSession;

import com.duckG.DataSource;
import com.duckG.cart.mapper.CartMapper;
import com.duckG.vo.CartVO;

public class Apptest {
	public static void main(String[] args) {
		SqlSession sqlSession = DataSource.getInstance().openSession(true);
		CartMapper mapper = sqlSession.getMapper(CartMapper.class);

		CartVO cvo = new CartVO();

		cvo.setCount(1);
		cvo.setMemberId("admin");
		cvo.setProductNo(10);

		if(mapper.addCart(cvo) == 1) {
			System.out.println("데이터 삽입 성공");
		} else {
			System.out.println("데이터 삽입 실패");
		}

	}
}
