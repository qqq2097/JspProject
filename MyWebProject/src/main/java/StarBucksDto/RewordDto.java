package StarBucksDto;

import java.sql.Timestamp;

public class RewordDto {

	private String num;
	private String cardnum;
	private int starcnt;
	private String storeaddr;
	private Timestamp buyday;
	
	
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getCardnum() {
		return cardnum;
	}
	public void setCardnum(String cardnum) {
		this.cardnum = cardnum;
	}
	public int getStarcnt() {
		return starcnt;
	}
	public void setStarcnt(int starcnt) {
		this.starcnt = starcnt;
	}
	public String getStoreaddr() {
		return storeaddr;
	}
	public void setStoreaddr(String storeaddr) {
		this.storeaddr = storeaddr;
	}
	public Timestamp getBuyday() {
		return buyday;
	}
	public void setBuyday(Timestamp buyday) {
		this.buyday = buyday;
	}
	@Override
	public String toString() {
		return "RewordDto [num=" + num + ", cardnum=" + cardnum + ", starcnt=" + starcnt + ", storeaddr=" + storeaddr
				+ ", buyday=" + buyday + "]";
	}
	
	
	
	
}
