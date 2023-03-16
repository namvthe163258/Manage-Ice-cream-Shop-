/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Account;

/**
 *
 * @author Nam
 */
public class AccountDAO extends DBContext {
    //check co tai khoan chua?

    public Account checkAccount(String username, String password) {
        String sql = "select * from account where email=? and password=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new Account(rs.getInt("idAccount"), rs.getInt("phone_Number"), rs.getInt("idRole"), rs.getString("email"),
                        rs.getString("password"), rs.getString("fullName"), rs.getString("gender"), rs.getString("address"), rs.getString("birthday"),
                        rs.getString("create_date"), rs.getString("upDate"), rs.getString("avatar")
                );
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void change(String username, String password) {
        String sql = "update account set password=? where username=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, password);
            st.setString(2, username);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
//     public void signup(String user, String pass) {
//        String query = "insert into Account\n"
//                + "values(?,?,0,0)";
//        try {
//            conn = new DBContext().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1, user);
//            ps.setString(2, pass);
//            ps.executeUpdate();
//        } catch (Exception e) {
//        }
//    }

    public List<Account> getAccountList() {
        List<Account> list = new ArrayList<>();
        try {
            String query = "select * from Account";
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setIdAccount(rs.getInt("idAccount"));
                a.setEmail(rs.getString("email"));
                a.setPassword(rs.getString("password"));
                a.setGender(rs.getString("gender"));
                a.setAddress(rs.getString("address"));
                a.setPhone_Number(rs.getInt("phone_Number"));
                a.setBirthday(rs.getString("birthday"));
                a.setCreate_date(rs.getString("create_date"));
                a.setUpDate(rs.getString("upDate"));
                a.setIdRole(rs.getInt("idRole"));

                list.add(a);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void delete(int idAccount) {
        String sql = "DELETE FROM [dbo].[Account]\n"
                + "      WHERE idAccount = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, idAccount);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void update(Account c) {
        String sql = "update Account set email = ?, password=?,fullName=?,gender=?,address=?, phone_Number=?, birthday=?,create_date=?,upDate=?,avatar=? where idAccount =?  ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getEmail());
            st.setString(2, c.getPassword());
            st.setString(3, c.getFullName());
            st.setString(4, c.getGender());
            st.setString(5, c.getAddress());
            st.setInt(6, c.getPhone_Number());
            st.setString(7, c.getBirthday());
            st.setString(8, c.getCreate_date());
            st.setString(9, c.getUpDate());
            st.setString(10, c.getAvatar());

            st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void insert(Account c) {
        String sql = "insert into Account values(?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getEmail());
            st.setString(2, c.getPassword());
            st.setString(3, c.getFullName());
            st.setInt(4, c.getPhone_Number());
            st.setString(5, c.getBirthday());
            st.setString(6, c.getCreate_date());

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
       public Account getAccountByID(int aid) {
        try {
            String sql = "select * from Account a where a.idAccount = ? ";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, aid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setIdAccount(rs.getInt("idAccount"));
                a.setEmail(rs.getString("email"));
                a.setPassword(rs.getString("password"));
                a.setFullName(rs.getString("fullName"));
                a.setPhone_Number(rs.getInt("phone_Number"));
                a.setBirthday(rs.getString("birthday"));
                a.setCreate_date(rs.getString("create_date"));
               
                return a;
            }
        } catch (Exception e) {
        }
        return null;
    }
}
