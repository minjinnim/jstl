package javafile;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.dao.MemberDAO;
import member.vo.MemberVO;

@WebServlet("/member/*")
public class MemberController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri=req.getRequestURI();
		String[] uris=uri.split("/");
		
		if(uris[2].equals("findOne")) {
			int idx=Integer.parseInt(req.getParameter("idx"));
			//데이터베이스에서 값을 가져옴
			MemberVO member=new MemberDAO().findOne(idx);
			//데이터 가져와 다른페이지에 전달하기 위해서 저장
			req.setAttribute("member", member);
			//저장 후 페이지로 이동
			req.getRequestDispatcher("/WEB-INF/findOne.jsp").forward(req, resp);
			//findOne.jsp 페이지 만들고 저장된 데이터 활용해 view 생성
			
		}
			
	}
}
