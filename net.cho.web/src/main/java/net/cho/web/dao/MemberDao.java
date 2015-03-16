package net.cho.web.dao;

import java.util.List;

import net.cho.web.model.MemberVo;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	//iBatis=> SqlMapClientTemplate클래스=> Medial파일 dao문서
	//MyBatis=> SqlSessionTemplate클래스=>getter/setter
	@Autowired
	private  SqlSessionTemplate  sqlSession;
	
	public void dbInsert(MemberVo Mvo){
		try{
			System.out.println("\nBoardDAO.java dbInsert(BoardDTO)" );
	    	sqlSession.insert("joinMember", Mvo);
			System.out.println("BoardDAO.java 저장성공  12:22  3:25 ") ;
		}catch(Exception ex){ 
			ex.printStackTrace();
		}
	}//end
	
	public  List<MemberVo> dbSelect( ){
		List<MemberVo> list = sqlSession.selectList("selectAllMembers");
		System.out.println("\nBoardDAO.java dbInsert(BoardDTO)" );
		return list ;
	}//end
	
	public  MemberVo dbDetail(int idx ){
		MemberVo  dto = sqlSession.selectOne("detailMember", idx);
		System.out.println("\nBoardDAO.java dbDetail(BoardDTO)" );
		return dto ;
	}//end
	
	public void dbDelete(int idx ){
		sqlSession.delete("deleteMember", idx);
		System.out.println("\nBoardDAO.java dbDelete(BoardDTO) 삭제성공" );		
	}//end

	public void dbEdit(MemberVo mvo){
		try{
			System.out.println("\nBoardDAO.java dbEdit(BoardDTO)" );
	    	sqlSession.update("editMember", mvo);
			System.out.println("BoardDAO.java dbEdit(BoardDTO) 수정성공 ") ;
		}catch(Exception ex){ 
			ex.printStackTrace();
		}
	}//end
	
	
}//class END





