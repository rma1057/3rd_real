package kr.co.prj.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.prj.service.RsvInputService;
import kr.co.prj.vo.ReservationTimeVO;
import kr.co.prj.vo.ReservationVO;

@Controller
public class ConfirmController {

	@RequestMapping(value="payment/confirm_parameter.do", method=RequestMethod.POST)
	//�Ű������� HttpServletRequest�� ���� : Spring MVC Framework����
	//WAS���� �����ڰ� ��û�� �� �����Ǵ� ��û��ü�� ��� method arguments��
	//�Ҵ��Ѵ�.
	public String useRequestParameter(HttpSession session,HttpServletRequest request, ReservationVO rsvVO) {
		
	
		//���� insert����
		//System.out.println("------------"+ rsvVO.toString());
	//	rsvVO.setId((String)session.getAttribute("mamberId"));

		System.out.println("------------"+ rsvVO.toString());
		rsvVO.setId((String)session.getAttribute("memberId"));
		RsvInputService ris=new RsvInputService();
		System.out.println("------------"+ rsvVO.toString());
		boolean insertFlag=ris.insertReservation(rsvVO);
		String reservationCode = ris.getReservationNum();		
		
		int[] time =rsvVO.getTimetouse();
		
		for (int i = 0; i < time.length; i++) {
			ris.insertReservationTime(new ReservationTimeVO(reservationCode, rsvVO.getRoom_name1(), time[i], rsvVO.getYear(), rsvVO.getMonth(), rsvVO.getDay()));
		}		
		
		System.out.println(insertFlag+"-------�Ǵ°�????????<-- ��� ��");
		
		
		
		
		
		/////////////////////////////////////////////////////////////////////////////
		
	
		
		
		//�̸��� ������ parameter �� �ޱ�
		String name=request.getParameter("rsv_person");
		String[] phone=request.getParameterValues("phone");
		String email=request.getParameter("email");
		//�̸��� ������ parameter �� �ޱ�
		String[] timetouse=request.getParameterValues("timetouse");
		String rsvRequest=request.getParameter("rsvRequest");
		
		request.setAttribute("phone", phone); //view�� ���� �����ϱ� ���� Scope��ü�� ���� ����
		request.setAttribute("timetouse", timetouse); //view�� ���� �����ϱ� ���� Scope��ü�� ���� ����
		
		System.out.println("�̸� : "+name+"/ �̸��� : "+email );
		
			if(timetouse !=null ) {
				for ( int i=0; i <timetouse.length ; i++) {
					System.out.println(timetouse[i]);
				}//end if
			} else {
				System.out.println("������ ��� ����");
			}//end else
		
		
		return "payment/confirm_popup";
	
	}
}//class
	