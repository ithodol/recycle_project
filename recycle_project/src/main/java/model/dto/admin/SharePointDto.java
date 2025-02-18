package model.dto.admin;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor @AllArgsConstructor
@Getter @Setter @ToString
public class SharePointDto {
	private int reno;
	private int mno;
	private int bno;
	private int bpoint;
	private String bcontent;
}
