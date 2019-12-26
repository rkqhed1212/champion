package com.champion.mvc01;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
		@Autowired
		SqlSessionTemplate myBatis;
		public void insert(MemberDTO memberDTO) {
			myBatis.insert("member.insert",memberDTO);
		}
		public MemberDTO select(MemberDTO memberDTO) {
		 MemberDTO dto2 = myBatis.selectOne("member.select",memberDTO);
		return dto2;
		}
		
}
