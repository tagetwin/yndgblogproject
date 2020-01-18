package com.yndg.board.Action.User;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yndg.board.Action.Action;
import com.yndg.board.dao.UserDao;
import com.yndg.board.util.Script;

public class UserJoinProcAction implements Action {

	@Override
	public void excute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if(
				req.getParameter("username")== null ||
				req.getParameter("password") == null ||
				req.getParameter("email") == null ||
//				req.getParameter("address") == null ||
				req.getParameter("username").equals("") ||
				req.getParameter("password").equals("") ||
				req.getParameter("email").equals("")
//				req.getParameter("address").equals("")
		) {
			resp.sendRedirect("/");
			return;
		}
		
//		1번
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
//		String address = req.getParameter("address");
		
		System.out.println("username: " + username);
		System.out.println("password: " + password);
		System.out.println("email: " + email);
//		System.out.println("address: " + address);

		UserDao userDao = UserDao.getInstance();
//		int result = userDao.save(username, password, email, address);
		int result = userDao.save(username, password, email);
		
		if (result == 1) {
			System.out.println("가입성공");
			RequestDispatcher dis = req.getRequestDispatcher("/");
			dis.forward(req, resp);
			
		} else {
			Script.back(resp, "회원가입 실패");
		}
		
	}
		
}
