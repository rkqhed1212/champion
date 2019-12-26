package com.mega.myod01;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CommentDAO {

	@Autowired
	SqlSessionTemplate myBatis;
	
	public void insert(CommentDTO dto) {
		myBatis.insert("comment.insert",dto);
	}
	
	public List<CommentDTO> selectList(NoticeDTO dto) {
		List<CommentDTO> list = myBatis.selectList("comment.selectList", dto.notice_id);
		return list;
	}
	
}
