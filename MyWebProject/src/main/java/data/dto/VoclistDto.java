package data.dto;

import java.sql.Date;
import java.sql.Timestamp;

public class VoclistDto {

	private String num;
	private String myid;
	private String email;
	private String phonenum;
	private String subject;
	private String content;
	private String photo;
	private Timestamp writeday;
	private Date Expectwriteday;
	private String commentYn;
	
	
	
	
	public Date getExpectwriteday() {
		return Expectwriteday;
	}
	public void setExpectwriteday(Date expectwriteday) {
		Expectwriteday = expectwriteday;
	}
	public Timestamp getWriteday() {
		return writeday;
	}
	public void setWriteday(Timestamp writeday) {
		this.writeday = writeday;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getMyid() {
		return myid;
	}
	public void setMyid(String myid) {
		this.myid = myid;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhonenum() {
		return phonenum;
	}
	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getCommentYn() {
		return commentYn;
	}
	public void setCommentYn(String commentYn) {
		this.commentYn = commentYn;
	}

	
	
	
}
