package com.hwf.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data

public class SurveyDTO {

	private String surveyid;
	private String goal ; // ��ǥ (����/����)
	private String currentstate; //���� ���� (��/����/�ּ�)
	private String currentintke; //���� ���� ���� (����/����/����)
	private String link; //��� ��ǰ ��õ��
	private String memberid; // ���̵�ȸ��id (�ܷ�Ű)


	public SurveyDTO(String goal,String currentstate,String currentintke,String link,String memberid) {
		this.goal= goal;
		this.currentstate=currentstate;
		this.currentintke= currentintke;
		this.link= link;
		this.memberid= memberid;
		
	}

}
