/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package tourMOA.service;

import java.io.Serializable;

import org.apache.commons.lang3.builder.ToStringBuilder;

/**
 * @Class Name : DefaultListVO.java
 * @Description : DefaultListVO Class
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2009.03.16           최초생성
 *
 * @author 개발프레임웍크 실행환경 개발팀
 * @since 2009. 03.16
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class DefaultListVO implements Serializable {

	/**
	 *  serialVersion UID
	 */
	private static final long serialVersionUID = -858838578081269359L;

	/**/
	private String nexCd = "";
	
	/** 검색조건 */
	//private String searchCondition = ""; // 너무김
	private String srchContn = "";
	
	/** 검색Keyword */
	//private String searchKeyword = "";
	private String srchKeywd = ""; 
	
	/** 검색사용여부 */
	//private String searchUseYn = "";
	private String srchUseYn = "";

	/** 현재페이지 */
	//private int pageIndex = 1;
	private int pgIdx = 1;

	/** 페이지갯수 */
	//private int pageUnit = 10;
	private int pgUnit = 10;

	/** 페이지사이즈 */
	//private int pageSize = 10;
	private int pgSiz= 10;
	
	/** firstIndex */
	//private int firstIndex = 1;
	private int fstIdx = 1;

	/** lastIndex */
	//private int lastIndex = 1;
	private int lstIdx = 1;

	/** recordCountPerPage */
	//private int recordCountPerPage = 10;
	private int rcordCntPg = 10;

	public String getNexCd() {
		return nexCd;
	}

	public void setNexCd(String nexCd) {
		this.nexCd = nexCd;
	}

	public String getSrchContn() {
		return srchContn;
	}

	public void setSrchContn(String srchContn) {
		this.srchContn = srchContn;
	}

	public String getSrchKeywd() {
		return srchKeywd;
	}

	public void setSrchKeywd(String srchKeywd) {
		this.srchKeywd = srchKeywd;
	}
	
	public String getSrchUseYn() {
		return srchUseYn;
	}

	public void setSrchUseYn(String srchUseYn) {
		this.srchUseYn = srchUseYn;
	}

	public int getPgIdx() {
		return pgIdx;
	}

	public void setPgIdx(int pgIdx) {
		this.pgIdx = pgIdx;
	}

	public int getPgUnit() {
		return pgUnit;
	}

	public void setPgUnit(int pgUnit) {
		this.pgUnit = pgUnit;
	}

	public int getPgSiz() {
		return pgSiz;
	}

	public void setPgSiz(int pgSiz) {
		this.pgSiz = pgSiz;
	}

	public int getFstIdx() {
		return fstIdx;
	}

	public void setFstIdx(int fstIdx) {
		this.fstIdx = fstIdx;
	}

	public int getLstIdx() {
		return lstIdx;
	}

	public void setLstIdx(int lstIdx) {
		this.lstIdx = lstIdx;
	}

	public int getRcordCntPg() {
		return rcordCntPg;
	}

	public void setRcordCntPg(int rcordCntPg) {
		this.rcordCntPg = rcordCntPg;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}

}
