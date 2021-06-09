package site.levinni.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import site.levinni.domain.Criteria;
import site.levinni.domain.ReplyPageDTO;
import site.levinni.domain.ReplyVO;
import site.levinni.service.ReplyService;

@RestController
@RequestMapping("/replies/")
@Log4j
@AllArgsConstructor
public class ReplyController {
	private ReplyService service;
	
	// 등록
	@PostMapping("new")
	@PreAuthorize("isAuthenticated()")
	public ResponseEntity<String> create(@RequestBody ReplyVO vo) {
		log.info(vo);
		int insertCount = service.register(vo);
		log.info("insertCount :: " + insertCount);
		return insertCount == 1 ?
				new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	// 조회
	@GetMapping("{rno}")
	public ResponseEntity<ReplyVO> get(@PathVariable Long rno) {
		log.info("get: " + rno);
		return new ResponseEntity<>(service.get(rno), HttpStatus.OK);
	}
	// 수정
	@RequestMapping(value="{rno}", method={RequestMethod.PUT, RequestMethod.PATCH})
	@PreAuthorize("principal.username == #vo.replyer")
	public ResponseEntity<String> modify(@PathVariable Long rno, @RequestBody ReplyVO vo) {
		log.info(vo);
		vo.setRno(rno);
		int updateCount = service.modify(vo);
		log.info("insertCount :: " + updateCount);
		return updateCount == 1 ?
				new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	// 삭제
	@DeleteMapping("{rno}")
//	@PreAuthorize("principal.username == #vo.replyer")
	public ResponseEntity<String> remove(@PathVariable("rno") Long rno) {
		log.info("remove: " + rno);
		
		return service.remove(rno) == 1 ?
				new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	// 페이지(목록)
	@GetMapping("pages/{page}/{bno}")
	public ResponseEntity<ReplyPageDTO> getList(@PathVariable int page, @PathVariable long bno) {
		log.info("getList");
		Criteria cri = new Criteria(page, 10);
		return new ResponseEntity<>(service.getListPage(cri, bno), HttpStatus.OK);
	}
	
	// 페이지(더보기)
	@GetMapping({"more/{bno}", "more/{bno}/{rno}"})
	public ResponseEntity<List<ReplyVO>> getListMore(@PathVariable Long bno, @PathVariable Optional<Long> rno) {
		log.info("getListMore");
		return new ResponseEntity<>(service.getListMore(rno.isPresent() ? rno.get(): null , bno), HttpStatus.OK);
	}
}
