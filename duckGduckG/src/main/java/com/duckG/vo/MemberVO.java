package com.duckG.vo;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {
	private String memberId;
	private int memberNo;
	private String memberPw;
	private String memberName;
	private String email;
	private String phone;
	private String address;
	private Date createdDate;
	private String management;
}
