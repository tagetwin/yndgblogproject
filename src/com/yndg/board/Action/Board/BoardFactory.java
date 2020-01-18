package com.yndg.board.Action.Board;

import com.yndg.board.Action.Action;

public class BoardFactory {

	public static Action route (String cmd) {
	
		if(cmd.equals("list") ||  cmd.equals("")) {
			return new BoardListAction();
		}else if(cmd.equals("delete")) {
			return new BoardDeleteAction();
		}else if (cmd.equals("detail")) {
			return new BoardDetailAction();
		}else if (cmd.equals("update")) {
			return new BoardUpdateAction();
		}else if (cmd.equals("write")) {
			return new BoardWriteAction();
		}else if (cmd.equals("writeProc")) {
			return new BoardWriteProcAction();
		}else if (cmd.equals("updateProc")) {
			return new BoardUpdateProcAction();
		}
		return null;	
	}
	
}
