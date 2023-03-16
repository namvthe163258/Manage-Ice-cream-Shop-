/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Nam
 */
public class Account {

    private int idAccount, phone_Number, idRole;
    private String email, password, fullName,
            gender, address, birthday, create_date, upDate, avatar;

    public Account() {
    }

    public Account(int idAccount, int phone_Number, int idRole, String email, String password, String fullName, String gender, String address, String birthday, String create_date, String upDate, String avatar) {
        this.idAccount = idAccount;
        this.phone_Number = phone_Number;
        this.idRole = idRole;
        this.email = email;
        this.password = password;
        this.fullName = fullName;
        this.gender = gender;
        this.address = address;
        this.birthday = birthday;
        this.create_date = create_date;
        this.upDate = upDate;
        this.avatar = avatar;
    }

    public Account(String email, String password, String fullName, int phone_Number, String birthday, String create_date) {
        this.email = email;
        this.password = password;
        this.fullName = fullName;
        this.phone_Number = phone_Number;
        this.birthday = birthday;
        this.create_date = create_date;

    }

    public int getIdAccount() {
        return idAccount;
    }

    public void setIdAccount(int idAccount) {
        this.idAccount = idAccount;
    }

    public int getPhone_Number() {
        return phone_Number;
    }

    public void setPhone_Number(int phone_Number) {
        this.phone_Number = phone_Number;
    }

    public int getIdRole() {
        return idRole;
    }

    public void setIdRole(int idRole) {
        this.idRole = idRole;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getCreate_date() {
        return create_date;
    }

    public void setCreate_date(String create_date) {
        this.create_date = create_date;
    }

    public String getUpDate() {
        return upDate;
    }

    public void setUpDate(String upDate) {
        this.upDate = upDate;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

}
