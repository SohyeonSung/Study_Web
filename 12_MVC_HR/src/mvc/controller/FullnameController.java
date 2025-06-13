package mvc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// /fullname 요청(GET, POST)을 받아 fullname.jsp 화면이동
@WebServlet("/fullname")
public class FullnameController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> fullnameController doGet() 실행~");
		// fullname.jsp 페이지로 응답처리(페이지 이동)
		request.getRequestDispatcher("fullname.jsp").forward(request, response);
	}
	
}
