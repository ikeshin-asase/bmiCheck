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
        // 四捨五入して各値を産出
        double height = ((double)Math.round(Double.parseDouble(request.getParameter("height")) * 100))/100;
        double weight = ((double)Math.round(Double.parseDouble(request.getParameter("weight")) * 100))/100;
        double bmi = ((double)Math.round(weight / Math.pow((height /100),2) * 100))/100;
        double appropriateWeight = ((double)Math.round((Math.pow(height /100,2)*22) * 100))/100;
        double comparison = ((double)Math.round((appropriateWeight - weight) * 100))/100;

        request.setAttribute("height",height); // 値の引き渡し
        request.setAttribute("weight",weight);
        request.setAttribute("bmi",bmi);
        request.setAttribute("appropriateWeight",appropriateWeight);
        request.setAttribute("comparison",comparison);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/bmicheck/bmi_result.jsp");
        dispatcher.forward(request,response);
    }


}
