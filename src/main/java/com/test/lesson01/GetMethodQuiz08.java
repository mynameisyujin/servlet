package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		String searchWord = request.getParameter("searchWord");
		
		
		
		PrintWriter out = response.getWriter();
		
		out.print("<html><head><title>검색 결과</title></head><body>");
		
		
//		Iterator<String> iter = list.iterator();
//		while (iter.hasNext()) {
//			String line = iter.next();
//			if (line.contains(searchWord)) {
//				out.print(line + "<br>");
//		}

	
			
			
		// 보너스 풀이 1 (split)
//		for (int i = 0; i < list.size(); i++) {
//			String str = list.get(i);
//			if (str.contains(searchWord)) {
//				String[] words = str.split(searchWord);
//				out.print(words[0] + "<b>" + searchWord + "</b>" + words[1] + "<br>");
//			} else {
//				continue;
//			}
//		}

		// 보너스 풀이 2 (치환)
		for (int i = 0; i < list.size(); i++) {
			String str = list.get(i);
			if (str.contains(searchWord)) {
				String str1 = str.replace(searchWord, "<b>" + searchWord + "</b>");
				out.print(str1 + "<br>");
			} else {
				continue;
			}
		}
		
		out.print("</body></html>");
	
		
	}

}
