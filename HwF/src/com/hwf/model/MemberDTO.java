package com.hwf.model;

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

	

	public MemberDTO(String memberid, String memberpwd) {
		this.memberid = memberid;
		this.memberpwd = memberpwd;
	}


}
