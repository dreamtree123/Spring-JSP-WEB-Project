package com.hwf.dao;


import java.util.Map;

import com.hwf.model.MemberDTO;

public interface MemberDAO {
	//ȸ������ ó��
	public int insertUser(Map<String,String> map);
	//�α��� ó��
	public Map<String,Object> selectUser(String userid);
	//
	public boolean checkMember(MemberDTO dto);
}
