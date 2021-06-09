package site.levinni.service;

import java.util.List;

import site.levinni.domain.BoardAttachVO;
import site.levinni.domain.BoardVO;
import site.levinni.domain.Criteria;

public interface BoardService {
	List<BoardVO> getList(Criteria cri); // 페이징 처리가 된 목록 조회
	
	List<BoardAttachVO> getAttachList(Long bno);
	
	void register (BoardVO boardVO); 
	
	BoardVO get(Long bno); // 상세 조회
	
	boolean modify(BoardVO boardVO);
	
	boolean remove(Long bno);
	
	int getTotal(Criteria cri);
	
}
