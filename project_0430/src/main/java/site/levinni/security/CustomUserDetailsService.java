package site.levinni.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import lombok.Data;
import lombok.extern.log4j.Log4j;
import site.levinni.domain.MemberVO;
import site.levinni.mapper.MemberMapper;
import site.levinni.security.domain.CustomUser;

@Log4j
@Data
public class CustomUserDetailsService implements UserDetailsService{
	@Autowired
	private MemberMapper memberMapper;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		log.warn("username:: " + username);
		
		MemberVO vo = memberMapper.read(username);
		log.warn("member mapper's vo:: " + vo);
		
		return vo == null ? null : new CustomUser(vo);
	}

}
