/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Nam
 */
public class OrderDAO  extends DAO{
    public void insert( String date, String customerID) {
        String sql = "insert into orders values(?,?)";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, customerID);
            st.setString(2, date);
            st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public int getMax() {
        String sql = "select Max(o.orderID) as orderID  from orders o";
        int orderId = 0;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return orderId = rs.getInt("orderID");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return orderId;
    }
}
