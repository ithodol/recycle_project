package model.dao;

import model.dto.board.PageDto;

public interface Pagination {
    PageDto calPagination( int page, String table );
    PageDto calPagination( int page, String table, String where );
}