package site.levinni.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 진료 예약 신청 VO
 * @date 21. 08. 06.
 *
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ApplyVO {
	private int ano; 		// 신청 번호
	private String id; 		// 회원 아이디
	private String name; 	// 회원 이름
	private String email; 	// 회원 이메일
	private String tel; 	// 회원 전화번호
	private String wishDate; 	// 희망 예약 날짜
	private String subject; // 진료 과목
}
