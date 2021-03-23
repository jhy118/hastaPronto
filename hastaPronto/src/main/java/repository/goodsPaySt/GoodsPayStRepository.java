package repository.goodsPaySt;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.DTO.GoodsPayStDTO;

@Repository
public class GoodsPayStRepository {
	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "mappers.goodsPaySt.goodsPayStMapper";
	String statement;
	//getGoodsPayStList
	public Integer payStInsert(GoodsPayStDTO goodsPayStDTO) {
		String statement = namespace + ".payStInsert";
		return sqlSession.update(statement, goodsPayStDTO);
	}
	public List<GoodsPayStDTO> getGoodsPayStList(GoodsPayStDTO goodsPayStDTO) {
		String statement = namespace + ".getGoodsPayStList";
		return sqlSession.selectList(statement, goodsPayStDTO);
	}
	public Integer getCount() {
		String statement = namespace + ".getCount";
		return sqlSession.selectOne(statement);
	}
}
