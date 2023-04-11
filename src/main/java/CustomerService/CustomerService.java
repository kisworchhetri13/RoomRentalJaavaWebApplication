/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CustomerService;

import Model.Customer;
import DBConnection.DBConnection;
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
public class CustomerService {
    public void insertUser(Customer customer) {
        String query = "insert into users(username, fullname, password, email)" + "values(?,?,?,?)"; // same as database

        PreparedStatement preparedStatements = new DBConnection().getStatement(query);  // execute parametrized query

        try {
            preparedStatements.setString(1, customer.getUserName());
            preparedStatements.setString(2, customer.getFullName());
            preparedStatements.setString(3, customer.getPassword());
            preparedStatements.setString(4, customer.getEmail());

            preparedStatements.executeUpdate();

        } catch (
                SQLException e) {
            e.printStackTrace();
        }
    }
    public void insertBoking(Customer customer){
        String query ="insert into booking(fullname, age, contact, address)" + "values(?,?,?,?)";
        
        PreparedStatement ps = new DBConnection().getStatement(query);
        
        try{
            ps.setString(1, customer.getBookingFullname());
            ps.setInt(2, customer.getBookingAge());
            ps.setString(3, customer.getBookingContact());
            ps.setString(4, customer.getBookingAddress());
            ps.execute();
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
    
   
    
    public Customer getUser(String username, String password) {
        Customer customer = null;

        String query = "select * from users where username=? and password=?";
        PreparedStatement ps = new DBConnection().getStatement(query);
        

        try {
            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                
                customer = new Customer();

                customer.setId(rs.getInt("id"));
                customer.setUserName(rs.getString("username"));

                customer.setFullName(rs.getString("fullname"));
                customer.setPassword(rs.getString("password"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return customer;
    }
//    public Customer changePassword( Customer customer, String email) {
//        String query = "UPDATE users SET password = ? WHERE email = ?";
//        PreparedStatement ps = new DBConnection().getStatement(query);
//        try {
//            ps.setString(2, email);
//            ps.setString(1, customer.getNewpassword());
//            ps.executeUpdate();
//            System.out.println("database ma change vayo ");
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//        return customer;
//    }

   
}
    
