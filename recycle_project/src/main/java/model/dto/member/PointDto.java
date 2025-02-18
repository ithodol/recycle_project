package model.dto.member;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import model.dto.DataDto;

@NoArgsConstructor @AllArgsConstructor
@Getter @Setter @ToString
public class PointDto implements DataDto{
	private int id;
	private int pono;
	private String pocontent;
	private int pocount;
	private String podate;
	private int mno;
	private int mpoint;
}
