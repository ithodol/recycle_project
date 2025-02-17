package model.dao;

import model.dto.DataDto;
import model.dto.board.PageDto;

public interface Pagination {
	<T extends DataDto> PageDto<T> calPagination( int page, String table, Class<T> dtoClass );
//	<T extends DataDto> PageDto<T> calPagination( int page, String table, Class<T> dtoClass, String where );
}