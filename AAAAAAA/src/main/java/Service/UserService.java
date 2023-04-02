/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service;

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

                student.setFullName(rs.getString("fullname"));
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
        System.out.println(query);
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

    // Delete User
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
    
}
