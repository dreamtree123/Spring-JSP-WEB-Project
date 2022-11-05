package com.hwf.controller;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.hwf.dao.MemberDAO;
import com.hwf.model.MemberDTO;

@WebServlet("/Member")
public class MemberController extends HttpServlet {
	
	@Inject
	MemberDAO MemberDao;

	public MemberController() {
	}

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setCharacterEncoding("UTF-8");

		String cmd = request.getParameter("cmd");

		System.out.println("cmd : " + cmd);
		if (cmd.equals("login")) {
			login(request, response);
		} else if (cmd.equals("logincheck")) {
			logincheck(request, response);
		} else if (cmd.equals("join")) {
			join(request, response);
		} else if (cmd.equals("mypage")) {
			mypage(request, response);
		} else if (cmd.equals("insertmember")) {
			insertmember(request, response);
		}  else if (cmd.equals("logout")) {
			logout(request, response);
		}else
			
			System.out.println("service code error");
	}

	////////////////////////////////////////////////////////////////////
	// ��ü��ȸ
	////////////////////////////////////////////////////////////////////
	public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session;
			session = request.getSession();
			String name = session .getAttribute("membername1").toString();
			System.out.println(name);
			if (name.equalsIgnoreCase("ȯ���մϴ�. ����"))
			request.getRequestDispatcher("/views/jsp/login.jsp").forward(request, response);
		} catch (Exception e) {
			//null �̸� ���� �߻� = �α��� ��� ����
			System.out.println("login error");
			request.getRequestDispatcher("/views/jsp/login.jsp").forward(request, response);
		}  
		request.getRequestDispatcher("/views/jsp/mypage.jsp").forward(request, response);
	}

	public void logincheck(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String memberid = request.getParameter("memberid");
		String memberpwd = request.getParameter("memberpwd");

		MemberDTO dto = new MemberDTO(memberid, memberpwd); // ȸ�� id�� pwd�� ����

		MemberDAO dao = new MemberDAO();

		// boolean check = dao.checkMemberb(dto);
		// List<MemberDTO> list = dao.checkMember(dto);

		MemberDTO dto2 = dao.checkMember(dto);
		System.out.println("�α��� ���� �ҷ����� ");
		System.out.println(dto2.getMemberid().toString());

		HttpSession session;
		session = request.getSession();
		
		
		
		
		
		if (memberpwd.equals(dto2.getMemberpwd()))// �α��� ����
		{

			// �α����� �Ǹ�
			System.out.println("�α��� ���� ");
			
			
			String membersex = "";

			if (dto2.getMembersex().equals("1"))
				membersex = "����";
			else
				membersex = "����";

			// data save

			
			
			
	        session.setAttribute("memberid", memberid);
	        session.setAttribute("membername", dto2.getMembername());
	        session.setAttribute("membername1", dto2.getMembername()+"�� ȯ���մϴ�.");
	        session.setAttribute("membersex", membersex);
	        
	        System.out.println("memberid Ȯ��: " + session.getAttribute("memberid").toString());
	        System.out.println("membername: " +  session.getAttribute("membername").toString());
	        System.out.println("membersex: " +  session.getAttribute("membersex").toString());
	        
	        //���� �����ð� ����(�ʴ���) 20��
	        session.setMaxInactiveInterval(20*60);
			
			
		


			request.getRequestDispatcher("/Main.jsp").forward(request, response);
		} else {
			System.out.println("��й�ȣ�� Ʋ�Ƚ��ϴ�.");
			request.getRequestDispatcher("/views/jsp/login.jsp").forward(request, response);
		}

	}

	public void join(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("/views/jsp/join.jsp").forward(request, response);

	}

	public void insertmember(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String memberid = request.getParameter("userid");
		String memberpwd = request.getParameter("passwd");
		String membername = request.getParameter("name");
		String membersex = request.getParameter("sex");

		MemberDTO dto = new MemberDTO(memberid, memberpwd, membername, membersex); // ȸ�� id�� pwd�� ����

		MemberDAO dao = new MemberDAO();
		System.out.println(dto.toString());

		int rowcount = dao.insert(dto);

		if (rowcount > 0) {
			// ����
			request.getRequestDispatcher("/views/jsp/login.jsp").forward(request, response);
		} else {
			System.out.println("ȸ������ ����");
			request.getRequestDispatcher("/views/jsp/join.jsp").forward(request, response);
		}
	}

	public void mypage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("/views/jsp/mypage.jsp").forward(request, response);

	}
	public void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {HttpSession session;
			session = request.getSession();
			session.setAttribute("membername1","ȯ���մϴ�. ����");
			

		} catch (Exception e) {
			request.getRequestDispatcher("/views/jsp/login.jsp").forward(request, response);
		}  
	
		request.getRequestDispatcher("/Main.jsp").forward(request, response);
	}
	////////////////////////////////////////////////////////////////////
	// ��ü��ȸ ��
	////////////////////////////////////////////////////////////////////
}
