package com.workmotion.app.department;

import java.util.List;

import com.workmotion.app.member.MemberDTO;

public class DepartmentDTO {
	private Long id;
	private String name;
	private String phone_num;
	private List<MemberDTO> memberDTOs;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone_num() {
		return phone_num;
	}
	public void setPhone_num(String phone_num) {
		this.phone_num = phone_num;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
}
