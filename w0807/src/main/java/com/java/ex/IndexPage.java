package com.java.ex;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/IndexPage")
public class IndexPage extends HttpServlet {
	
	// doGet으로 들어오던지 doPost로 들어오던지 항상 doAction을 실행시켜보세요.
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction 실행");
		// 프로그램을 구현하면 됨
	}

	// get 방식으로 들어올때 호출 (url)
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("goGet으로 호출되어 실행되었습니다.!!!");
		doAction(request, response);
	}

	// post 방식으로 들어올때 호출 (form)
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost로 호출되어 실행되었습니다.!!!");
		doAction(request, response);
	}

}
