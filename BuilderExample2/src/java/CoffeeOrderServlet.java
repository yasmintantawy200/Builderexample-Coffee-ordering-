/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


/**
 *
 * @author ACER
 */

@WebServlet(urlPatterns = {"/CoffeeOrderServlet"})
public class CoffeeOrderServlet extends HttpServlet {

   @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String size = request.getParameter("size");
    String type = request.getParameter("type");
    boolean milk = Boolean.parseBoolean(request.getParameter("milk"));
    boolean sugar = Boolean.parseBoolean(request.getParameter("sugar"));
    boolean whippedCream = Boolean.parseBoolean(request.getParameter("whippedCream"));

    
    Coffee coffee = new Coffee.Builder(size, type)
            .milk(milk)
            .sugar(sugar)
            .whippedCream(whippedCream)
            .build();

    // Store the coffee order in the session
    HttpSession session = request.getSession();
    session.setAttribute("coffeeOrderForm", coffee);

    // Redirect to the confirmation page
    response.sendRedirect("orderConfirmation.jsp");
}

}

