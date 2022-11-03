package com.hwf.controller;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hwf.dao.MemberDAO;
import com.hwf.model.MemberDTO;



@Controller //��Ʈ�ѷ� ��
public class MemberController2 {


	@Inject
	MemberDAO MemberDao; 
	
	
	@RequestMapping("/") //���� ������
	public String home(Model model) {
		model.addAttribute("key", "������ ��ť��Ƽ �׽�Ʈ �Դϴ�");
		return "home"; //home.jsp�� �̵�
	}
	//�α��� �������� �̵�
	@RequestMapping("/user/login.do")
	public String login() {
		return "user/login";
	}
	//ȸ������ �������� �̵�
	@RequestMapping("/user/join.do")
	public String join() {
		return "user/join";
	}
	//ȸ������ ó�� 	
	@RequestMapping("/user/insertUser.do")
	public String insertUser(@RequestParam String userid, 
			@RequestParam String passwd,
			@RequestParam String name, 
			@RequestParam String authority) {
		
		return "user/login"; // login.jsp�� �̵�
	}
	//���� �������� �̵� �ϸ�ȴ�
	//������ ���� ������ (�׽�Ʈ��)
	   @RequestMapping("/main")
	   public String admin(HttpSession session) {
	      if(session.getAttribute("memberid").equals("ADMIN")) return "admin/main";
	      else if(session.getAttribute("memberid").equals("admin")) return "admin/main";
	      else return "main";
	   }
	
	//������ ���� ������	
	@RequestMapping("/user/")
	public String user() {
		return "user/userMain";
	}
	
	//�α���
	public void authenticationMember(HttpServletRequest request, HttpServletResponse response) throws IOException {
	      String memberid = request.getParameter("memberid");
	      String memberpwd = request.getParameter("memberpwd");
	      
	      
	    
	      MemberDTO dto = new MemberDTO(memberid, memberpwd);  //ȸ�� id�� pwd�� ����
	      
	      boolean check = MemberDao.checkMember(dto);
	      
	      //�α����� �Ǹ�
	      if(check == true) {
	         HttpSession session;
	         session = request.getSession();
	   
	         //�α��� ���ǰ� ����
	         session.setAttribute("memberid", memberid);
	         System.out.println("login memberid Ȯ��: " + session.getAttribute("memberid"));
	         //���� �����ð� ����(�ʴ���) 20��
	         session.setMaxInactiveInterval(20*60);
	         
	         response.sendRedirect("/web/main");
	      } else {
	         response.sendRedirect("/web/member?cmd=login");
	      }
	   }


	}
	











