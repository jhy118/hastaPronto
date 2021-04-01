package repository.goods;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import model.DTO.GoodsDTO;

@Repository
@Component
public class GoodsRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.goods.goodsMapper";
	String statement;

	public Integer insertGoods(GoodsDTO goodsDTO) {
		statement = namespace + ".insertGoods";
		return sqlSession.insert(statement, goodsDTO);
	}

	public List<GoodsDTO> getGoodsList(GoodsDTO goodsDTO) {
		statement = namespace + ".getGoodsList";
		return sqlSession.selectList(statement, goodsDTO);
	}

	public Integer getGoodsCount() {
		statement = namespace + ".getGoodsCount";
		return sqlSession.selectOne(statement);
	}

	public Integer updateGoods(GoodsDTO goodsDTO) {
		statement = namespace + ".updateGoods";
		return sqlSession.update(statement, goodsDTO);
	}

	public Integer deleteGoods(GoodsDTO goodsDTO) {
		statement = namespace + ".deleteGoods";
		return sqlSession.update(statement, goodsDTO);
	}

}