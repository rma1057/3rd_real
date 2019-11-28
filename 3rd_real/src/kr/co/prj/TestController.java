package kr.co.prj;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Spring 장점 : 가벼운 프레임워크, POJO(Plain Old Java Object)지원
 * Spring MVC는 요청처리를 method로 한다.
 * @author sist
 */
@Controller
public class TestController {
	@RequestMapping(value="/index.do", method=RequestMethod.GET)
	public String mainForm() {
		return "main/home";
	}//hello


	   //임시 매핑들

	   @RequestMapping(value="introduce.do")
	   public String introForm() {
	      return "introduce/about";
	   }//introduceForm
	   @RequestMapping(value="about1.do")
	   public String about1Form() {
	      return "introduce/about1";
	   }//introduceForm
	   @RequestMapping(value="about2.do")
	   public String about2Form() {
	      return "introduce/about2";
	   }//introduceForm
	   @RequestMapping(value="location.do")
	   public String locationForm() {
	      return "contact/location";
	   }//introduceForm
	   @RequestMapping(value="login.do")
	   public String loginForm() {
	      return "login/login";
	   }//introduceForm
	   @RequestMapping(value="signUp.do")
	   public String signUpForm() {
	      return "login/signUp";
	   }//introduceForm
	   
	   
	   
	}//class
	













