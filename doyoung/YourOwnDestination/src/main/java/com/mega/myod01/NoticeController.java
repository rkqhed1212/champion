package com.mega.myod01;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class NoticeController {
	NoticeController control;
	@Autowired
	NoticeDAO Ndao;
	CommentDAO Cdao;
	
	@RequestMapping("noticeall")
	public void noticeall(Model model) {
		List<NoticeDTO> Nlist = Ndao.selectAll();
		System.out.println("Controller의 리스트 : " + Nlist);
		model.addAttribute("Nlist", Nlist);
	}
	
	@RequestMapping("selectone")
	public void selectone(Model model,NoticeDTO dto) {
		NoticeDTO dto2 = Ndao.select(dto);
		List<CommentDTO> Clist = Cdao.selectList(dto2);
		model.addAttribute("dto", dto2);
		model.addAttribute("Clist",Clist);
	}
	
	@RequestMapping("Ninsert")
	public String Ninsert(NoticeDTO dto) {
		Ndao.insert(dto);
		return "success";
	}
}
