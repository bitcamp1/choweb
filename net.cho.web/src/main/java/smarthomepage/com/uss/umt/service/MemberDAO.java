package smarthomepage.com.uss.umt.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import smarthomepage.com.uss.umt.MemberVO;

@Repository
public class MemberDAO {
	//iBatis=> SqlMapClientTemplate클래스=> Medial파일 dao문서
	//MyBatis=> SqlSessionTemplate클래스=>getter/setter
	@Autowired
	private  SqlSessionTemplate  sqlSession;
	
	public void dbInsert(MemberVO Mvo){
		try{
			System.out.println("\nBoardDAO.java dbInsert(BoardDTO)" );
	    	sqlSession.insert("joinMember", Mvo);
			System.out.println("BoardDAO.java 저장성공  12:22  3:25 ") ;
		}catch(Exception ex){ 
			ex.printStackTrace();
		}
	}//end
	
	public  List<MemberVO> dbSelect( ){
		List<MemberVO> list = sqlSession.selectList("selectAllMembers");
		System.out.println("\nBoardDAO.java dbInsert(BoardDTO)" );
		return list ;
	}//end
	
	public  MemberVO dbDetail(int idx ){
		MemberVO  dto = sqlSession.selectOne("detailMember", idx);
		System.out.println("\nBoardDAO.java dbDetail(BoardDTO)" );
		return dto ;
	}//end
	
	public void dbDelete(int idx ){
		sqlSession.delete("deleteMember", idx);
		System.out.println("\nBoardDAO.java dbDelete(BoardDTO) 삭제성공" );		
	}//end

	public void dbEdit(MemberVO mvo){
		try{
			System.out.println("\nBoardDAO.java dbEdit(BoardDTO)" );
	    	sqlSession.update("editMember", mvo);
			System.out.println("BoardDAO.java dbEdit(BoardDTO) 수정성공 ") ;
		}catch(Exception ex){ 
			ex.printStackTrace();
		}
	}//end
	
	
}//class END





