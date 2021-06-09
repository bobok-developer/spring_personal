package site.levinni.mapper;

import site.levinni.domain.MemberVO;

public interface MemberMapper {
	MemberVO read(String userid); 					// 회원 정보 조회
	void register(MemberVO vo); 					// 회원 가입
	void authorize (MemberVO memberVO); 			// 회원 권한
	void modify(MemberVO vo); 					// 회원 정보 수정 
	void remove(MemberVO vo); 						// 회원 탈퇴
	int checkPw(String userid, String userpw); 	// 수정 및 삭제를 위한 비밀번호 체크
}
