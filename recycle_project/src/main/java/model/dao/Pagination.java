package model.dao;

import model.dto.board.PageDto;

public interface Pagination {
    PageDto calPagination( int page );
}