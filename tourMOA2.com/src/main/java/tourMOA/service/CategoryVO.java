package tourMOA.service;

public class CategoryVO {
	/* 카테고리 코드 */
	private String ctgcd;
	/* 카테고리 이름 */
	private String ctgnm;
	/* 설명 */
	private String comm;
	/* 사용여부 */
	private String use;
	/* 최초 등록일 */
	private String regdate;
	/* 최근 수정일 */
	private String upddate;

	private int total;
	
	private int cnt;
	
	/* 상위 레벨 코드	 */
	private String hctgcd;

	public String getHctgcd() {
		return hctgcd;
	}
	public void setHctgcd(String hctgcd) {
		this.hctgcd = hctgcd;
	}
	public String getCtgcd() {
		return ctgcd;
	}
	public void setCtgcd(String ctgcd) {
		this.ctgcd = ctgcd;
	}
	public String getCtgnm() {
		return ctgnm;
	}
	public void setCtgnm(String ctgnm) {
		this.ctgnm = ctgnm;
	}
	public String getComm() {
		return comm;
	}
	public void setComm(String comm) {
		this.comm = comm;
	}
	public String getUse() {
		return use;
	}
	public void setUse(String use) {
		this.use = use;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getUpddate() {
		return upddate;
	}
	public void setUpddate(String upddate) {
		this.upddate = upddate;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}	
}
