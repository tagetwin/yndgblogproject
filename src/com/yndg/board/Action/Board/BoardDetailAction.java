package com.yndg.board.Action.Board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yndg.board.Action.Action;
import com.yndg.board.dao.BoardDao;
import com.yndg.board.util.Script;
import com.yndg.board.viewmodel.BoardUserVM;


public class BoardDetailAction implements Action {

	@Override
	public void excute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if
		(
			req.getParameter("id") == null ||
			req.getParameter("id").equals("")
		) {
			Script.back(resp, "잘못된 접근입니다");
			return;
		}
		
		int id = Integer.parseInt(req.getParameter("id"));
		BoardDao boardDao = BoardDao.getInstance();
		BoardUserVM buVM = boardDao.findById(id);
		
		if(buVM != null) {
			req.setAttribute("buVM", buVM);
			RequestDispatcher dis = req.getRequestDispatcher("/board/detail.jsp");
			dis.forward(req, resp);
		}
		Script.back(resp, "글이 존재하지 않습니다");
	}

}
