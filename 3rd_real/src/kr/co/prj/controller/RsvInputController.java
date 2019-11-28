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
public class RsvInputController {
	@RequestMapping(value="reservation/rsv_input.do", method=RequestMethod.GET)
	public String revInput() {
		return "reservation/rsv_input";
	}//hello
}//class
