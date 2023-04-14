/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;



import Model.Student;
import Service.UserService;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Hashing.HashPassword;
import Model.Customer;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;

/**
 *
 * @author nitro 5
 */
@WebServlet(name = "user", urlPatterns = {"/user"})
@MultipartConfig(
  fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
  maxFileSize = 1024 * 1024 * 10,      // 10 MB
  maxRequestSize = 1024 * 1024 * 100   // 100 MB
)
public class user extends HttpServlet {

 

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

        
        
        String test = request.getParameter("page");
        
        System.out.println("page"+test);
        
////To redirect in Register Page
//        if (test.equalsIgnoreCase("newUsers"))
//
//        {
//            RequestDispatcher rd = request.getRequestDispatcher("Pages/register.jsp");
//            rd.forward(request, response);
//        }
//
//// register
// if (test.equalsIgnoreCase("register"))
//
//        {
//            Student student = new Student();
//
//            student.setUserName(request.getParameter("username"));
//            student.setFullName(request.getParameter("fullname"));
//            student.setPassword(request.getParameter("password"));
//
//            new UserService().insertUser(student);
//
//            System.out.printf("Data Inserted");
//
//            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
//            try {
//                rd.forward(request, response);
//            } catch (ServletException e) {
//                throw new RuntimeException(e);
//            }
//        }
//      
// login
         
        if (test.equalsIgnoreCase("login") ){

            String username = request.getParameter("username");
            String password = (request.getParameter("password"));
            System.out.println(username + " " + password + " ");

            Student student = new UserService().getUser(username, password);
//            System.out.println(user.getUsername()+" "+user.getPassword());
            if (student != null) {
                HttpSession session = request.getSession();
                session.setAttribute("id", student.getId());
//                session.setAttribute("fullname", student.getFullName());
                session.setAttribute("username", username);
//                    System.out.println(session.getAttribute("user"));
                request.setAttribute("msg", "Login Successful!");
                System.out.println(request.getAttribute("msg"));

                RequestDispatcher rd = request.getRequestDispatcher("Pages/Dashboard.jsp");
                rd.forward(request, response);
            } else {
                request.setAttribute("msg", "Invalid username or password");
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            }

        }
//        Show the user list in list user page
        if (test.equalsIgnoreCase("listuser") ){
            Student student = new Student();
            List<Student> studentList = new UserService().getUserList();
            request.setAttribute("student", student);
            request.setAttribute("studentlist", studentList);
            RequestDispatcher rd = request.getRequestDispatcher("Pages/listuser.jsp");
            rd.forward(request, response);

        }
        if(test.equalsIgnoreCase("listroom")){
            Student student = new Student();
            List<Student> RoomList = new UserService().getRoomList();
            request.setAttribute("student", student);
            request.setAttribute("RoomList", RoomList);
            RequestDispatcher rd = request.getRequestDispatcher("Pages/roomlist.jsp");
            
            rd.forward(request, response);
            System.out.println(RoomList);
            System.out.println(student);
        }
        
        if(test.equalsIgnoreCase("listbooking")){
            Customer customer = new Customer();
            List<Customer> bookList = new UserService().getbookList();
            request.setAttribute("customer", customer);
            request.setAttribute("BookList", bookList);
            RequestDispatcher rd = request.getRequestDispatcher("Pages/booking.jsp");
            
            rd.forward(request, response);
            
        }
        

//        For user_details
        if (test.equalsIgnoreCase("userDetails"))
        {
            int id = Integer.parseInt(request.getParameter("id"));
            Student student = new UserService().getUserRow(id);
            request.setAttribute("id", id);
            request.setAttribute("student", student);  

            RequestDispatcher rd = request.getRequestDispatcher("Pages/user_details.jsp");
            rd.forward(request, response);
        }
        if(test.equalsIgnoreCase("roomDetails")){
            int id = Integer.parseInt(request.getParameter("id"));
            Student student = new UserService().getRoomRow(id);
            request.setAttribute("id", id);
            request.setAttribute("student",student);
            
            RequestDispatcher rd = request.getRequestDispatcher("Pages/room_details.jsp");
            rd.forward(request, response);
        }

        // for deleting users in user_details page
        if (test.equalsIgnoreCase("deleteUser"))

        {
            int id = Integer.parseInt(request.getParameter("id"));
            UserService userService = new UserService();
            userService.deleteUser(id);
            List<Student> userList = new UserService().getUserList();
            request.setAttribute("userList", userList);
            RequestDispatcher rd = request.getRequestDispatcher("Pages/listuser.jsp");
            rd.forward(request, response);
        }
     
// for deleting room
        if (test.equalsIgnoreCase("deleteroom"))

        {
            int id = Integer.parseInt(request.getParameter("id"));
            UserService userService = new UserService();
            userService.deleteRoom(id);
            List<Student> roomListing = new UserService().getRoomList();
            request.setAttribute("roomList", roomListing);
            RequestDispatcher rd = request.getRequestDispatcher("Pages/roomlist.jsp");
            rd.forward(request, response);
        }
        


// for editing users
        if (test.equalsIgnoreCase("userEdit"))  

        {
            int id = Integer.parseInt(request.getParameter("id"));
            System.out.println(id);
            Student student = new UserService().getUserRow(id);
            request.setAttribute("id", id);
            request.setAttribute("student", student);
            RequestDispatcher rd = request.getRequestDispatcher("Pages/update_user.jsp");
            rd.forward(request, response);
        }
        
        if (test.equalsIgnoreCase("editroom"))  
        {
            int id = Integer.parseInt(request.getParameter("id"));
            Student student = new UserService().getRoomRow(id);
            request.setAttribute("id", id);
            request.setAttribute("student", student);
            RequestDispatcher rd = request.getRequestDispatcher("Pages/update_room.jsp");
            rd.forward(request, response);
        }

       
    
        
              if (test.equalsIgnoreCase("editUser"))
        {
            
            Student student = new Student();
            int id = Integer.parseInt(request.getParameter("id"));
            student.setFullName(request.getParameter("fullname"));
            student.setUserName(request.getParameter("username"));
            student.setPassword(request.getParameter("password"));
            try {
                new UserService().editUser(id, student);
            } catch ( SQLException e) {
                e.printStackTrace();
            }
            List<Student> userList = new UserService().getUserList();
            request.setAttribute("userList", userList);
            
            RequestDispatcher rd = request.getRequestDispatcher("Pages/listuser.jsp");
            rd.forward(request, response);
        }
              
              if (test.equalsIgnoreCase("EDITROOM"))
              {
                  Student student = new Student();
                 
                int id = Integer.parseInt(request.getParameter("id"));
        
                student.setRoomtitle(request.getParameter("roomtitle"));
                student.setRoomlocation(request.getParameter("roomlocation"));
                student.setRoomsize(request.getParameter("roomsize"));
                student.setRoomprice(request.getParameter("roomprice"));
                student.setRoomdescription(request.getParameter("roomdescription"));
                
                
                
                try{
                    new UserService().editRoom(id, student);
                }catch ( SQLException e) {
                e.printStackTrace();
            }
                List<Student> roomListing = new UserService().getRoomList();
                request.setAttribute("roomList", roomListing);
                
                RequestDispatcher rd = request.getRequestDispatcher("Pages/Dashboard.jsp");
                rd.forward(request, response);
        }

        if(test.equalsIgnoreCase("logout")){
            HttpSession session = request.getSession(false);
            session.invalidate();

            RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
            requestDispatcher.forward(request, response);
        }
    
        

    
    
       if(test.equalsIgnoreCase("addroom")){

            Part filePart = request.getPart("file");
            String fileName = filePart.getSubmittedFileName();
            String uploadPath = "C:\\Users\\nitro 5\\OneDrive - Virinchi College\\Documents\\NetBeansProjects\\AAAAAAA\\src\\main\\webapp\\image\\upload\\pics";
             String imgPath = "image\\upload\\pics";
            String filePathName = uploadPath + fileName;
            imgPath = imgPath + fileName;
            for (Part part : request.getParts()) {
              part.write(filePathName);
            }
            
            Student student = new Student();
            
            student.setRoomtitle(request.getParameter("roomtitle"));
            student.setRoomlocation(request.getParameter("roomlocation"));
            student.setRoomsize(request.getParameter("roomsize"));
            student.setRoomprice(request.getParameter("roomprice"));
            student.setRoomdescription(request.getParameter("roomdescription"));
            student.setFile(imgPath);
            
            new UserService().addingroom(student);
            System.out.println("INsert vayo");
            
            
            out.print(student);
            
            RequestDispatcher rd = request.getRequestDispatcher("Pages/Dashboard.jsp");
            try{
                rd.forward(request, response);
            }catch(ServletException e){
                throw new RuntimeException(e);
                
            }
            
        }
        
    }



    public void destroy() {
    }
            }
            
        
        

    