package site.levinni.service;

import site.levinni.domain.MemberVO;

public interface MemberService {
		// 가입
		void join(MemberVO memberVO);
		// 로그인
		void login(MemberVO memberVO);
		// 로그아웃
		void logout(MemberVO memberVO);
		// 정보수정
		void modify(MemberVO memberVO);
		// 탈퇴
		void remove(MemberVO memberVO);
		// 수정 및 삭제를 위한 비밀번호 체크
		int checkPw(String userid, String userpw);
		// 회원 상세조회
		MemberVO read(String userid);
		
}
