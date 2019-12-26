package com.champion.mvc01;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MemberController {
	@Autowired
	MemberDAO dao;
	@RequestMapping("insert")
	public void insert(MemberDTO memberDTO) {
		dao.insert(memberDTO);
	}
	@RequestMapping("loginCheck")
	public String loginCheck(MemberDTO memberDTO, HttpSession session,
			RedirectAttributes redirectAttr){
		String id = memberDTO.getId();
		String pw = memberDTO.getPw();
		String result = null;
		MemberDTO dto2 = dao.select(memberDTO);
		if (pw.equals(dto2.getPw())){
			result = "redirect:index.jsp";
			session.setAttribute("id", id);
			System.out.println(result + "-------------");
		}else {
			redirectAttr.addFlashAttribute("errorMessage","암호가 틀렸습니다.");
			result = "redirect:login.jsp";
			System.out.println(result + "ddddddddddd");
		}
		return result;
	}
}
