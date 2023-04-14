/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author nitro 5
 */
public class Customer {
    
    private int id;
    private String Fullname;
    private String Username;
    private String Password;
    private String Email;
    private String Newpassword;
    

    
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

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getNewpassword() {
        return Newpassword;
    }

    public void setNewpassword(String Newpassword) {
        this.Newpassword = Newpassword;
    }
    
    
    
    
    
private int bookingid;
private String bookingFullname;
private int bookingAge;
private String bookingContact;
private String  bookingAddress;

    public int getBookingid() {
        return bookingid;
    }

    public void setBookingid(int bookingid) {
        this.bookingid = bookingid;
    }

    public String getBookingFullname() {
        return bookingFullname;
    }

    public void setBookingFullname(String bookingFullname) {
        this.bookingFullname = bookingFullname;
    }

    public int getBookingAge() {
        return bookingAge;
    }

    public void setBookingAge(int bookingAge) {
        this.bookingAge = bookingAge;
    }

    public String getBookingContact() {
        return bookingContact;
    }

    public void setBookingContact(String bookingContact) {
        this.bookingContact = bookingContact;
    }

    public String getBookingAddress() {
        return bookingAddress;
    }

    public void setBookingAddress(String bookingAddress) {
        this.bookingAddress = bookingAddress;
    }

    
}

