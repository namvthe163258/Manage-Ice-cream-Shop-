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
import model.Product;

/**
 *
 * @author Nam
 */
public class ProductDAO extends DBContext {

    public int getCount() {
        int count = 0;
        try {
            String query = "select count(*) from Product";
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return count;
    }

    public List<Product> getListProduct(int pageIndex) {
        List<Product> list = new ArrayList<>();
        try {
            String query = "select * from("
                    + "select ROW_NUMBER() over (order by idProduct ASC) as rn, *\n"
                    + "from Product"
                    + ")as x\n"
                    + "where rn between (?-1)*?+1"
                    + "and ?*?";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, pageIndex);
            ps.setInt(2, 6);
            ps.setInt(3, pageIndex);
            ps.setInt(4, 6);
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
                list.add(p);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
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

    public List<Product> searchProductByName(String txtSearch, int option) {
        List<Product> list = new ArrayList<>();
        String optS = "";
        switch (option) {
            case 1:
                optS = "order by price asc";
                break;
            case 2:
                optS = "order by price desc";
                break;
            case 3:
                optS = "order by nameProduct asc";
                break;
        }

        String sql = "select * from Product where nameProduct like ? " + optS;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + txtSearch + "%");

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt("idProduct"),
                        rs.getInt("price"),
                        rs.getInt("idCate"),
                        rs.getString("nameProduct"),
                        rs.getString("img"),
                        rs.getString("quantity"),
                        rs.getString("createDate"),
                        rs.getString("update")
                ));

            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Product> getProductList() {
        List<Product> list = new ArrayList<>();
        try {
            String query = "select * from product";
            PreparedStatement ps = connection.prepareStatement(query);
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
                list.add(p);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void delete(int idProduct) {
        String sql = "DELETE FROM [dbo].[Product]\n"
                + "      WHERE idProduct = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, idProduct);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void update(Product c) {
        String sql = "update product set nameProduct = ?, img=?,price=?,quantity=?,createDate=? where idProduct =?  ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getNameProduct());
            st.setString(2, c.getImg());
            st.setInt(3, c.getPrice());
            st.setString(4, c.getQuantity());
            st.setString(5, c.getCreateDate());
            st.setInt(6, c.getIdProduct());
            st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void insert(Product c) {
        String sql = "insert into Product values(?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getNameProduct());
            st.setString(2, c.getImg());
            st.setInt(3, c.getPrice());
            st.setString(4, c.getQuantity());
            st.setString(5, c.getCreateDate());
            st.setString(6, c.getUpdate());
            st.setInt(7, c.getIdCate());

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

}
