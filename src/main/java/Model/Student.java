/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Date;

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
    private int roomid;
    private String roomtitle;
    private String roomlocation;
    private String roomsize;
    private String roomprice;
    private String roomdescription;
    private String file;

   

    public int getRoomid() {
        return roomid;
    }

    public void setRoomid(int roomid) {
        this.roomid = roomid;
    }

    public String getRoomtitle() {
        return roomtitle;
    }

    public void setRoomtitle(String roomtitle) {
        this.roomtitle = roomtitle;
    }

    public String getRoomlocation() {
        return roomlocation;
    }

    public void setRoomlocation(String roomlocation) {
        this.roomlocation = roomlocation;
    }

    public String getRoomsize() {
        return roomsize;
    }

    public void setRoomsize(String roomsize) {
        this.roomsize = roomsize;
    }

    public String getRoomprice() {
        return roomprice;
    }

    public void setRoomprice(String roomprice) {
        this.roomprice = roomprice;
    }

    public String getRoomdescription() {
        return roomdescription;
    }

    public void setRoomdescription(String roomdescription) {
        this.roomdescription = roomdescription;
    }

    public String getFile() {
        return file;
    }

    public void setFile(String file) {
        this.file = file;
    }
    

  
    
    
}
