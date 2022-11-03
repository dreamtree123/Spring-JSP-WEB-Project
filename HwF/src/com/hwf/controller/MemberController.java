package com.hwf.controller;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		}
	}

	////////////////////////////////////////////////////////////////////
	// ��ü��ȸ
	////////////////////////////////////////////////////////////////////
	public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("/views/jsp/login.jsp").forward(request, response);

	}

	public void logincheck(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String memberid = request.getParameter("memberid");
		String memberpwd = request.getParameter("memberpwd");

		MemberDTO dto = new MemberDTO(memberid, memberpwd); // ȸ�� id�� pwd�� ����

		boolean check = MemberDao.checkMember(dto);

		// �α����� �Ǹ�
		if (check == true) {
			HttpSession session;
			session = request.getSession();

			// �α��� ���ǰ� ����
			session.setAttribute("memberid", memberid);
			System.out.println("login memberid Ȯ��: " + session.getAttribute("memberid"));
			// ���� �����ð� ����(�ʴ���) 20��
			session.setMaxInactiveInterval(20 * 60);

			request.getRequestDispatcher("/Main.jsp").forward(request, response);
		} else {
			response.sendRedirect("views/jsp/login.jsp");
		}

	}

	public void join(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("/views/jsp/join.jsp").forward(request, response);

	}

	public void mypage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("/views/jsp/mypage.jsp").forward(request, response);

	}

	////////////////////////////////////////////////////////////////////
	// ��ü��ȸ ��
	////////////////////////////////////////////////////////////////////
}
