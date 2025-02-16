package model.dao;

import java.util.ArrayList;

import model.dao.board.BoardDao;
import model.dto.board.BoardDto;
import model.dto.board.PageDto;

public class PaginationMethod implements Pagination {
    @Override
    public PageDto calPagination( int page, String table ) {
	    int display = 10;
	    int btnSize = 10;
	    int startRow = (page-1) * display; 
//	    조회할 테이블 튜플의 총 개수
	    int totalSize = BoardDao.getInstance().getTotalSize(table);
	    ArrayList<BoardDto> result = BoardDao.getInstance().findAll(startRow, display, "");
    	
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
    } // f end
    
    @Override
    public PageDto calPagination( int page, String table, String where ) {
	    int display = 10;
	    int btnSize = 10;
	    int startRow = (page-1) * display; 
//	    조회할 테이블 튜플의 총 개수
	    int totalSize = BoardDao.getInstance().getTotalSize(table);
	    ArrayList<BoardDto> result = BoardDao.getInstance().findAll(startRow, display, where);
    	
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
