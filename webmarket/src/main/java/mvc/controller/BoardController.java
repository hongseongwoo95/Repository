package mvc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.model.BoardDAO;
import mvc.model.BoardDTO;

public class BoardController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	static final int LISTCOUNT = 5;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());

		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		if (command.equals("/BoardListAction.do")) 
		{
			requestBoardList(request);
			System.out.println("게시판찾기");
			RequestDispatcher rd = request.getRequestDispatcher("./board/list.jsp");
			rd.forward(request, response);
		} 
		else if (command.equals("/BoardWriteForm.do")) 
		{
			requestLoginName(request);
			RequestDispatcher rd = request.getRequestDispatcher("./board/writeForm.jsp");
			rd.forward(request, response);
		} 
		else if (command.equals("/BoardWriteAction.do")) 
		{
			requestBoardWrite(request);
			RequestDispatcher rd = request.getRequestDispatcher("/BoardListAction.do");
			rd.forward(request, response);
		} 
		else if (command.equals("/BoardViewAction.do")) 
		{
			requestBoardView(request);
			RequestDispatcher rd = request.getRequestDispatcher("/BoardView.do");
			rd.forward(request, response);
		} 
		else if (command.equals("/BoardView.do")) 
		{
			RequestDispatcher rd = request.getRequestDispatcher("./board/view.jsp");
			rd.forward(request, response);
		} 
		else if (command.equals("/BoardUpdateAction.do")) 
		{
			requestBoardUpdate(request);
			RequestDispatcher rd = request.getRequestDispatcher("/BoardListAction.do");
			rd.forward(request, response);
		} 
		else if (command.equals("/BoardDeleteAction.do")) 
		{
			requestBoardDelete(request);
			RequestDispatcher rd = request.getRequestDispatcher("/BoardListAction.do");
			rd.forward(request, response);
		}
	}

	public void requestBoardList(HttpServletRequest request) 
	{

		BoardDAO dao = BoardDAO.getInstance();
		List<BoardDTO> boardlist = new ArrayList<BoardDTO>(); // 다형성 사용

		int pageNum = 1;
		int limit = LISTCOUNT;

		if (request.getParameter("pageNum") != null)
			pageNum = Integer.parseInt(request.getParameter("pageNum")); // 문자열 형태인 request를 integer로 캐스팅

		String items = request.getParameter("items"); // 게시글 검색시 사용
		String text = request.getParameter("text"); // 게시글 검색시 사용
		/* 12 */
		int total_record = dao.getListCount(items, text); /* 전체 row 갯수 파악 */
		boardlist = dao.getBoardList(pageNum, limit, items, text); /* 내 arraylist에 게시글 5개 갖고오기 */

		int total_page;

		if (total_record % limit == 0) { // 총 페이지 수 구하는 식
			total_page = total_record / limit;
			Math.floor(total_page); /* 딱 떨어지면 끝 */
		} 
		else 
		{
			total_page = total_record / limit;
			Math.floor(total_page);
			total_page = total_page + 1; /* 딱 안 떨어지면 페이지+1 */
		}
		
		/* 준비된 재료 다 담기 */
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("total_page", total_page);
		request.setAttribute("total_record", total_record);
		request.setAttribute("boardlist", boardlist);
	}

	public void requestLoginName(HttpServletRequest request) 
	{

		String id = request.getParameter("id");

		BoardDAO dao = BoardDAO.getInstance();

		String name = dao.getLoginNameById(id);

		request.setAttribute("name", name);
	}

	public void requestBoardWrite(HttpServletRequest request) 
	{

		BoardDAO dao = BoardDAO.getInstance();

		BoardDTO board = new BoardDTO();
		board.setId(request.getParameter("id"));
		board.setName(request.getParameter("name"));
		board.setSubject(request.getParameter("subject"));
		board.setContent(request.getParameter("content"));

		System.out.println(request.getParameter("name"));
		System.out.println(request.getParameter("subject"));
		System.out.println(request.getParameter("content"));
		java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy/MM/dd(HH:mm:ss)");
		String regist_day = formatter.format(new java.util.Date());

		board.setHit(0);
		board.setRegist_day(regist_day);
		board.setIp(request.getRemoteAddr());

		dao.insertBoard(board);
	}

	public void requestBoardView(HttpServletRequest request) 
	{

		BoardDAO dao = BoardDAO.getInstance();
		int num = Integer.parseInt(request.getParameter("num"));
		int pageNum = Integer.parseInt(request.getParameter("pageNum"));

		BoardDTO board = new BoardDTO();
		board = dao.getBoardByNum(num, pageNum);

		request.setAttribute("num", num);
		request.setAttribute("page", pageNum);
		request.setAttribute("board", board);
	}

	public void requestBoardUpdate(HttpServletRequest request) 
	{

		int num = Integer.parseInt(request.getParameter("num"));
		int pageNum = Integer.parseInt(request.getParameter("pageNum"));

		BoardDAO dao = BoardDAO.getInstance();

		BoardDTO board = new BoardDTO();
		board.setNum(num);
		board.setName(request.getParameter("name"));
		board.setSubject(request.getParameter("subject"));
		board.setContent(request.getParameter("content"));

		java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy/MM/dd(HH:mm:ss)");
		String regist_day = formatter.format(new java.util.Date());

		board.setHit(0);
		board.setRegist_day(regist_day);
		board.setIp(request.getRemoteAddr());

		dao.updateBoard(board);
	}

	public void requestBoardDelete(HttpServletRequest request) 
	{

		int num = Integer.parseInt(request.getParameter("num"));
		int pageNum = Integer.parseInt(request.getParameter("pageNum"));

		BoardDAO dao = BoardDAO.getInstance();
		dao.deleteBoard(num);
	}
}
