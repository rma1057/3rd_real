package kr.co.prj;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Spring ���� : ������ �����ӿ�ũ, POJO(Plain Old Java Object)����
 * Spring MVC�� ��ûó���� method�� �Ѵ�.
 * @author sist
 */
@Controller
public class TestController {
	@RequestMapping(value="/index.do", method=RequestMethod.GET)
	public String mainForm() {	
		
		
		return "main/home";
	}//hello
	
	
	
	
	   //�ӽ� ���ε�

	   @RequestMapping(value="/introduce/introduce.do")
	   public String introForm() {
	      return "introduce/about";
	   }//introduceForm
	   @RequestMapping(value="/introduce/about1.do")
	   public String about1Form() {
	      return "introduce/about1";
	   }//introduceForm
	   @RequestMapping(value="/introduce/about2.do")
	   public String about2Form() {
	      return "introduce/about2";
	   }//introduceForm
	   @RequestMapping(value="/contact/location.do")
	   public String locationForm() {
	      return "contact/location";
	   }//introduceForm

	   
	   
	   
	}//class
	













