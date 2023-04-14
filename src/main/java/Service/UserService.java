/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service;

import DBConnection.DBConnection;
import Model.Customer;
import Model.Student;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author nitro 5
 */
public class UserService {

//        public void insertUser(Student student) {
//        String query = "insert into admin(username, password,)" + "values(?,?)"; // same as database
//
//        PreparedStatement preparedStatements = new DBConnection().getStatement(query);  // execute parametrized query
//
//        try {
//            preparedStatements.setString(1, student.getUserName());
////            preparedStatements.setString(2, student.getFullName());
//            preparedStatements.setString(3, student.getPassword());
//
//            preparedStatements.execute();
//
//        } catch (
//                SQLException e) {
//            e.printStackTrace();
//        }
//    }
    
public Student getUser(String username, String password) {
        Student student = null;

        String query = "select * from admin where username=? and password=?";
        PreparedStatement ps = new DBConnection().getStatement(query);

        try {
            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                student = new Student();

                student.setId(rs.getInt("id"));
                student.setUserName(rs.getString("username"));
                student.setPassword(rs.getString("password"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return student;
    }
//    This is related to list user page
    public List<Student> getUserList() {
        List<Student> userList = new ArrayList<>();
        
        String query = "select * from users";
        PreparedStatement pstm = new DBConnection().getStatement(query);
        
        try {
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                Student student = new Student();

                student.setId(rs.getInt("id"));
                student.setFullName(rs.getString("fullname"));
                student.setUserName(rs.getString("username"));
                student.setPassword(rs.getString("password"));


                userList.add(student);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return userList;
    }
    
    public List<Student> getRoomList() {
        List<Student> roomListing = new ArrayList<>();

        String query = "select * from room";
        PreparedStatement ps = new DBConnection().getStatement(query);

        try {
            
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Student st = new Student();
                st.setRoomid(rs.getInt("id"));
                st.setRoomtitle(rs.getString("title"));
                st.setRoomlocation(rs.getString("location"));
                st.setRoomsize(rs.getString("size"));
                st.setRoomprice(rs.getString("price"));
                st.setRoomdescription(rs.getString("description"));
                 st.setFile(rs.getString("file"));

                roomListing.add(st);
                
               
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return roomListing;
    }
    public List<Customer> getbookList() {
        List<Customer> bookList = new ArrayList<>();
        String query ="select * from booking";
        PreparedStatement ps = new DBConnection().getStatement(query);
        try{
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Customer cs = new Customer();
                cs.setBookingid(rs.getInt("id"));
                cs.setBookingFullname(rs.getString("fullname"));
                cs.setBookingAge(rs.getInt("age"));
                cs.setBookingContact(rs.getString("contact"));
                cs.setBookingAddress(rs.getString("address"));
               
                bookList.add(cs);
                
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return bookList;
       
    }

    //    For getting user details in user list
    public Student getUserRow(int id) {
        Student student = new Student();
        String query = "select * from users where id = ?";
        PreparedStatement pstm = new DBConnection().getStatement(query);

        try {
            pstm.setInt(1, id);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                student.setId(rs.getInt("id"));
                student.setFullName(rs.getString("fullname"));
                student.setUserName(rs.getString("username"));
                student.setPassword(rs.getString("password"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return student;
    }
    
    public Student getRoomRow(int id){
        Student student = new Student();
        String query = "select * from room where id = ?";
        PreparedStatement ps = new DBConnection().getStatement(query);
        
        try{
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                
                student.setRoomid(rs.getInt("id"));
                student.setRoomtitle(rs.getString("title"));
                student.setRoomlocation(rs.getString("location"));
                student.setRoomsize(rs.getString("size"));
                student.setRoomprice(rs.getString("price"));
                student.setRoomdescription(rs.getString("description"));
                
            }
        }catch(SQLException e){
            throw new RuntimeException(e);
        }
        return student;
    }

// for Deleting User
    public void deleteUser(int id) {
        String query = "delete from users where id = ?";
        PreparedStatement ps = new DBConnection().getStatement(query);

        try {
            ps.setInt(1, id);
            ps.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
//for Deleting room 
    public void deleteRoom(int id) {
        String query = "delete from room where id = ?";
        PreparedStatement ps = new DBConnection().getStatement(query);

        try {
            ps.setInt(1, id);
            ps.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
//    For editing users

public void editUser(int id, Student student) throws SQLException {

    String query = "update users set fullname=?, username=?, password=? where id=?";

    try (PreparedStatement pstm = new DBConnection().getStatement(query)) {
        pstm.setString(1, student.getFullName());
        pstm.setString(2, student.getUserName());
        pstm.setString(3, student.getPassword());
        pstm.setInt(4, id);
        pstm.executeUpdate();
    }
    
}

// for editing room
public void editRoom(int roomid, Student student) throws SQLException {
    String query = "update room set title=?, location=?, size=?, price=?, description=? where id=?";
    
    try (PreparedStatement ps =  new DBConnection().getStatement(query)){
        ps.setString(1, student.getRoomtitle());
        ps.setString(2, student.getRoomlocation());
        ps.setString(3, student.getRoomsize());
        ps.setString(4, student.getRoomprice());
        ps.setString(5, student.getRoomdescription());
        
        ps.setInt(6, roomid);
        ps.executeUpdate();
        System.out.println("database ma update vayo");
        
    }
}



public void addingroom(Student student){
    
 
        String query = "INSERT INTO room (title, location, size, price, description,file) VALUES (?, ?, ?, ?, ?, ?)";
        PreparedStatement ps = new DBConnection().getStatement(query);
        
        try{
            ps.setString(1, student.getRoomtitle());
            ps.setString(2, student.getRoomlocation());
            ps.setString(3, student.getRoomsize());
            ps.setString(4, student.getRoomprice());
            ps.setString(5, student.getRoomdescription());
            ps.setString(6, student.getFile());
            
            ps.executeUpdate();

        }catch(SQLException e){
            e.printStackTrace();
        }
    }

    
    public static List<Student> searchrooms(String query) {
          List<Student> roomsearch = new ArrayList< >();
    String sql = "SELECT * FROM room WHERE location LIKE ?";
    try (PreparedStatement ps = new DBConnection().getStatement(sql);) {
        ps.setString(1, "%" + query + "%");
        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                System.out.println(ps);
                Student student = new Student();
              
                student.setRoomid(rs.getInt("id"));
                student.setRoomtitle(rs.getString("title"));
                student.setRoomlocation(rs.getString("location"));
                student.setRoomsize(rs.getString("size"));
                student.setRoomprice(rs.getString("price"));
                student.setRoomdescription(rs.getString("description"));
                student.setFile(rs.getString("file"));
                
                roomsearch.add(student);
            }
        }
    } catch (SQLException ex) {
        System.out.println(ex);
    }
    return roomsearch;
        
    }

    
    
}
