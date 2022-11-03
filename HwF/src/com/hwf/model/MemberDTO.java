package com.hwf.model;

import org.springframework.beans.factory.annotation.Autowired;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data

public class MemberDTO {

	private String memberid; // ���̵�
	private String memberpwd; // ���
	private String membername; // �̸�
	private String membersex; // ����

	

	@Autowired
	public MemberDTO(String memberid, String memberpwd) {
		this.memberid = memberid;
		this.memberpwd = memberpwd;
	}

}
