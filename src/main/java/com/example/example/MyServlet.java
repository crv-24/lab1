package com.example.example;

import java.io.Console;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MyServlet/*")
public class MyServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String path = request.getPathInfo();

        if (path == null || path.equals("/")) {
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        } else if (path.equals("/services")) {
            request.getRequestDispatcher("/services.jsp").forward(request, response);
        } else if (path.equals("/about")) {
            request.getRequestDispatcher("/about.jsp").forward(request, response);
        } else if (path.equals("/contact")) {
            request.getRequestDispatcher("/contact.jsp").forward(request, response);
        } else if (path.equals("/feedback")) {
            request.getRequestDispatcher("/feedback.jsp").forward(request, response);
        } else {
            response.setStatus(HttpServletResponse.SC_NOT_FOUND);
            response.getWriter().println("<html><body><h1>Page not found</h1></body></html>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String feedback = request.getParameter("feedback");

        System.out.println(name + " " + email + " " + feedback);
    }

}
