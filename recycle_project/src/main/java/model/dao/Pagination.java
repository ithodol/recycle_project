package model.dao;

import model.dto.board.PageDto;

public interface Pagination {
    PageDto calPagination(int page, int totalSize, int display, int btnSize, Object result);
}