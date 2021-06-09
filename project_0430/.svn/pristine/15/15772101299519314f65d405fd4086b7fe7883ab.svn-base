package site.levinni.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BoardVO {
	private Long bno;
	private String category;
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	private int replyCnt;
	private int hitCount;
	private boolean secret;
	private String membername; 	// 작성자 이름
	private String partId; 		// 일부 * 처리 된 아이디
	private List<BoardAttachVO> attachList = new ArrayList<BoardAttachVO>();
}
