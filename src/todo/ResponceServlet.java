package todo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ResponceServlet")
public class ResponceServlet extends HttpServlet {
	int cnt = 0;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		cnt++;
		String naiyou = request.getParameter("nai");
		String imp = request.getParameter("important");

		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>TODO</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>TODOアプリケーション</h1>");
		out.println("あなたは" + cnt + "番目の訪問者です</br>");
		out.println("重要度：" + imp + "</br>");
		out.println("内容：" + naiyou);
		out.println("</body>");
		out.println("</html>");
	}

}
