package site.levinni.mapper;

import java.util.List;

import site.levinni.domain.ApplyVO;

public interface ApplyMapper {
	// 예약 신청
	void insert(ApplyVO applyVO);
	
	// 신청 내용 조회(이용자)
	List<ApplyVO> getMyApp();
	
	// 신청 목록 조회(관리자)
	List<ApplyVO> getList();
	
	// 신청 취소
	int deleteMyApp();
	
}
