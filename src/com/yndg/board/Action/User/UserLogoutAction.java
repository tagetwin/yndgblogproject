package com.yndg.board.Action.User;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yndg.board.Action.Action;

public class UserLogoutAction implements Action{

	@Override
	public void excute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		session.invalidate();
		
		RequestDispatcher dis = req.getRequestDispatcher("index.jsp");
		dis.forward(req, resp);

	}

}
