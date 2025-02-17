package model.dto.member;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import model.dto.DataDto;

@NoArgsConstructor @AllArgsConstructor
@Getter @Setter @ToString
public class MemberDto implements DataDto{
	private int id;
	private int mno;
	private String mid;
	private String mpwd;
	private String mname;
	private String mnickname;
	private String mphone;
	private String memail;
	private String mdate;
	private int mpoint;
	private String mprofile;
	
	@Override
	public int getId() {
		return id;
	}
}
