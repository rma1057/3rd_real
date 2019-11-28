package kr.co.prj.domain;


/**
 * MyBatis에서 조회 결과를 저장할 객체.
 * 생성은 Framework에서 한다. 
 * @author owner
 */

public class RoomInfoDomain {
	private String r_name, r_name2, info, brief_info, image1, image2, image3, concept_name;
	private int person_num, charge;
	public String getR_name() {
		return r_name;
	}
	public void setR_name(String r_name) {
		this.r_name = r_name;
	}
	public String getR_name2() {
		return r_name2;
	}
	public void setR_name2(String r_name2) {
		this.r_name2 = r_name2;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getBrief_info() {
		return brief_info;
	}
	public void setBrief_info(String brief_info) {
		this.brief_info = brief_info;
	}
	public String getImage1() {
		return image1;
	}
	public void setImage1(String image1) {
		this.image1 = image1;
	}
	public String getImage2() {
		return image2;
	}
	public void setImage2(String image2) {
		this.image2 = image2;
	}
	public String getImage3() {
		return image3;
	}
	public void setImage3(String image3) {
		this.image3 = image3;
	}
	public String getConcept_name() {
		return concept_name;
	}
	public void setConcept_name(String concept_name) {
		this.concept_name = concept_name;
	}
	public int getPerson_num() {
		return person_num;
	}
	public void setPerson_num(int person_num) {
		this.person_num = person_num;
	}
	public int getCharge() {
		return charge;
	}
	public void setCharge(int charge) {
		this.charge = charge;
	}

	
}
