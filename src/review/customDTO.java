package review;

import java.sql.Timestamp;

public class customDTO {
	private int customNum;
	private String writer,title,content;
	private String savedate;
	public int getCustomNum() {
		return customNum;
	}
	public void setCustomNum(int customNum) {
		this.customNum = customNum;
	}

	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSavedate() {
		return savedate;
	}
	public void setSavedate(String savedate) {
		this.savedate = savedate;
	}
	
	
}
