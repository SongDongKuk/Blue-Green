package board_model;

public class NoticeDTO {
	private int num;
	private String title;
	private String writer;
	private String contents;
	private String write_date;
	private int hits;
	public NoticeDTO(int num, String title, String writer, String contents, String write_date, int hits) {
		super();
		this.num = num;
		this.title = title;
		this.writer = writer;
		this.contents = contents;
		this.write_date = write_date;
		this.hits = hits;
	}
	public int getNum() {
		return num;
	}
	public String getTitle() {
		return title;
	}
	public String getWriter() {
		return writer;
	}
	public String getContents() {
		return contents;
	}
	public String getWrite_date() {
		return write_date;
	}
	public int getHits() {
		return hits;
	}
	
	
	
	
	

	
	
}
