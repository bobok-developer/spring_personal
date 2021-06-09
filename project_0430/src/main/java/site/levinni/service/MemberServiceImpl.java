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
	
	
}
