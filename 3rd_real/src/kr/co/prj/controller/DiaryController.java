package kr.co.prj.controller;

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
	@RequestMapping(value="diary/diary.do", method=RequestMethod.POST)
	public String diary(String image1) { // 룸 이름 어떻게 받아와?
		System.out.println("------gdgd--------"+image1);
		return "reservation/diary/diary";
	}//hello
}//class
