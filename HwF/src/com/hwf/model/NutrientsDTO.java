package com.hwf.model;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class NutrientsDTO {

	private int nutrientsID; // ������ ��ȣ 
	private String nutrientsName; // ������ �̸� 
	private int nutrientsPrice; // ������ ���� 
	private int nutrientsCategory; // ������ ī�װ� 
	private String nutrientsIMG; // ������ ���� �ּ�
	private String nutrientsDetail; // ������ ���� 
	private String nutrientsDOM; // ������ ������¥ 
	private String dailyInTake; // ������ �Ϸ翡 �Ծ�� �ϴ� ���� 
	private int numperbottle; // ������ �Ѻ��� �ִ� ���� 
	private int remainingNum; // ���� �ܿ� ���� 
	private String nutrientsTestLink; // �ιٵ�, ���� ���

}
