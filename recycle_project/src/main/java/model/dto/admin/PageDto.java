package model.dto.admin;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class PageDto {

	private int totalCount;//전체 자료 갯수
	private int page; //현재 페이지
	private int totalpage;
	private int startbtn;
	private int endbtn;
	// * Object 타입으로 사용한 이유
	//Object 타입은 자바의 최상위 클래스 이므로 모든 타입드르의 자료들을 저장할 수 있다.
	private Object data;
}
