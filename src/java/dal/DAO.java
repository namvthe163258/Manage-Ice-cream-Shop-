/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Cart;
import model.Item;
import model.Product;

/**
 *
 * @author Nam
 */
public class DAO extends DBContext {

//get feature products
    public List<Product> getFeatureProduct() {
        List<Product> list = new ArrayList<>();
        String sql = "select Top 4 * from Product";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt("idProduct"),
                        rs.getInt("price"),
                        rs.getInt("idCate"),
                        rs.getString("nameProduct"),
                        rs.getString("img"),
                        rs.getString("quantity"),
                        rs.getString("createDate"),
                        rs.getString("update")));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    //get lastest products
    public List<Product> getLastestProduct() {
        List<Product> list = new ArrayList<>();
        String sql = "select Top 8 * from Product Order By ID desc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt("idProduct"),
                        rs.getInt("price"),
                        rs.getInt("idCate"),
                        rs.getString("nameProduct"),
                        rs.getString("img"),
                        rs.getString("quantity"),
                        rs.getString("createDate"),
                        rs.getString("update")));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void register(Account a) {
        String sql = "insert into Account values(?,?,?,?,?,?,?,?,?,?,?,2)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, a.getIdAccount());
            st.setString(2, a.getEmail());
            st.setString(3, a.getPassword());
            st.setString(4, a.getFullName());
            st.setString(5, a.getGender());
            st.setString(6, a.getAddress());
            st.setInt(7, a.getPhone_Number());
            st.setString(8, a.getBirthday());
            st.setString(9, a.getCreate_date());
            st.setString(10, a.getUpDate());
            st.setString(11, a.getAvatar());
            st.setInt(12, a.getIdRole());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    //login
    public Account check(String email, String password) {
        String sql = "select * from Account where email=? and password=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new Account(rs.getInt("idAccount"),
                        rs.getInt("phone_Number"),
                        rs.getInt("idRole"),
                        rs.getString("email"),
                        rs.getString("password"),
                        rs.getString("fullName"),
                        rs.getString("gender"),
                        rs.getString("address"),
                        rs.getString("birthday"),
                        rs.getString("create_date"),
                        rs.getString("upDate"),
                        rs.getString("avatar"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public boolean existed(String email) {
        String sql = "select * from Account where email=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String sql = "select * from product";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setIdProduct(rs.getInt("idProduct"));
                p.setPrice(rs.getInt("price"));
                p.setNameProduct(rs.getString("nameProduct"));
                p.setImg(rs.getString("img"));
                p.setQuantity(rs.getString("quantity"));
                p.setCreateDate(rs.getString("createDate"));
                p.setUpdate(rs.getString("update"));
                p.setIdCate(rs.getInt("idCate"));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public static void main(String[] args) {
        DAO d = new DAO();
        List<Product> list = d.getAllProduct();
        System.out.println(list.size());
    }

    public Product getProductByID(int pid) {
        try {
            String sql = "select * from Product p where p.idProduct = ? ";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, pid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setIdProduct(rs.getInt("idProduct"));
                p.setPrice(rs.getInt("price"));
                p.setNameProduct(rs.getString("nameProduct"));
                p.setImg(rs.getString("img"));

                p.setQuantity(rs.getString("quantity"));
                p.setCreateDate(rs.getString("createDate"));
                p.setUpdate(rs.getString("update"));
                p.setIdCate(rs.getInt("idCate"));
                return p;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void addOrder(Account c, Cart cart) {
        LocalDate curDate = LocalDate.now();
        String date = curDate.toString();
        try {
            //add order
            String sql = "insert into [order] values(?,?,?,?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getFullName());
            st.setString(2, c.getAddress());
            st.setInt(3, c.getPhone_Number());
            st.setString(4, date);
            st.setDouble(5, cart.getTotalMoney());
            st.executeUpdate();
            //lay id cua order vua add
            String sql1 = "select top 1 id from [order] order by id desc";
            PreparedStatement st1 = connection.prepareStatement(sql1);
            ResultSet rs = st1.executeQuery();
            //add bang OrderDetail
            if (rs.next()) {
                int oid = rs.getInt("id");
                for (Item i : cart.getItems()) {
                    String sql2 = "insert into [Order Detail] values(?,?,?,?,?)";
                    PreparedStatement st2 = connection.prepareStatement(sql2);
                    st2.setInt(1, oid);
                    st2.setDouble(2, i.getPrice());
                    st2.setInt(3, i.getQuantity());
                    st2.setDouble(4, i.getProduct().getIdProduct());
                    st2.executeUpdate();
                }
            }
            //cap nhat lai so luong san pham
            String sql3 = "update product set quantity=quantity-? where id=?";
            PreparedStatement st3 = connection.prepareStatement(sql3);
            for (Item i : cart.getItems()) {
                st3.setInt(1, i.getQuantity());
                st3.setInt(2, i.getProduct().getIdProduct());
                st3.executeUpdate();
            }
        } catch (SQLException e) {

        }
    }
}
