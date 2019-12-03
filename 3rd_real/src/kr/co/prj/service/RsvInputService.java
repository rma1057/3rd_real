package kr.co.prj.service;

import java.sql.SQLException;
import java.util.List;

import org.json.simple.JSONObject;

import kr.co.prj.dao.ReservationDAO;
import kr.co.prj.domain.MemberCheckDomain;
import kr.co.prj.domain.RoomInfoDomain;
import kr.co.prj.domain.RsvTimeDomain;


public class RsvInputService {

	   public JSONObject multiColumn(String user_id) {
		   JSONObject jo = new JSONObject();
		   
		   ReservationDAO rDao = ReservationDAO.getInstance();
		   
		   MemberCheckDomain mcd2=null;
		   try {
			   mcd2 = rDao.selectMemberInfo(user_id);
		   } catch (SQLException e) {
			   e.printStackTrace();
		   }//end catch
		   
		   jo.put("resultFlag", mcd2!=null);
		   jo.put("user_name",mcd2.getUser_name());
		   jo.put("phone",mcd2.getPhone());
		   jo.put("email",mcd2.getEmail());
		   
		   
		   return jo; 
	   }//multiColumn
	   
		public List<RsvTimeDomain> searchRsvTime(){
			List<RsvTimeDomain> list= null;
			ReservationDAO rsvDao = ReservationDAO.getInstance();
			try {
				list=rsvDao.selectRsvTime();
			
			} catch (SQLException e) {
				e.printStackTrace();
			}//end catch
			return list;
		}//searchRsvTime
		
		
		public int searchRoomCharge(String room_name){
			int roomCharge =0;
			ReservationDAO rsvDao = ReservationDAO.getInstance();
			try {
				roomCharge=rsvDao.selectRoomCharge(room_name);
			
			} catch (SQLException e) {
				e.printStackTrace();
			}//end catch
			return roomCharge;
		}//searchRsvTime
	
}//class