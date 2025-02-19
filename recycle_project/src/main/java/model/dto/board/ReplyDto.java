package model.dto.board;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter @Setter @ToString
public class ReplyDto {
	private int rno;
	private String rcontent;
	private String rdate;
	private int bno;
	private int mno;
	private String mnickname;
}
