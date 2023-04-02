/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.Customer;
import CustomerService.CustomerService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author nitro 5
 */
@WebServlet(name = "admin", urlPatterns = {"/admin"})
public class admin extends HttpServlet {

    

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        doPost(request,response);
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        String practice =request.getParameter("page");
        
        if(practice.equalsIgnoreCase("newUsers")){
            RequestDispatcher rd = request.getRequestDispatcher("CustomerPage/register.jsp");
            rd.forward(request, response);
            
        }
        if (practice.equalsIgnoreCase("register"))

        {
            Customer customer = new Customer();

            customer.setUserName(request.getParameter("username"));
            customer.setFullName(request.getParameter("fullname"));
            customer.setPassword(request.getParameter("password"));

            new CustomerService().insertUser(customer);

            System.out.printf("Data Inserted");

            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            try {
                rd.forward(request, response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            }
        }
        if (practice.equalsIgnoreCase("login") ){

            String username = request.getParameter("username");
            String password = request.getParameter("password");
            System.out.println(username + " " + password + " ");

            Customer customer = new CustomerService().getUser(username, password);
//            System.out.println(user.getUsername()+" "+user.getPassword());
            if (customer != null) {
                HttpSession session = request.getSession();
                session.setAttribute("id", customer.getId());
                session.setAttribute("fullname", customer.getFullName());
                session.setAttribute("username", username);
//                    System.out.println(session.getAttribute("user"));
                request.setAttribute("msg", "Login Successful!");
                System.out.println(request.getAttribute("msg"));

                RequestDispatcher rd = request.getRequestDispatcher("CustomerPage/homepage.jsp");
                rd.forward(request, response);
            } else {
                request.setAttribute("msg", "Invalid username or password");
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            }

        }
        
         if(practice.equalsIgnoreCase("bookingdetail")){

            
            Customer customer = new Customer();
            
            customer.setBookingFullname(request.getParameter("fullname"));
            customer.setBookingAge(Integer.parseInt(request.getParameter("age")));
            customer.setBookingContact(request.getParameter("contact"));
            customer.setBookingAddress(request.getParameter("address"));
            
            new CustomerService().insertBoking(customer);
            
            RequestDispatcher rd = request.getRequestDispatcher("CustomerPage/homepage.jsp");
            try{
                rd.forward(request, response);
            }catch(ServletException e){
                throw new RuntimeException(e);
                
            }
            
        }
        
    }


}
