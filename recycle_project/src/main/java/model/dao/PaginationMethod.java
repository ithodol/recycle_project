package model.dao;

import model.dto.board.PageDto;

public class PaginationMethod implements Pagination {
    @Override
    public PageDto calPagination(int page, int totalSize, int display, int btnSize, Object result) {
    	
        int totalPage = (totalSize % display == 0) ? (totalSize / display) : (totalSize / display + 1);
        int startBtn = ((page - 1) / btnSize) * btnSize + 1;
        int endBtn = startBtn + (btnSize - 1);
        if (endBtn > totalPage) { endBtn = totalPage; }
        
        PageDto pageDto = new PageDto();
        pageDto.setTotalSize(totalSize);
        pageDto.setPage(page);
        pageDto.setTotalPage(totalPage);
        pageDto.setStartBtn(startBtn);
        pageDto.setEndBtn(endBtn);
        pageDto.setData(result);
        
        return pageDto;
    }
}
