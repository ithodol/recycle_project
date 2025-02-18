package model.dto.board;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import model.dto.DataDto;

@NoArgsConstructor
@AllArgsConstructor
@Getter @Setter @ToString
public class PageDto<T extends DataDto> {
	private int totalSize;
	private int page;
	private int totalPage;
	private int startBtn;
	private int endBtn;
	private int loginMno;
	private List<T> data;
	
	public void setData(List<T> data) {
		this.data = data;
	}
	
	public List<T> getData(){
		return data;
	}
}
