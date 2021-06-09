package site.levinni.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

import site.levinni.domain.BoardVO;
import site.levinni.domain.Criteria;


public interface BoardMapper {
	// 게시판 목록
	public List<BoardVO> getList();
	
	// 페이징 처리가 된 게시판 목록
	public List<BoardVO> getListWithPaging(Criteria cri);
	
	// 글작성
	public void insertSelectKey(BoardVO boardVO);
	
	// 상세 글 조회
	public BoardVO read(Long bno);
	
	// 글수정
	public int update(BoardVO boardVO);

	// 글삭제
	public int delete(Long bno);
	
	
	public int getTotalCount(Criteria cri);
	
	// 댓글 수
	@Update("UPDATE TBL_COUNSEL SET REPLYCNT = REPLYCNT + #{amount} WHERE BNO = #{bno}")
	void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount);
	
	// 게시글 조회수
	public int updateHitCount(Long bno);
}
