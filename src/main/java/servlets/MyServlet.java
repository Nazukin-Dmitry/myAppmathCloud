package servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by 1 on 12.12.2015.
 */
//@WebServlet("/signs/result")
public class MyServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doPost(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String par = request.getParameter("type");
        Integer val = Integer.valueOf(par);

        switch (val){
            case 1:
                request.setAttribute("Network_type", "1-24-24-48-48-300-128-43");
                request.setAttribute("Network_true", "12267");
                request.setAttribute("Network_toch", "97.60%");

                request.setAttribute("Network_1", 33);
                request.setAttribute("Network_2", 21);
                request.setAttribute("Network_3", 18);
                request.setAttribute("Network_4", 17);
                request.setAttribute("Network_5", 17);
                request.setAttribute("Network_6", 15);
                break;
            case 2:
                request.setAttribute("Network_type", "1-20-20-40-40-300-128-43");
                request.setAttribute("Network_true", "12178");
                request.setAttribute("Network_toch", "96.89%");

                request.setAttribute("Network_1", 39);
                request.setAttribute("Network_2", 19);
                request.setAttribute("Network_3", 24);
                request.setAttribute("Network_4", 21);
                request.setAttribute("Network_5", 20);
                request.setAttribute("Network_6", 18);
                break;
            case 3:
                request.setAttribute("Network_type", "1-16-16-32-32-300-128-43");
                request.setAttribute("Network_true", "12061");
                request.setAttribute("Network_toch", "95.96%");

                request.setAttribute("Network_1", 45);
                request.setAttribute("Network_2", 35);
                request.setAttribute("Network_3", 25);
                request.setAttribute("Network_4", 26);
                request.setAttribute("Network_5", 28);
                request.setAttribute("Network_6", 23);
                break;
        }
        response.setContentType("text/html");


        RequestDispatcher dispatcher = request.getRequestDispatcher("/index1.jsp");
        dispatcher.forward(request, response);
    }
}
