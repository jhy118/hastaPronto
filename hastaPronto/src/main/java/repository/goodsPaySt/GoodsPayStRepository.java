package repository.goodsPaySt;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.DTO.AnnDTO;
import model.DTO.GoodsPayStDTO;

@Repository
public class GoodsPayStRepository {
	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "mappers.goodsPaySt.goodsPayStMapper";
	String statement;
	
	public Integer payStInsert(GoodsPayStDTO goodsPayStDTO) {
		String statement = namespace + ".payStInsert";
		return sqlSession.update(statement, goodsPayStDTO);
	}
	public List<GoodsPayStDTO> getGoodsPayStList(GoodsPayStDTO goodsPayStDTO) {
		String statement = namespace + ".getGoodsPayStList";
		return sqlSession.selectList(statement, goodsPayStDTO);
	}
	public Integer getCount(Integer osNo) {
		String statement = namespace + ".getCount";
		return sqlSession.selectOne(statement, osNo);
	}//getOneGoodsPaySt
	public GoodsPayStDTO getOneGoodsPaySt(GoodsPayStDTO goodsPayStDTO) {
		statement = namespace + ".getOneGoodsPaySt";
		return sqlSession.selectOne(statement, goodsPayStDTO);
	}//update
	public Integer updateBillSt(GoodsPayStDTO dto) {
		statement = namespace + ".updateBillSt";
		return sqlSession.update(statement, dto);
	}//deleteBillSt
	public void deleteBillSt(String goodsPayNo) {
		String statement = namespace + ".deleteBillSt";
		sqlSession.update(statement, goodsPayNo);
	}
}
