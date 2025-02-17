package model.dao;

import java.util.ArrayList;

import model.dao.admin.GetMemberDao;
import model.dao.board.BoardDao;
import model.dao.member.MemberDao;
import model.dto.DataDto;
import model.dto.board.BoardDto;
import model.dto.board.PageDto;
import model.dto.member.MemberDto;
import model.dto.member.PointDto;

public class PaginationMethod implements Pagination {
    @Override 
    public <T extends DataDto> PageDto<T> calPagination( int page, String table, Class<T> dtoClass ) {
	    int display = 10;
	    int btnSize = 10;
	    int startRow = (page-1) * display; 
//	    조회할 테이블 튜플의 총 개수
	    int totalSize = BoardDao.getInstance().getTotalSize(table);
	    ArrayList<T> result;

	    if (dtoClass.equals(BoardDto.class)) {
            result = (ArrayList<T>) BoardDao.getInstance().findAll(startRow, display, "");
        } else if (dtoClass.equals(MemberDto.class)) {
            result = (ArrayList<T>) GetMemberDao.getInstance().findAll(startRow, display);
        } else {
            throw new IllegalArgumentException("Unsupported DTO type");
        }
	    
        int totalPage = (totalSize % display == 0) ? (totalSize / display) : (totalSize / display + 1);
        int startBtn = ((page - 1) / btnSize) * btnSize + 1;
        int endBtn = startBtn + (btnSize - 1);
        if (endBtn > totalPage) { endBtn = totalPage; }
        
        PageDto<T> pageDto = new PageDto<T>();
        pageDto.setTotalSize(totalSize);
        pageDto.setPage(page);
        pageDto.setTotalPage(totalPage);
        pageDto.setStartBtn(startBtn);
        pageDto.setEndBtn(endBtn);
        pageDto.setData(result);
        
        return pageDto;
    } // f end
    
//    @Override
//    public <T extends DataDto> PageDto<T> calPagination( int page, String table, Class<T> dtoClass, String where ) {
//	    int display = 10;
//	    int btnSize = 10;
//	    int startRow = (page-1) * displa y; 
////	    조회할 테이블 튜플의 총 개수
//	    int totalSize = BoardDao.getInstance().getTotalSize(table);
//	    ArrayList<T> result = BoardDao.getInstance().findAll(startRow, display, where);
//    	
//        int totalPage = (totalSize % display == 0) ? (totalSize / display) : (totalSize / display + 1);
//        int startBtn = ((page - 1) / btnSize) * btnSize + 1;
//        int endBtn = startBtn + (btnSize - 1);
//        if (endBtn > totalPage) { endBtn = totalPage; }
//        
//        PageDto<T> pageDto = new PageDto<>();
//        pageDto.setTotalSize(totalSize);
//        pageDto.setPage(page);
//        pageDto.setTotalPage(totalPage);
//        pageDto.setStartBtn(startBtn);
//        pageDto.setEndBtn(endBtn);
//        pageDto.setData(result);
//        
//        return pageDto;
//    }
    
//    else if (dtoClass.equals(PointDto.class)) { 
//    	result = (ArrayList<T>) MemberDao.getInstance().getPointLog(loginMno, startRow, display);
//	}
	  
	     
}
