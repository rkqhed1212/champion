package com.champion.mvc01;

import java.sql.ResultSet;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sun.org.apache.bcel.internal.generic.RETURN;
import com.sun.org.apache.xml.internal.resolver.helpers.PublicId;

import sun.text.normalizer.NormalizerBase.Mode;

@Controller
public class MemberController {
	@Autowired
	MemberDAO dao;

	@RequestMapping("insert")
	public void insert(MemberDTO memberDTO) {
		dao.insert(memberDTO);
	}

	@RequestMapping("loginCheck")
	public String loginCheck(MemberDTO memberDTO, HttpSession session) throws Exception {
		String id = memberDTO.getId();
		String pw = memberDTO.getPw();
		System.out.println(id + "------------------------");
		MemberDTO dto = new MemberDTO();
		MemberDTO dto2 = dao.select(memberDTO);
		if (id.equals(dto.getId())&&pw.equals(dto.getPw())) {
			session.setAttribute("id", id);
		}
		if (id.equals(dto2.getId())&&pw.equals(dto2.getPw())) {
			session.setAttribute("id", id);
		}
//		try {
//			MemberDTO dto2 = dao.select(memberDTO);	
//			System.out.println(dto2.getId() + "-----");
//			if (id.equals(dto2.getId()) && pw.equals(dto2.getPw())) {
//				session.setAttribute("id", id);
//			}
//		} catch (Exception e) {
//			MemberDTO dto2 = new MemberDTO();
//			dto2.setId(id);
//			if (id.equals(dto2.getId()) && pw.equals(dto2.getPw())) {
//				session.setAttribute("id", id);
//			}
//		}
		return "loginCheck";
	}
	
	@RequestMapping("Mypage")
	public String Mypage(MemberDTO memberDTO, HttpSession session, Model model) throws Exception {
		System.out.println(memberDTO.getId());
		MemberDTO dto2 = dao.select(memberDTO);
//		String id = memberDTO.getId();
//		session.setAttribute("id", id);
		model.addAttribute("dto", dto2);
		return "Mypage";
	}
}

