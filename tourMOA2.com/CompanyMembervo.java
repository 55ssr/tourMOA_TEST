import java.io.Serializable;

/**
 * 회사정보 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class CompanyMembervo implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** 회사명. */
	private String cname;

	/** 주소. */
	private String addr;

	/** 전화번호. */
	private String tel;

	/** 이메일. */
	private String email;

	/** 사업자번호. */
	private String cnum;

	/**
	 * 생성자.
	 */
	public CompanyMembervo() {
	}

	/**
	 * 회사명을 설정합니다..
	 * 
	 * @param cname
	 *            회사명
	 */
	public void setCname(String cname) {
		this.cname = cname;
	}

	/**
	 * 회사명을 가져옵니다..
	 * 
	 * @return 회사명
	 */
	public String getCname() {
		return this.cname;
	}

	/**
	 * 주소을 설정합니다..
	 * 
	 * @param addr
	 *            주소
	 */
	public void setAddr(String addr) {
		this.addr = addr;
	}

	/**
	 * 주소을 가져옵니다..
	 * 
	 * @return 주소
	 */
	public String getAddr() {
		return this.addr;
	}

	/**
	 * 전화번호을 설정합니다..
	 * 
	 * @param tel
	 *            전화번호
	 */
	public void setTel(String tel) {
		this.tel = tel;
	}

	/**
	 * 전화번호을 가져옵니다..
	 * 
	 * @return 전화번호
	 */
	public String getTel() {
		return this.tel;
	}

	/**
	 * 이메일을 설정합니다..
	 * 
	 * @param email
	 *            이메일
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * 이메일을 가져옵니다..
	 * 
	 * @return 이메일
	 */
	public String getEmail() {
		return this.email;
	}

	/**
	 * 사업자번호을 설정합니다..
	 * 
	 * @param cnum
	 *            사업자번호
	 */
	public void setCnum(String cnum) {
		this.cnum = cnum;
	}

	/**
	 * 사업자번호을 가져옵니다..
	 * 
	 * @return 사업자번호
	 */
	public String getCnum() {
		return this.cnum;
	}


}