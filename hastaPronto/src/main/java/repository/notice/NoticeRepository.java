package repository.notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.DTO.NoticeDTO;

public class NoticeRepository {
	@Autowired 
	SqlSession sqlSession;
	String namespace = "mappers.notice.noticeMapper";
	String statement;
	
	public Integer insertNotice(NoticeDTO noticeDTO) {
		statement = namespace + ".insertNotice";
		return sqlSession.insert(statement, noticeDTO);
	}

	public List<NoticeDTO> getNoticeList(NoticeDTO noticeDTO) {
		statement = namespace + ".getNoticeList";
		return sqlSession.selectList(statement, noticeDTO);
	}

	public Integer getNoticeCount() {
		statement = namespace + ".getNoticeCount";
		return sqlSession.selectOne(statement);
	}

	public Integer updateReadCount(String noticeNo) {
		statement = namespace + ".updateReadCount";
		return sqlSession.update(statement, noticeNo);
	}

	public List<Integer> getNoticeNo() {
		statement = namespace + ".getNoticeNo";
		return sqlSession.selectList(statement);
	}

	public Integer updateNotice(NoticeDTO noticeDTO) {
		statement = namespace + ".updateNotice";
		return sqlSession.update(statement, noticeDTO);
	}

	public Integer deleteNotice(String noticeNo) {
		statement = namespace + ".deleteNotice";
		return sqlSession.update(statement, noticeNo);
	}
}
