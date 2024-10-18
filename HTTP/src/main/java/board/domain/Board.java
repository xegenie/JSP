package board.domain;

import java.time.LocalDateTime;

public class Board {
	private int no;
	private String title;
	private String writer;
	private String content;
	private LocalDateTime regDate;
	private LocalDateTime updDate;
	
	// 생성자
	public Board() {
	}

	public Board(String title, String writer, String content) {
		this.title = title;
		this.writer = writer;
		this.content = content;
	}
	
	
	@Override
	public String toString() {
		return "Board [no=" + no + ", title=" + title + ", writer=" + writer + ", content=" + content + ", regDate="
				+ regDate + ", updDate=" + updDate + "]";
	}

	// getter, setter
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

}
