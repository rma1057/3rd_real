package kr.co.prj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Spring ���� : ������ �����ӿ�ũ, POJO(Plain Old Java Object)����
 * Spring MVC�� ��ûó���� method�� �Ѵ�.
 * @author sist
 */
@Controller
public class DiaryController {
	@RequestMapping(value="diary/diary.do", method=RequestMethod.POST)
	public String diary(String image1) { // �� �̸� ��� �޾ƿ�?
		System.out.println("------gdgd--------"+image1);
		return "reservation/diary/diary";
	}//hello
}//class
