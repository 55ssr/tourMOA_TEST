import java.io.Serializable;
import java.util.Date;

/**
 * 팝업테이블 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class PopupMembervo implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** 번호. */
	private Integer unq;

	/** 제목. */
	private String title;

	/** 사용여부. */
	private String use;

	/** 시작일. */
	private Date sdate;

	/** 종료일. */
	private Date edate;

	/** 가로창크기. */
	private Integer xsize;

	/** 세로창크기. */
	private Integer ysize;

	/** 가로좌표. */
	private Integer xpos;

	/** 세로좌표. */
	private Integer ypos;

	/** 내용. */
	private String content;

	/**
	 * 생성자.
	 */
	public PopupMembervo() {
	}

	/**
	 * 번호을 설정합니다..
	 * 
	 * @param unq
	 *            번호
	 */
	public void setUnq(Integer unq) {
		this.unq = unq;
	}

	/**
	 * 번호을 가져옵니다..
	 * 
	 * @return 번호
	 */
	public Integer getUnq() {
		return this.unq;
	}

	/**
	 * 제목을 설정합니다..
	 * 
	 * @param title
	 *            제목
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * 제목을 가져옵니다..
	 * 
	 * @return 제목
	 */
	public String getTitle() {
		return this.title;
	}

	/**
	 * 사용여부을 설정합니다..
	 * 
	 * @param use
	 *            사용여부
	 */
	public void setUse(String use) {
		this.use = use;
	}

	/**
	 * 사용여부을 가져옵니다..
	 * 
	 * @return 사용여부
	 */
	public String getUse() {
		return this.use;
	}

	/**
	 * 시작일을 설정합니다..
	 * 
	 * @param sdate
	 *            시작일
	 */
	public void setSdate(Date sdate) {
		this.sdate = sdate;
	}

	/**
	 * 시작일을 가져옵니다..
	 * 
	 * @return 시작일
	 */
	public Date getSdate() {
		return this.sdate;
	}

	/**
	 * 종료일을 설정합니다..
	 * 
	 * @param edate
	 *            종료일
	 */
	public void setEdate(Date edate) {
		this.edate = edate;
	}

	/**
	 * 종료일을 가져옵니다..
	 * 
	 * @return 종료일
	 */
	public Date getEdate() {
		return this.edate;
	}

	/**
	 * 가로창크기을 설정합니다..
	 * 
	 * @param xsize
	 *            가로창크기
	 */
	public void setXsize(Integer xsize) {
		this.xsize = xsize;
	}

	/**
	 * 가로창크기을 가져옵니다..
	 * 
	 * @return 가로창크기
	 */
	public Integer getXsize() {
		return this.xsize;
	}

	/**
	 * 세로창크기을 설정합니다..
	 * 
	 * @param ysize
	 *            세로창크기
	 */
	public void setYsize(Integer ysize) {
		this.ysize = ysize;
	}

	/**
	 * 세로창크기을 가져옵니다..
	 * 
	 * @return 세로창크기
	 */
	public Integer getYsize() {
		return this.ysize;
	}

	/**
	 * 가로좌표을 설정합니다..
	 * 
	 * @param xpos
	 *            가로좌표
	 */
	public void setXpos(Integer xpos) {
		this.xpos = xpos;
	}

	/**
	 * 가로좌표을 가져옵니다..
	 * 
	 * @return 가로좌표
	 */
	public Integer getXpos() {
		return this.xpos;
	}

	/**
	 * 세로좌표을 설정합니다..
	 * 
	 * @param ypos
	 *            세로좌표
	 */
	public void setYpos(Integer ypos) {
		this.ypos = ypos;
	}

	/**
	 * 세로좌표을 가져옵니다..
	 * 
	 * @return 세로좌표
	 */
	public Integer getYpos() {
		return this.ypos;
	}

	/**
	 * 내용을 설정합니다..
	 * 
	 * @param content
	 *            내용
	 */
	public void setContent(String content) {
		this.content = content;
	}

	/**
	 * 내용을 가져옵니다..
	 * 
	 * @return 내용
	 */
	public String getContent() {
		return this.content;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((unq == null) ? 0 : unq.hashCode());
		return result;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		PopupMembervo other = (PopupMembervo) obj;
		if (unq == null) {
			if (other.unq != null) {
				return false;
			}
		} else if (!unq.equals(other.unq)) {
			return false;
		}
		return true;
	}

}