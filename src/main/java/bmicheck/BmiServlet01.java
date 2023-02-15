package bmicheck;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BmiServlet01
 */
@WebServlet("/bmicheck")
public class BmiServlet01 extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#doGet(入力ページへ移行)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/bmicheck/bmi.jsp");
        dispatcher.forward(request, response);
    }
    /**
     * @see HttpServlet#doGet(結果ページへ移行)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        double inputHeight = Double.parseDouble(request.getParameter("height")); // 入力値の代入
        double inputWeight = Double.parseDouble(request.getParameter("weight"));
        double bmiSum = inputWeight / Math.pow((inputHeight /100),2); // bmiの計算
        request.setAttribute("height",inputHeight); // 値の引き渡し
        request.setAttribute("weight",inputWeight);
        request.setAttribute("bmi",bmiSum);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/bmicheck/bmi_result.jsp");
        dispatcher.forward(request,response);
    }


}
