package com.workmotion.app.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {

    @Autowired
    private SqlSession sqlSession;
    private final String NAMESPACE = "com.workmotion.app.member.MemberDAO.";

    public int setFileDelete(Avatar avatar) throws Exception {
        return sqlSession.delete(NAMESPACE + "setFileDelete", avatar);
    }

    public int setFileAdd(Avatar avatar) throws Exception {
        return sqlSession.insert(NAMESPACE + "setFileAdd", avatar);
    }

    public int setFileAdd(MemberDTO memberDTO) throws Exception {
        return sqlSession.insert(NAMESPACE + "setFileAddDefault", memberDTO);
    }

    public MemberDTO detailMember(MemberDTO memberDTO) throws Exception {
        return sqlSession.selectOne(NAMESPACE + "detailMember", memberDTO);
    }

    public int updateMember(MemberDTO memberDTO) throws Exception {
        return sqlSession.update(NAMESPACE + "updateMember", memberDTO);
    }

    public int createMember(MemberDTO memberDTO) throws Exception {
        return sqlSession.insert(NAMESPACE + "createMember", memberDTO);
    }

    public MemberDTO emailCheck(MemberDTO memberDTO) throws Exception {
        return sqlSession.selectOne(NAMESPACE + "emailCheck", memberDTO);
    }

}
