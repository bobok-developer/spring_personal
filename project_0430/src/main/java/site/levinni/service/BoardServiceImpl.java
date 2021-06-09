package site.levinni.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import site.levinni.domain.BoardAttachVO;
import site.levinni.domain.BoardVO;
import site.levinni.domain.Criteria;
import site.levinni.mapper.BoardAttachMapper;
import site.levinni.mapper.BoardMapper;

@Service
@Log4j
@AllArgsConstructor
public class BoardServiceImpl implements BoardService{
	private BoardMapper boardMapper;
	private BoardAttachMapper boardAttachMapper;

	@Override
	@Transactional
	public void register(BoardVO boardVO) {
		log.info("register...boardVO:: " + boardVO);
		boardMapper.insertSelectKey(boardVO); // 이 시점에 bno 생성됨
		boardVO.getAttachList().forEach(a -> {
			a.setBno(boardVO.getBno());
			boardAttachMapper.insert(a);
		});
	}

	@Override
	@Transactional
	public BoardVO get(Long bno) {
		BoardVO boardVO = new BoardVO();
		boardMapper.updateHitCount(bno);
		return boardMapper.read(bno);
	}

	@Override
	@Transactional
	public boolean modify(BoardVO boardVO) {
		// TODO Auto-generated method stub
		log.info("modify...." + boardVO);
		boardAttachMapper.deleteAll(boardVO.getBno());
		boardVO.getAttachList().forEach(a -> {
			a.setBno(boardVO.getBno());
			boardAttachMapper.insert(a);
		});
		return boardMapper.update(boardVO) > 0;
	}

	@Override
	@Transactional
	public boolean remove(Long bno) {
		// TODO Auto-generated method stub
		boardAttachMapper.deleteAll(bno);
		return boardMapper.delete(bno) > 0;
	}

	@Override
	public List<BoardVO> getList(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("getList....");
		return boardMapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("getTotal...");
		return boardMapper.getTotalCount(cri);
	}

	@Override
	public List<BoardAttachVO> getAttachList(Long bno) {
		// TODO Auto-generated method stub
		log.info("getAttachList..." + bno);
		return boardAttachMapper.findBy(bno);
	}
}
