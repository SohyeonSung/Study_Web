package mvc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.model.dao.EmployeeDAO;
import mvc.model.vo.EmployeeVO;

// /fullnameList 요청을 받아 DB에서 검색 후 fullnameList.jsp 응답처리

@WebServlet("/fullnameList")
public class FullnameListController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("> FullnameListController doGet() 실행~");
		//전달받은 부서코드로 DB데이터 조회 후 FullnameList.jsp 응답처리(위임처리)
		//1. 전달받은 파라미터 값 (이름:fullname) 추출 사용
		String fullname = req.getParameter("fullname");

		
		//2. DB에서 해당부서(fullname)에 있는 직원 조회
		List<EmployeeVO> list = EmployeeDAO.getFullnameList(fullname);
		
		//3. 조회된 데이터를 응답페이지(FullnameList.jsp)에서 사용토록 설정
		req.setAttribute("list", list);
		

		//4. 응답페이지(FullnameList.jsp)로 위임(forward)처리
		req.getRequestDispatcher("fullnameList.jsp").forward(req, resp);
	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("> FullnameListController doPost() 실행~");
		doGet(req, resp);
	}
}
