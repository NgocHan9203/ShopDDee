/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Model.Voucher;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.Date;

/**
 *
 * @author Han
 */
public class VoucherDB extends DBContext {

    public String checkValidVoucher(String code, double total) {
        String query = "SELECT * FROM Voucher WHERE VoucherCode = ?";
        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            pstmt.setString(1, code);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    int numberOfVouchers = rs.getInt("NumberOfVoucher");
//                int numberOfVoucherUsed = rs.getInt("numberOfVoucherUsed");
                    LocalDate dateFromDB = rs.getDate("Date").toLocalDate(); // Lấy ngày từ cơ sở dữ liệu và chuyển đổi thành LocalDate
                LocalDate currentDate = LocalDate.now(); // Ngày hiện tại
                    System.out.println(dateFromDB);
                    System.out.println(currentDate);
                    double requiredTotal = rs.getDouble("Price");
                    if (dateFromDB.isBefore(currentDate)) {
                        return "Expixy";
                    }
                    if (numberOfVouchers <= 0) {
                        return "Out of voucher codes";
                    }
                    if (requiredTotal > total) {
                        return "Order must be over " + requiredTotal;
                    }
                    return "Valid code";
                } else {
                    return "Invalid voucher code";
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return "Error checking voucher";
        }
    }

    public Voucher getVoucherByID(String code) {
        String query = "SELECT * FROM Voucher WHERE VoucherCode = ?";
        Voucher v = null;

        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            pstmt.setString(1, code);

            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    v = new Voucher();
                    v.setVoucherCode(rs.getString("VoucherCode"));
                    v.setDiscount(rs.getInt("Discount"));
                    v.setPrice(rs.getDouble("Price"));
                    v.setNumberOfVoucher(rs.getInt("NumberOfVoucher"));
                    v.setNumberOfVoucherUsed(rs.getInt("NumberOfVoucherUsed"));
                    v.setVoucherImg(rs.getString("VoucherImg"));
                }
            }

        } catch (SQLException e) {
            e.printStackTrace(); // Hoặc sử dụng một logging framework để log lỗi
        }

        return v;
    }

    public void updateVoucherUsage(String voucherCode) throws SQLException {
        String sql = "UPDATE Voucher\n"
                + "SET \n"
                + "    NumberOfVoucher = NumberOfVoucher - 1,\n"
                + "    NumberOfVoucherUsed = NumberOfVoucherUsed + 1\n"
                + "WHERE VoucherCode = ?;";
        try (
                PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, voucherCode);
            stmt.execute();
        }
    }

    public static void main(String[] args) throws SQLException {
        VoucherDB vDB = new VoucherDB();
        String mess = vDB.checkValidVoucher("VOUCHER2", 80);
        System.out.println(mess);
//        Voucher v = vDB.getVoucherByID("VOUCHER1");
//        System.out.println(v);
//        vDB.updateVoucherUsage("VOUCHER1");
    }
}
