package model.dao;

import java.util.ArrayList;

import model.dao.admin.GetMemberDao;
import model.dao.board.BoardDao;
import model.dao.board.ReplyDao;
import model.dao.member.MemberDao;
import model.dto.DataDto;
import model.dto.admin.PointLogDto;
import model.dto.board.BoardDto;
import model.dto.board.PageDto;
import model.dto.board.ReplyDto;
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
	    int totalPage = (totalSize % display == 0) ? (totalSize / display) : (totalSize / display + 1);
	    int startBtn = ((page - 1) / btnSize) * btnSize + 1;
	    int endBtn = startBtn + (btnSize - 1);
	    if (endBtn > totalPage) { endBtn = totalPage; }
	    
	    PageDto<T> pageDto = new PageDto<T>();
	    ArrayList<T> result;

	    if (dtoClass.equals(BoardDto.class)) {
            result = (ArrayList<T>) BoardDao.getInstance().findAll(startRow, display, "");
        } else if (dtoClass.equals(MemberDto.class)) {
            result = (ArrayList<T>) GetMemberDao.getInstance().findAll(startRow, display);
        } else {
            throw new IllegalArgumentException("Unsupported DTO type");
        }
	    
        pageDto.setTotalSize(totalSize);
        pageDto.setPage(page);
        pageDto.setTotalPage(totalPage);
        pageDto.setStartBtn(startBtn);
        pageDto.setEndBtn(endBtn);
        pageDto.setData(result);
        
        return pageDto;
    } // f end
    
    @Override 
    public <T extends DataDto> PageDto<T> calPagination( int no, int page, String table, Class<T> dtoClass ) {
	    int display = 10;
	    int btnSize = 10;
	    int startRow = (page-1) * display; 
//	    조회할 테이블 튜플의 총 개수
	    int totalSize = BoardDao.getInstance().getTotalSize(table);
	    int totalPage = (totalSize % display == 0) ? (totalSize / display) : (totalSize / display + 1);
	    int startBtn = ((page - 1) / btnSize) * btnSize + 1;
	    int endBtn = startBtn + (btnSize - 1);
	    if (endBtn > totalPage) { endBtn = totalPage; }
	    
	    PageDto<T> pageDto = new PageDto<T>();
	    ArrayList<T> result;
	    
	    if (dtoClass.equals(BoardDto.class)) {
            result = (ArrayList<T>) BoardDao.getInstance().findAll(startRow, display, "where lno="+no);
        } else if (dtoClass.equals(PointLogDto.class)) { 
        	result = (ArrayList<T>) GetMemberDao.getInstance().findPointLog(no, startRow, display);
    	} else if (dtoClass.equals(PointDto.class)) { 
        	result = (ArrayList<T>) MemberDao.getInstance().getPointLog(no, startRow, display);
    	} else if (dtoClass.equals(ReplyDto.class)) {
            result = (ArrayList<T>) ReplyDao.getInstance().findAll(no, startRow, display);
        } else {
            throw new IllegalArgumentException("Unsupported DTO type");
        }
	    
        pageDto.setTotalSize(totalSize);
        pageDto.setPage(page);
        pageDto.setTotalPage(totalPage);
        pageDto.setStartBtn(startBtn);
        pageDto.setEndBtn(endBtn);
        pageDto.setData(result);
        
        return pageDto;
    } // f end
    

	  
	     
}
