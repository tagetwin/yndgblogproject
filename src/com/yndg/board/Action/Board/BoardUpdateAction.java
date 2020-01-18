package com.yndg.board.Action.Board;

// userId = 1
// http://localhost:8000/board?cmd=update?id3&userId=1
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yndg.board.Action.Action;
import com.yndg.board.Model.User;
import com.yndg.board.dao.BoardDao;
import com.yndg.board.util.Script;
import com.yndg.board.viewmodel.BoardUserVM;

public class BoardUpdateAction implements Action {

	@Override
	public void excute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 1. 파라메터 받기
				if
				(
						req.getParameter("id") == null ||
						req.getParameter("userId") == null ||
						req.getParameter("id").equals("")  ||
						req.getParameter("userId").equals("") 
				)
				{
					Script.back(resp, "up잘못된 접근입니다.");
					return;
				}
				
				int id = Integer.parseInt(req.getParameter("id"));
				int userId = Integer.parseInt(req.getParameter("userId"));
				
				System.out.println(id);
				System.out.println(userId);
				
				User principal = (User) req.getSession().getAttribute("user");
				
				if(userId != principal.getId()) {
					Script.back(resp, "권한이 없습니다.");
					return;
				}
						
				BoardDao boardDao = BoardDao.getInstance();
				BoardUserVM buVM = boardDao.findById(id);
				
				if(buVM != null) {
					req.setAttribute("buVM", buVM);
				}else {
					Script.back(resp, "해당 게시글이 없습니다.");
					return;
				}
				
				RequestDispatcher dis = req.getRequestDispatcher("/board/update.jsp");
				dis.forward(req, resp);
	}
}
