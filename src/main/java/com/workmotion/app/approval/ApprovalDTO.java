package com.workmotion.app.approval;

import java.sql.Date;

public class ApprovalDTO {
	
	private Long id;
	private Long document_id;
	private Date approval_dt;
	private Long member_id;
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getDocument_id() {
		return document_id;
	}
	public void setDocument_id(Long document_id) {
		this.document_id = document_id;
	}
	public Date getApproval_dt() {
		return approval_dt;
	}
	public void setApproval_dt(Date approval_dt) {
		this.approval_dt = approval_dt;
	}
	public Long getMember_id() {
		return member_id;
	}
	public void setMember_id(Long member_id) {
		this.member_id = member_id;
	}
		
}
