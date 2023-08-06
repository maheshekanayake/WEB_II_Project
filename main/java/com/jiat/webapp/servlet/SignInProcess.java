package com.jiat.webapp.servlet;

import com.jiat.webapp.model.Student;
import com.jiat.webapp.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SignInProcess", value = "/SignInProcess")
public class SignInProcess extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        String rem = request.getParameter("rem");
        boolean reg = false;
        RequestDispatcher requestDispatcher;
        if (email.isEmpty()) {
            request.setAttribute("error", "please Enter Email & Password");
            requestDispatcher = request.getRequestDispatcher("index.jsp");
            requestDispatcher.forward(request,response);
        } else {
            Session session = HibernateUtil.getSessionFactory().openSession();
            Long count = session.createQuery("SELECT count(s) FROM Student s Where s.email=:e ", Long.class).setParameter("e",email).getSingleResult();

            System.out.println(count+"=================================================");
            if (count==1){
                request.removeAttribute("error");
                if (rem != null) {
                    response.addCookie(new Cookie("customer", email));
                }
                HttpSession hs = request.getSession();
                hs.setAttribute("student", count);
                requestDispatcher = request.getRequestDispatcher("Home.jsp");
                requestDispatcher.forward(request,response);
            }else{
                request.setAttribute("error", "Invalid Email & Password");
                requestDispatcher = request.getRequestDispatcher("index.jsp");
                requestDispatcher.include(request,response);
            }

        }


    }
}
