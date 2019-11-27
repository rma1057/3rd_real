package kr.co.prj;

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
	public String about() {
		return "introduce/about";
	}//hello
}//class
