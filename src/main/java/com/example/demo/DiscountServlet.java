package com.example.demo;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "DiscountServlet", value = "/calculate")
public class DiscountServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String price = request.getParameter("price");
        String discount = request.getParameter("discount");

        double discountAmount = Double.parseDouble(price) * Double.parseDouble(discount) * 0.01;
        double discountPrice = Double.parseDouble(price) - discountAmount;

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h2> Discount Amount: " + Double.toString(discountAmount) + "</h2>");
        writer.println("<h2> Discount Price: " + Double.toString(discountPrice) + "</h2>");

        writer.println("</html>");

    }

    public void destroy() {
    }
}