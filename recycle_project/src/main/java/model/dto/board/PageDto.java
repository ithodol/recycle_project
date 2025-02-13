package model.dto.board;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter @Setter @ToString
public class PageDto {
	private int totalSize;
	private int page;
	private int totalPage;
	private int startBtn;
	private int endBtn;
	private Object data;
}
