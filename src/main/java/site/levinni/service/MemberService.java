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
		
		/* 카카오 로그인 */
		//카카오 회원가입
		void kakaoJoin(MemberVO memberVO);
		//카카오 로그인
		MemberVO kakaoLogin(String snsId);
		//회원아이디로 권한찾기
		String findAuthBy(String userid);
		//snsId로 회원 아이디 찾기
		String findUserIdBy2(String snsId);
		//회원아이디로 멤버객체찾기
		MemberVO findByUserId(String userid);
		
		
}
