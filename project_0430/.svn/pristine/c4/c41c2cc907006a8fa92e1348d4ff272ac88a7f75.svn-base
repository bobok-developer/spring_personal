package site.levinni.domain;

import lombok.Data;

@Data
public class PageDTO {
	private int startPage;
	private int endPage;
	private int realEnd;
	private boolean prev;
	private boolean next;
	
	private int total;
	private Criteria cri;
	
	public PageDTO(Criteria cri, int total) {
		this.cri = cri;
		this.total = total;
		
		endPage = (cri.getPageNum() + 9) / 10 * 10;
		startPage = endPage - 9;
		
		realEnd = (total + 9) / 10; // 댓글 총 개수의 진짜 마지막 페이지
		endPage = realEnd < endPage ? realEnd : endPage;
		
		prev = startPage > 1;
		next = endPage < realEnd;
		
		
				/*
				 * 게시글 총 개수  끝페이지 넘버
				 * 9		1
				 * 10		1
				 * 11		2
				 * 12		2
				 * 13		2
				 * 19		2
				 * 20		2
				 * 21		3
				 */
		
	}
}
