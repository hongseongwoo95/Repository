package mvc.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import mvc.database.DBConnection;

public class BoardDAO 
{
	private static BoardDAO instance;
	
	private BoardDAO() 
	{
		
	}
	public static BoardDAO getInstance() 
	{
		if (instance == null)
			instance = new BoardDAO();
		return instance;
	}	
	//board 테이블의 레코드 갯수
	public int getListCount(String items, String text) 
	{
		Connection conn = null; /* db연결 */
		PreparedStatement pstmt = null; /*sql 생성*/
		ResultSet rs = null; /*db에서 결과값받기. 앞으로 이 안에서 필요한것만 꺼내고 반환할거임 */

		int x = 0;

		String sql;
		
		if (items == null && text == null)
			sql = "select  count(*) from board";
		else
			sql = "SELECT   count(*) FROM board where " + items + " like '%" + text + "%'";
		
		try 
		{
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) 
				x = rs.getInt(1); /* x=result임을 알 수 있다 */
			
		} 
		catch (Exception ex) 
		{
			System.out.println("getListCount() 에러: " + ex);
		} 
		finally 
		{			
			try 
			{				
				if (rs != null) 
					rs.close();							
				if (pstmt != null) 
					pstmt.close();				
				if (conn != null) 
					conn.close();												
			} 
			catch (Exception ex) 
			{
				throw new RuntimeException(ex.getMessage());
			}		
		}		
		return x;
	}
	//board 테이블의 레코드 가져오기
	public ArrayList<BoardDTO> getBoardList(int page, int limit, String items, String text) 
	{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		int total_record = getListCount(items, text );
		
		/* 게시판 글 넘버를 각 페이지에서 출력하는 구문 */
		int start = (page - 1) * limit; /*  limit = 각 페이지에 띄울 게시글의 숫자 */
		int index = start + 1; /* 내가 현재 페이지에서 출력하기 시작할 넘버 */

		String sql;

		if (items == null && text == null)
			sql = "select * from board ORDER BY num DESC"; /* 내림차순으로 정렬해서 가져오기 */
		else
			sql = "SELECT  * FROM board where " + items + " like '%" + text + "%' ORDER BY num DESC ";

		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();

		try 
		{
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.absolute(index)) { /* resultset을 화면에 뿌리는 반복문. absolute=지정된 해당 커서로 바로 이동.절대위치. */
				BoardDTO board = new BoardDTO();
				board.setNum(rs.getInt("num"));
				board.setId(rs.getString("id"));
				board.setName(rs.getString("name"));
				board.setSubject(rs.getString("subject"));
				board.setContent(rs.getString("content"));
				board.setRegist_day(rs.getString("regist_day"));
				board.setHit(rs.getInt("hit"));
				board.setIp(rs.getString("ip"));
				list.add(board);
			   /*	  1			0  +  5		 *   1		     12         */
				if (index < (start + limit) && index <= total_record) /* 화면에 5개씩 뿌려라 && 총 갯수 12개를 넘지마라 */
					index++;
				else
					break;
			}
			return list;
		} 
		catch (Exception ex) 
		{
			System.out.println("getBoardList() 에러 : " + ex);
		} 
		finally 
		{
			try 
			{
				if (rs != null) 
					rs.close();							
				if (pstmt != null) 
					pstmt.close();				
				if (conn != null) 
					conn.close();
			} 
			catch (Exception ex) 
			{
				throw new RuntimeException(ex.getMessage());
			}			
		}
		return null;
	}
	//member 테이블에서 인증된 id의 사용자명 가져오기
	public String getLoginNameById(String id) 
	{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;	

		String name=null;
		String sql = "select * from member where id = ? "; /* member테이블의 행 중 아이디가 ?인것만 가져옴(where은 한 행만 반환). dto 하나만 반환하는 셈. */

		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) /* 하나만 가져왔기때문에 while을 안돌림 */
				name = rs.getString("name"); /* name 하나만 받아옴. 받아와서 변수에 담음 */
			
			return name; /* db에서 옮긴 dto의 데이터 name을 반환 */
		} 
		catch (Exception ex) 
		{
			System.out.println("getBoardByNum() 에러 : " + ex);
		} 
		finally 
		{
			try 
			{				
				if (rs != null) 
					rs.close();							
				if (pstmt != null) 
					pstmt.close();				
				if (conn != null) 
					conn.close();
			} 
			catch (Exception ex) 
			{
				throw new RuntimeException(ex.getMessage());
			}		
		}
		return null;
	}

	//board 테이블에 새로운 글 삽입히기
	public void insertBoard(BoardDTO board) /* void=resultset 없음 */
	{

		Connection conn = null;
		PreparedStatement pstmt = null;
		try 
		{
			conn = DBConnection.getConnection();		

			String sql = "insert into board values(?, ?, ?, ?, ?, ?, ?, ?)";
		
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, board.getNum());
			pstmt.setString(2, board.getId());
			pstmt.setString(3, board.getName());
			pstmt.setString(4, board.getSubject());
			pstmt.setString(5, board.getContent());
			pstmt.setString(6, board.getRegist_day());
			pstmt.setInt(7, board.getHit());
			pstmt.setString(8, board.getIp());

			pstmt.executeUpdate();
		} 
		catch (Exception ex) 
		{
			System.out.println("insertBoard() 에러 : " + ex);
		} 
		finally 
		{
			try 
			{									
				if (pstmt != null) 
					pstmt.close();				
				if (conn != null) 
					conn.close();
			} catch (Exception ex) {
				throw new RuntimeException(ex.getMessage());
			}		
		}		
	} 
	//선택된 글의 조회수 증가하기
	public void updateHit(int num) 
	{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null; /* 반환을 받는다 */
		
		try 
		{
			conn = DBConnection.getConnection();

			String sql = "select hit from board where num = ? "; /* hit 컬럼만 받는다 */
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			int hit = 0; /* 변수초기화. 안하면 에러날수도. */

			if (rs.next())
				hit = rs.getInt("hit") + 1; /* 조회수 1 올리기 */
		
			sql = "update board set hit=? where num=?";
			pstmt = conn.prepareStatement(sql);		
			pstmt.setInt(1, hit);
			pstmt.setInt(2, num); /* 조회수 1을 올려서 set함 */
			pstmt.executeUpdate();
		} 
		catch (Exception ex) 
		{
			System.out.println("updateHit() 에러 : " + ex);
		} 
		finally 
		{
			try 
			{
				if (rs != null) 
					rs.close();							
				if (pstmt != null) 
					pstmt.close();				
				if (conn != null) 
					conn.close();
			} 
			catch (Exception ex) 
			{
				throw new RuntimeException(ex.getMessage());
			}			
		}
	}
	//선택된 글 상세 내용 가져오기
	public BoardDTO getBoardByNum(int num, int page) 
	{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardDTO board = null;

		updateHit(num);
		String sql = "select * from board where num = ? ";

		try 
		{
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				board = new BoardDTO();
				board.setNum(rs.getInt("num"));
				board.setId(rs.getString("id"));
				board.setName(rs.getString("name"));
				board.setSubject(rs.getString("subject"));
				board.setContent(rs.getString("content"));
				board.setRegist_day(rs.getString("regist_day"));
				board.setHit(rs.getInt("hit"));
				board.setIp(rs.getString("ip"));
			}
			
			return board;
		} 
		catch (Exception ex) 
		{
			System.out.println("getBoardByNum() 에러 : " + ex);
		} 
		finally 
		{
			try 
			{
				if (rs != null) 
					rs.close();							
				if (pstmt != null) 
					pstmt.close();				
				if (conn != null) 
					conn.close();
			} 
			catch (Exception ex) 
			{
				throw new RuntimeException(ex.getMessage());
			}		
		}
		return null;
	}
	//선택된 글 내용 수정하기
	public void updateBoard(BoardDTO board)  /* void=resultset 없음 */
	{
		Connection conn = null;
		PreparedStatement pstmt = null; /* 반환받는 Resultset이 없다 = 이 함수는 set하는 함수다 */
	
		try 
		{
			String sql = "update board set name=?, subject=?, content=? where num=?";

			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			conn.setAutoCommit(false);

			pstmt.setString(1, board.getName());
			pstmt.setString(2, board.getSubject());
			pstmt.setString(3, board.getContent());
			pstmt.setInt(4, board.getNum());

			pstmt.executeUpdate();			
			conn.commit();

		} 
		catch (Exception ex) 
		{
			System.out.println("updateBoard() 에러 : " + ex);
		} 
		finally 
		{
			try 
			{										
				if (pstmt != null) 
					pstmt.close();				
				if (conn != null) 
					conn.close();
			} 
			catch (Exception ex) 
			{
				throw new RuntimeException(ex.getMessage());
			}		
		}
	} 
	//선택된 글 삭제하기
	public void deleteBoard(int num)  /* void=resultset 없음 */
	{
		Connection conn = null;
		PreparedStatement pstmt = null;		/* 반환받는 Resultset이 없다 = 이 함수는 set하는 함수다 */

		String sql = "delete from board where num=?";	

		try 
		{
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();

		} 
		catch (Exception ex) 
		{
			System.out.println("deleteBoard() 에러 : " + ex);
		} 
		finally 
		{
			try 
			{										
				if (pstmt != null) 
					pstmt.close();				
				if (conn != null) 
					conn.close();
			} 
			catch (Exception ex) 
			{
				throw new RuntimeException(ex.getMessage());
			}		
		}
	}	
}