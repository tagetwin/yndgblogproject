package com.yndg.board.Action.User;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yndg.board.Action.Action;
import com.yndg.board.Model.User;
import com.yndg.board.dao.UserDao;
import com.yndg.board.util.Script;

public class UserProfileProcAction implements Action {

	@Override
	public void excute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		if(req.getParameter("password") == null ||
				req.getParameter("email") == null ||
				req.getParameter("address") == null ||
				req.getParameter("password").equals("") ||
				req.getParameter("email").equals("") ||
				req.getParameter("address").equals("")) {
			Script.back(resp, "잘못된 접근입니다.");
			return;
		}
		
		User user = (User) req.getSession().getAttribute("user");
		int id = user.getId();
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		String address = req.getParameter("address");
		
		UserDao userDao = UserDao.getInstance();
		int result = userDao.update(password, email, address, id);
		
		if(result == 1) {
			User principal = userDao.findById(id);
			HttpSession session = req.getSession();
			session.setAttribute("user", principal);
			
			Script.href(resp, "회원정보 수정 완료", "/user?cmd=profile");
		} else {
			Script.back(resp, "회원정보 수정에 실패하였습니다.");
		}
		
	}

}
