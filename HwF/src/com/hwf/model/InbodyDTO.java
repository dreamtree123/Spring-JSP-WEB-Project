package com.hwf.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data

public class InbodyDTO {
	private int inbodyid; //�ιٵ� id
	private int memberheight ; // Ű
	private int memberweight; //������
	private String bodymuscle; //������
	private String bodyfat; //ü���淮
	private String inbodyresult;//���� ��� bmi
	private String link; // ��� ��ǰ ��õ��
	private String memberid;//ȸ��id (�ܷ�Ű)

	
	public InbodyDTO(int memberheight,int memberweight,String bodymuscle,String bodyfat,String inbodyresult,String link,String memberid) {
		this.memberheight=memberheight;
		this.memberweight=memberweight;
		this.bodymuscle=bodymuscle;
		this.bodyfat=bodyfat;
		this.inbodyresult=inbodyresult;
		this.link=link;
		this.memberid=memberid;
	}
	
}
