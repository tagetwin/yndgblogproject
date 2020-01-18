package com.yndg.board.Action.User;

import java.io.IOException;
import java.util.Optional;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yndg.board.Action.Action;
import com.yndg.board.Model.User;
import com.yndg.board.dao.UserDao;
import com.yndg.board.util.Script;

public class UserLoginProcAction implements Action {

	@Override
	public void excute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if(
				req.getParameter("username") == null ||
				req.getParameter("password") == null
		  )	 {
			resp.sendRedirect("/");
			return; 
		}
		
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
//		String rememberMe = 
//				Optional.ofNullable(req.getParameter("rememberMe")).orElse("off");
				
		System.out.println("username: " + username);
		System.out.println("password: " + password);
//		System.out.println("rememberMe: " + rememberMe);
		
		UserDao userDao = UserDao.getInstance();
		User user = userDao.login(username, password);
		
//		if(rememberMe.equals("on")) {
//			Cookie cookie = new Cookie("usernameCookie", username);
//			cookie.setMaxAge(60*60*24*7); // 일주일 보관
//			resp.addCookie(cookie);
//		}else {
//			Cookie cookie = new Cookie("usernameCookie", "");
//			cookie.setMaxAge(0); // 쿠키값을 공백으로 받고 시간을 0초로 해서 바로 초기화
//			resp.addCookie(cookie);
//		}
		
		if (user != null) {
			System.out.println("로그인 성공");
			HttpSession session = req.getSession();
			session.setAttribute("principle", user);
			RequestDispatcher dis = req.getRequestDispatcher("index.jsp");
			dis.forward(req, resp);
			
		} else {
			Script.back(resp, "로그인 실패");
		}
		
	}
		
}
