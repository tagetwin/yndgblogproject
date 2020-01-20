package com.yndg.board.Model;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@AllArgsConstructor      // 전체 생성자
@NoArgsConstructor   // 빈 생성자
@Builder
@Getter

public class Game {
	private int id;
	private String gameTitle;
	private String genre;
	private String publisher;
	private Timestamp publishDate;
	private int userId;
	private int price;
}
