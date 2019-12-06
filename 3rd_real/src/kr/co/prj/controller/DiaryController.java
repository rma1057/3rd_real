package kr.co.prj.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Spring 장점 : 가벼운 프레임워크, POJO(Plain Old Java Object)지원
 * Spring MVC는 요청처리를 method로 한다.
 * @author sist
 */
@Controller
public class DiaryController {
	@RequestMapping(value="diary/diary.do")
	public String diary(HttpSession session,String image1) { 
		System.out.println("------gdgd--------"+image1);
		String uri ="reservation/diary/diary";
		System.out.println(session.getAttribute("memberId"));
		if(session.getAttribute("memberId")==null) {
			uri ="redirect:/login/login.do";
		}
		return uri;
	}//hello
}//class
