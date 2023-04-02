/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author nitro 5
 */
public class Student {
    private int id;
    private String Fullname;
    private String Username;
    private String Password;
    
    public int getId(){
        return id;
    }
    public void setId(int id){
        this.id=id;
    }
    
    public String getFullName(){
        return Fullname;
    }
    public void setFullName(String Fullname){
        this.Fullname=Fullname;
    }
    
    public String getUserName(){
        return Username;
    }
    public void setUserName(String Username){
        this.Username=Username;
    }
    
    public String getPassword(){
        return Password;
    }
    public void setPassword(String Password){
        this.Password=Password;
    }
    
}
