package site.levinni.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.extern.log4j.Log4j;
import site.levinni.domain.MemberVO;
import site.levinni.mapper.MemberMapper;

@Service
@Log4j

public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberMapper mapper;
	@Autowired @Qualifier("BCryptPasswordEncoder")
	private PasswordEncoder encoder;
	
	@Override
	@Transactional
	public void join(MemberVO memberVO) {
		String encPassword = encoder.encode(memberVO.getUserpw());
		memberVO.setUserpw(encPassword);
		mapper.register(memberVO);
		mapper.authorize(memberVO);
		log.info(memberVO);
	}

	@Override
	public void login(MemberVO memberVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void logout(MemberVO memberVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modify(MemberVO memberVO) {
		String encPassword = encoder.encode(memberVO.getUserpw());
		memberVO.setUserpw(encPassword);
		mapper.modify(memberVO);
		log.info(memberVO);
	}

	@Override
	public void remove(MemberVO memberVO) {
		mapper.remove(memberVO);
	}

	@Override
	public int checkPw(String userid, String userpw) {
		int result = mapper.checkPw(userid, userpw);
		return result;
	}

	@Override
	public MemberVO read(String userid) {
		// TODO Auto-generated method stub
		return mapper.read(userid);
	}

	/* 카카오 로그인 */
	@Override
	public void kakaoJoin(MemberVO memberVO) {
		mapper.kakaoInsert(memberVO);
		String userid = memberVO.getUserid();
		log.info("userid:: " + userid);
		mapper.authorize(memberVO);
	}

	@Override
	public MemberVO kakaoLogin(String snsId) {
		log.info("snsId:: " + snsId);
		return mapper.kakaoSelect(snsId);
	}

	@Override
	public String findAuthBy(String userid) {
		log.info("userid:: " + userid);
		return mapper.findAuthBy(userid);
	}

	@Override
	public String findUserIdBy2(String snsId) {
		log.info("snsId:: " + snsId);
		return mapper.findUserIdBy2(snsId);
	}

	@Override
	public MemberVO findByUserId(String userid) {
		// TODO Auto-generated method stub
		return mapper.read(userid);
	}
	
	
}
