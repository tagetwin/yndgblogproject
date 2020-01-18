package com.yndg.board.Action.Board;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yndg.board.Action.Action;
import com.yndg.board.Model.Board;
import com.yndg.board.dao.BoardDao;

public class BoardListAction implements Action {

	@Override
	public void excute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BoardDao boardDao = BoardDao.getInstance();
		List<Board> boards = boardDao.findAll();

		req.setAttribute("boards", boards);

		RequestDispatcher dis = req.getRequestDispatcher("/board/list.jsp");
		dis.forward(req, resp);

	}
}
