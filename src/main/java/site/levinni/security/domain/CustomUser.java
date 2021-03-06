package site.levinni.security.domain;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import site.levinni.domain.AuthVO;
import site.levinni.domain.MemberVO;
@Getter
@Setter
@ToString
public class CustomUser extends User{
	private MemberVO vo;
	
	public CustomUser(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}

	public CustomUser(MemberVO vo) {
		super(vo.getUserid(), vo.getUserpw(), vo.getAuthList().stream().map(
				a -> new SimpleGrantedAuthority(a.getAuth())).collect(Collectors.toList()));
		this.vo = vo;
	}
	
	
	public static List<GrantedAuthority> getList(MemberVO vo) {
		List<GrantedAuthority> list = new ArrayList<GrantedAuthority>();
		List<AuthVO> authList = vo.getAuthList();
		for(int i = 0 ; i < authList.size() ; i++) {
			String auth = authList.get(i).getAuth();
			GrantedAuthority ga = new SimpleGrantedAuthority(auth);
			list.add(ga);
		}
		return list;
	}
}