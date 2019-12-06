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
	//매개변수로 HttpServletRequest를 선언 : Spring MVC Framework에서
	//WAS에서 접속자가 요청할 때 생성되는 요청객체를 얻어 method arguments로
	//할당한다.
	public String useRequestParameter(HttpSession session,HttpServletRequest request, ReservationVO rsvVO) {
		
	
		//예약 insert쿼리
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
		
		System.out.println(insertFlag+"-------되는거????????<-- 당근 됨");
		
		
		
		
		
		/////////////////////////////////////////////////////////////////////////////
		
	
		
		
		//이름이 유일한 parameter 값 받기
		String name=request.getParameter("rsv_person");
		String[] phone=request.getParameterValues("phone");
		String email=request.getParameter("email");
		//이름이 동일한 parameter 값 받기
		String[] timetouse=request.getParameterValues("timetouse");
		String rsvRequest=request.getParameter("rsvRequest");
		
		request.setAttribute("phone", phone); //view로 값을 전달하기 위해 Scope객체에 값을 설정
		request.setAttribute("timetouse", timetouse); //view로 값을 전달하기 위해 Scope객체에 값을 설정
		
		System.out.println("이름 : "+name+"/ 이메일 : "+email );
		
			if(timetouse !=null ) {
				for ( int i=0; i <timetouse.length ; i++) {
					System.out.println(timetouse[i]);
				}//end if
			} else {
				System.out.println("선택한 취미 없음");
			}//end else
		
		
		return "payment/confirm_popup";
	
	}
}//class
	