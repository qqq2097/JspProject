package data.dto;

import java.sql.Date;

public class AnswerDto {

private String idx;
private String num;
private String id;
private String answer;

private Date answerday;

public String getIdx() {
	return idx;
}
public void setIdx(String idx) {
	this.idx = idx;
}
public String getNum() {
	return num;
}
public void setNum(String num) {
	this.num = num;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getAnswer() {
	return answer;
}
public void setAnswer(String answer) {
	this.answer = answer;
}
public Date getAnswerday() {
	return answerday;
}
public void setAnswerday(Date answerday) {
	this.answerday = answerday;
}




}
