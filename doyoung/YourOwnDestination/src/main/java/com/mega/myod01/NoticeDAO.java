package com.mega.myod01;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDAO {

	@Autowired
	SqlSessionTemplate myBatis;
	
	public void insert(NoticeDTO dto) {
		myBatis.insert("notice.insert",dto);
	}
	
	public void update(NoticeDTO dto) {
		myBatis.update("notice.update",dto);
	}
	
	public void delete(NoticeDTO dto) {
		myBatis.delete("notice.delete",dto);
	}
	
	public NoticeDTO select(NoticeDTO dto) {
		NoticeDTO dto2 = myBatis.selectOne("notice.select", dto);
		return dto2;
	}
	
	public List<NoticeDTO> selectAll() {
		List<NoticeDTO> list = myBatis.selectList("notice.selectAll");
		System.out.println("DAO의 리스트 : "+list);
		return list;
	}
}
