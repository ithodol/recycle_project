package model.dto.member;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor @AllArgsConstructor
@Getter @Setter @ToString
public class MemberDto {
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
}
