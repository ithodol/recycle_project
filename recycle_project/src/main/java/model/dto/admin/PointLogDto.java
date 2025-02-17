package model.dto.admin;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import model.dto.DataDto;

@Getter @Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class PointLogDto implements DataDto{
	private int id;
	private int mno;
	private String podate;
	private String pocontent;
	private int point;
}
