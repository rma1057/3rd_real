package kr.co.prj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Spring ���� : ������ �����ӿ�ũ, POJO(Plain Old Java Object)����
 * Spring MVC�� ��ûó���� method�� �Ѵ�.
 * @author sist
 */
@Controller
public class RsvMainController {
	@RequestMapping(value="/rsv_main.do", method=RequestMethod.GET)
	public String rsvMain(Model model) {
		
		/*
		 * RoomInfoService ris=new RoomInfoService(); List<RoominfoDomain>
		 * roomInfoList=ris.
		 * 
		 * 
		 * 
		 */
		
		
		return "reservation/rsv_main";
		
		
		
	}//rsvMain
	
	
	
	
}//class











