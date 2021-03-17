package repository.announcement;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.DTO.AnnDTO;

public class AnnRepository {
   @Autowired
   private SqlSession sqlSession;
   private final String namespace="mappers.announcement.annMapper";
   String statement;
   public Integer insertAnn(AnnDTO annDTO) {
      statement = namespace + ".insertAnn";
      return sqlSession.update(statement, annDTO);
   }
   public List<AnnDTO> getAnnList(AnnDTO annDTO){
	   statement = namespace + ".getAnnList";
	   return sqlSession.selectList(statement, annDTO);
   }
   public Integer getCount() {
	   statement = namespace + ".getCount";
	   return sqlSession.selectOne(statement);
   }
}