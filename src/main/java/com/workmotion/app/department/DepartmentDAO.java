package com.workmotion.app.department;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.workmotion.app.member.MemberDTO;
import com.workmotion.app.util.Pager;

@Repository
public class DepartmentDAO {
	@Autowired
	private SqlSession sqlSession;
	private String namespace = "com.workmotion.app.department.DepartmentDAO.";
	
	//리스트 리스트 리스트@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	public List<MemberDTO> getDepartmentList(Pager pager)throws Exception {
		 return sqlSession.selectList(namespace+"getDepartmentList", pager);
		
	}
	
	//디테일 디테일 디테일 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	public List<MemberDTO> getDepartmentDetail(MemberDTO memberDTO) throws Exception{
		return sqlSession.selectList(namespace+"getDepartmentDetail", memberDTO);
	}
	
	//토탈카운트 토탈카운트 토탈카운트 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	public Long getTotalCount(Pager pager) throws Exception{
		return sqlSession.selectOne(namespace+"getTotalCount", pager);
	}
	
	public List<Map<String, Object>> getMemberList(Map<String, Object> map) throws Exception{
		return sqlSession.selectList(namespace+"getMemberList", map);
	}

		public int createMember(MemberDTO memberDTO) throws Exception{
			return sqlSession.update(namespace+"createMember", memberDTO);
			
		}
		
		public int deleteMember(MemberDTO memberDTO)throws Exception {
			return sqlSession.update(namespace+"deleteMember", memberDTO);
		}
		
		public int createDepartment(DepartmentDTO departmentDTO) throws Exception{
			return sqlSession.insert(namespace+"createDepartment", departmentDTO);
		}
		
		public int updateDepartment(DepartmentDTO departmentDTO)throws Exception{
			return sqlSession.update(namespace+"updateDepartment", departmentDTO);
		}
}
