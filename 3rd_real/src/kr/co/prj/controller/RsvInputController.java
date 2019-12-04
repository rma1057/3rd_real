package kr.co.prj.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.List;

import javax.websocket.Session;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.prj.domain.RoomInfoDomain;
import kr.co.prj.domain.RsvTimeDomain;
import kr.co.prj.service.RoomInfoService;
import kr.co.prj.service.RsvInputService;


/**
 * Spring ���� : ������ �����ӿ�ũ, POJO(Plain Old Java Object)����
 * Spring MVC�� ��ûó���� method�� �Ѵ�.
 * @author sist
 */
@Controller
public class RsvInputController {	
	@RequestMapping(value="reservation/rsv_input.do", method=POST)
	public String revInputForm(String room_name, Model model) {
		System.out.println("--------------"+room_name);
		RsvInputService ris=new RsvInputService();
		List<RsvTimeDomain>rsvTime=ris.searchRsvTime();
		int roomCharge=ris.searchRoomCharge(room_name);
		
		model.addAttribute("RsvTimeInfo", rsvTime);
		System.out.println("--------------"+roomCharge);
		model.addAttribute("RsvRoomCharge", roomCharge);
		
		
		return "reservation/rsv_input";
	}//revInputForm
	
	@RequestMapping(value="reservation/rsv_input1.do", method=RequestMethod.GET, produces = "application/json; charset=utf8")
	@ResponseBody
	public String searchMemberInfo(String user_id) {
		RsvInputService ris=new RsvInputService();
		JSONObject json=ris.multiColumn(user_id);
		System.out.println(json.toJSONString());
		return json.toJSONString();
	}//searchMemberInfo


	

}//class





