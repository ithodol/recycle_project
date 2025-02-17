package model.dto.board;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import model.dto.DataDto;

@NoArgsConstructor
@AllArgsConstructor
@Getter @Setter @ToString
public class BoardDto implements DataDto{
	private int id;
	private int bno;
	private int lno;
	private String btitle;
	private String bcontent;
	private String baddress;
	private double lat;
	private double lng;
	private String bdate;
	private int bpeople;
	private String bstartdate;
	private String benddate;
	private int bview;
	private int blike;
	private int bpoint;	
	private int mno;
	private String mnickname;
}
