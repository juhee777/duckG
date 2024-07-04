package com.duckG;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duckG.cart.controller.AddCart;
import com.duckG.cart.controller.CartForm;
import com.duckG.cart.controller.CheckCart;
import com.duckG.cart.controller.DeleteCart;
import com.duckG.cart.controller.SelectCart;
import com.duckG.cart.controller.UpdateCart;
import com.duckG.jjim.controller.AddJjim;
import com.duckG.jjim.controller.DeleteJjim;
import com.duckG.jjim.controller.JjimForm;
import com.duckG.jjim.controller.SelectJjim;
import com.duckG.jjim.controller.UpdateJjim;
import com.duckG.main.MainControl;
import com.duckG.member.controller.AddMember;
import com.duckG.member.controller.ChangePw;
import com.duckG.member.controller.ChangePwFin;
import com.duckG.member.controller.DeleteMember;
import com.duckG.member.controller.Inquire;
import com.duckG.member.controller.LoginControl;
import com.duckG.member.controller.LoginForm;
import com.duckG.member.controller.LogoutControl;
import com.duckG.member.controller.MemberList;
import com.duckG.member.controller.MyInfo;
import com.duckG.member.controller.RegistForm;
import com.duckG.member.controller.UpdateMember;
import com.duckG.member.controller.updateMemberFin;
import com.duckG.order.controller.AddOrder;
import com.duckG.order.controller.DeleteOrder;
import com.duckG.order.controller.OrderForm;
import com.duckG.order.controller.SelectOrder;
import com.duckG.order.controller.UpdateOrder;
import com.duckG.product.controller.AddProduct;
import com.duckG.product.controller.CategoryList;
import com.duckG.product.controller.DeleteProduct;
import com.duckG.product.controller.ProductDetailForm;
import com.duckG.product.controller.ProductForm;
import com.duckG.product.controller.SelectProdcut;
import com.duckG.product.controller.UpdateProdcut;
import com.duckG.qna.controller.AddQnA;
import com.duckG.qna.controller.DeleteQnA;
import com.duckG.qna.controller.QnAForm;
import com.duckG.qna.controller.SelectQnA;
import com.duckG.qna.controller.UpdateQnA;
import com.duckG.review.controller.AddReview;
import com.duckG.review.controller.SelectReview;

// front -> 요청url(*.do) - 실행컨트롤 매칭
// main.do -> FrontController -> /WEB-INF/public/main.jsp
// 객체생성 -> init -> service -> destroy
public class FrontController extends HttpServlet {

	private Map<String, Control> map; // key : url, value : control

	public FrontController() {
		map = new HashMap<String, Control>();
	}

	@Override
	public void init() throws ServletException {
		// 홈페이지
		map.put("/main.do", new MainControl());
		
		//로그인
		map.put("/loginForm.do", new LoginForm());	//로그인창
		map.put("/login.do", new LoginControl());	//로그인
		map.put("/logout.do", new LogoutControl());	//로그아웃
		map.put("/registForm.do", new RegistForm());	//회원가입창
		
		//회원관리
		map.put("/memberList.do", new MemberList());		//모든 회원조회
		map.put("/addMember.do", new AddMember());			//회원 추가
		
		
		//정보수정 완료
		map.put("/updateMember.do", new UpdateMember());	//회원정보 갱신
		map.put("/updateMemberFin.do", new updateMemberFin()); //회원 정보 업데이트 완료
		
		//비밀번호 변경
		map.put("/ChangePw.do", new ChangePw());			//비밀번호 변경
		map.put("/ChangePwFin.do", new ChangePwFin());
		
		//1:1 문의
		map.put("/Inquire.do", new Inquire());				//1:1 문의
				
		//마이페이지, 리뷰
		map.put("/MyInfo.do", new MyInfo());
		map.put("/SelectOrder.do" ,new SelectOrder());
		map.put("/UpdateOrder.do", new UpdateOrder());
		map.put("/AddReview.do", new AddReview());
		
		//탈퇴
		map.put("/deleteMember.do", new DeleteMember());	
		
		
		// 리뷰
		map.put("/selectReview.do" ,new SelectReview());      //제품 선택
		
		
		//제품관리
		map.put("/productForm.do", new ProductForm());		//제품상세정보 페이지
		map.put("/selectProduct.do", new SelectProdcut());	//제품 선택
		map.put("/addProduct.do", new AddProduct());		//제품 추가
		map.put("/deleteProdcut", new DeleteProduct());		//제품 제거
		map.put("/updateProdcut", new UpdateProdcut());		//제품 정보 업데이트
		map.put("/categoryList.do", new CategoryList());	//카테고리 가져오기

		// 제품상세
		map.put("/productDetailForm.do", new ProductDetailForm()); // 제품상세정보 페이지
		
		//찜관리
		map.put("/jjimForm.do", new JjimForm());			//찜상세정보 페이지
		map.put("/selectJjim.do", new SelectJjim());		//찜 선택
		map.put("/addJjim.do", new AddJjim());				//찜 추가
		map.put("/deleteJjim.do", new DeleteJjim());		//찜 제거
		map.put("/updateJjim.do", new UpdateJjim());		//찜 정보 업데이트
		
		//카트관리
		map.put("/cartForm.do", new CartForm());			//카트상세정보 페이지
		map.put("/selectCart.do", new SelectCart());		//카트 선택
		map.put("/addCart.do", new AddCart());				//카트 추가
		map.put("/deleteCart.do", new DeleteCart());		//카트 제거
		map.put("/updateCart.do", new UpdateCart());		//카트 정보 업데이트
		map.put("/checkCart.do", new CheckCart());		//카트 정보 업데이트
		
		//Q&A관리
		map.put("/qnaForm.do", new QnAForm());			//QnA상세정보 페이지
		map.put("/selectQnA.do", new SelectQnA());		//QnA 선택
		map.put("/addQnA.do", new AddQnA());			//QnA 추가
		map.put("/deleteQnA.do", new DeleteQnA());		//QnA 제거
		map.put("/updateQnA.do", new UpdateQnA());		//QnA 정보 업데이트
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String context = req.getContextPath();
		String page = uri.substring(context.length());
		Control result = map.get(page);
		result.exec(req, resp);
	}
}
