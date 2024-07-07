/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Dal.CartDB;
import Dal.OrderDB;
import Dal.VoucherDB;
import Model.Cart_Item;
import Model.Customer;
import Model.Order;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Han
 */
public class OrderServelet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Order</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Order at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("Order.jsp").forward(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String city = request.getParameter("city");
        String street = request.getParameter("street");
        String addr = city + "; " + street; // Địa chỉ là sự kết hợp của city và street
        String paymentMethod = request.getParameter("paymentMethod");
        double total = Double.parseDouble(request.getParameter("total"));
        LocalDateTime orderDate = LocalDateTime.now();
        String status= "Doing";
        
        HttpSession session = request.getSession();
        VoucherDB vDB= new VoucherDB();
        String coupon=(String) session.getAttribute("coupon");
//        Xử lý voucher
       
        // Lấy cartList từ session
        Customer cus= (Customer)session.getAttribute("account");
        CartDB cDB= new CartDB();
        List<Cart_Item> cartList = cDB.getCartByName(cus.getUserName()) ;

        // Kiểm tra và lấy CartID từ từng phần tử trong danh sách
        int cartID = 0;
        if (cartList != null && !cartList.isEmpty()) {
            cartID = cartList.get(0).getCartID(); // Lấy cartID từ phần tử đầu tiên
        }
            OrderDB oDB = new OrderDB();

//        Order newO = new Order(total, null, orderDate, null, name, addr, phone, cartID, paymentMethod);
        
        if ("cashOnDelivery".equals(paymentMethod)) {
           
           if(coupon!=null){
               try {
                   vDB.updateVoucherUsage(coupon);
               } catch (SQLException ex) {
                   Logger.getLogger(OrderServelet.class.getName()).log(Level.SEVERE, null, ex);
               }
           }
            Order newO = new Order(total, status, orderDate, coupon, name, addr, phone, cartID, paymentMethod);
            System.out.println(newO);
            int oID= oDB.addOrder(newO,cartList);
            cDB.deleteAllCart(cartID);
            response.sendRedirect("home");

        } else if ("VNBANK".equals(paymentMethod)) {
            Order newO = new Order(total, status, orderDate, coupon, name, addr, phone, cartID, paymentMethod);
            int oID= oDB.addOrder(newO,cartList);
            cDB.deleteAllCart(cartID);
            session.setAttribute("oID", oID);
            
           if(coupon!=null){
               try {
                   vDB.updateVoucherUsage(coupon);
               } catch (SQLException ex) {
                   Logger.getLogger(OrderServelet.class.getName()).log(Level.SEVERE, null, ex);
               }
           }
           
            String vnp_Version = "2.1.0";
            String vnp_Command = "pay";
            String vnp_OrderInfo = "OrderCode: "  + "_ Total: " + String.valueOf(total);
//            String orderType = req.getParameter("ordertype");
            String orderType = "other";
            String vnp_TxnRef = Config.getRandomNumber(8);
            String vnp_IpAddr = Config.getIpAddress(request);
//            String vnp_IpAddr ="127.0.0.1";
            String vnp_TmnCode = Config.vnp_TmnCode;

            int amount = (int)total * 100 * 25450;
            Map vnp_Params = new HashMap<>();
            vnp_Params.put("vnp_Version", vnp_Version);
            vnp_Params.put("vnp_Command", vnp_Command);
            vnp_Params.put("vnp_TmnCode", vnp_TmnCode);
            vnp_Params.put("vnp_Amount", String.valueOf(amount));
            vnp_Params.put("vnp_CurrCode", "VND");
            String bank_code = paymentMethod;
//             String bank_code ="NCB";
            if (bank_code != null && !bank_code.isEmpty()) {
                vnp_Params.put("vnp_BankCode", "");
            }
            vnp_Params.put("vnp_TxnRef", vnp_TxnRef);
            vnp_Params.put("vnp_OrderInfo", vnp_OrderInfo);
            vnp_Params.put("vnp_OrderType", orderType);
            String locate = "en";
//            String locate = request.getParameter("language");
            if (locate != null && !locate.isEmpty()) {
                vnp_Params.put("vnp_Locale", locate);
            } else {
                vnp_Params.put("vnp_Locale", "vn");
            }
            vnp_Params.put("vnp_ReturnUrl", Config.vnp_ReturnUrl);
            vnp_Params.put("vnp_IpAddr", vnp_IpAddr);
            Calendar cld = Calendar.getInstance(TimeZone.getTimeZone("Etc/GMT+7"));

            SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
            String vnp_CreateDate = formatter.format(cld.getTime());

            vnp_Params.put("vnp_CreateDate", vnp_CreateDate);
            cld.add(Calendar.MINUTE, 15);
//            String vnp_ExpireDate = formatter.format(cld.getTime());
            //Add Params of 2.1.0 Version
//            vnp_Params.put("vnp_ExpireDate", vnp_ExpireDate);
//            //Billing
//            vnp_Params.put("vnp_Bill_Mobile", req.getParameter("txt_billing_mobile"));
//            vnp_Params.put("vnp_Bill_Email", req.getParameter("txt_billing_email"));
//            String fullName = (req.getParameter("txt_billing_fullname")).trim();
//            if (fullName != null && !fullName.isEmpty()) {
//                int idx = fullName.indexOf(' ');
//                String firstName = fullName.substring(0, idx);
//                String lastName = fullName.substring(fullName.lastIndexOf(' ') + 1);
//                vnp_Params.put("vnp_Bill_FirstName", firstName);
//                vnp_Params.put("vnp_Bill_LastName", lastName);
//    
//            }
//            vnp_Params.put("vnp_Bill_Address", req.getParameter("txt_inv_addr1"));
//            vnp_Params.put("vnp_Bill_City", req.getParameter("txt_bill_city"));
//            vnp_Params.put("vnp_Bill_Country", req.getParameter("txt_bill_country"));
//            if (req.getParameter("txt_bill_state") != null && !req.getParameter("txt_bill_state").isEmpty()) {
//                vnp_Params.put("vnp_Bill_State", req.getParameter("txt_bill_state"));
//            }
//            // Invoice
//            vnp_Params.put("vnp_Inv_Phone", req.getParameter("txt_inv_mobile"));
//            vnp_Params.put("vnp_Inv_Email", req.getParameter("txt_inv_email"));
//            vnp_Params.put("vnp_Inv_Customer", req.getParameter("txt_inv_customer"));
//            vnp_Params.put("vnp_Inv_Address", req.getParameter("txt_inv_addr1"));
//            vnp_Params.put("vnp_Inv_Company", req.getParameter("txt_inv_company"));
//            vnp_Params.put("vnp_Inv_Taxcode", req.getParameter("txt_inv_taxcode"));
//            vnp_Params.put("vnp_Inv_Type", req.getParameter("cbo_inv_type"));
            //Build data to hash and querystring
            List fieldNames = new ArrayList(vnp_Params.keySet());
            Collections.sort(fieldNames);
            StringBuilder hashData = new StringBuilder();
            StringBuilder query = new StringBuilder();
            Iterator itr = fieldNames.iterator();
            while (itr.hasNext()) {
                String fieldName = (String) itr.next();
                String fieldValue = (String) vnp_Params.get(fieldName);
                if ((fieldValue != null) && (fieldValue.length() > 0)) {
                    //Build hash data
                    hashData.append(fieldName);
                    hashData.append('=');
                    hashData.append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII.toString()));
                    //Build query
                    query.append(URLEncoder.encode(fieldName, StandardCharsets.US_ASCII.toString()));
                    query.append('=');
                    query.append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII.toString()));
                    if (itr.hasNext()) {
                        query.append('&');
                        hashData.append('&');
                    }
                }
            }
            String queryUrl = query.toString();
            String vnp_SecureHash = null;
            try {
                vnp_SecureHash = Config.hmacSHA512(Config.secretKey, hashData.toString());
            } catch (Exception ex) {
                Logger.getLogger(Order.class.getName()).log(Level.SEVERE, null, ex);
            }
            queryUrl += "&vnp_SecureHash=" + vnp_SecureHash;
            String paymentUrl = Config.vnp_PayUrl + "?" + queryUrl;
            
//            com.google.gson.JsonObject job = new JsonObject();
//            job.addProperty("code", "00");
//            job.addProperty("message", "success");
//            job.addProperty("data", paymentUrl);
//            Gson gson = new Gson();
//            response.getWriter().write(gson.toJson(job));
//            System.out.println("Request URL: " + paymentUrl);
//            System.out.println("Hash Data: " + hashData.toString());
//   // Gọi API và xử lý kết quả
    try {
        HttpURLConnection connection = (HttpURLConnection) new URL(paymentUrl).openConnection();
        connection.setRequestMethod("GET");
        int responseCode = connection.getResponseCode();
        if (responseCode == 200) {
            com.google.gson.JsonObject job = new JsonObject();
            job.addProperty("code", "00");
            job.addProperty("message", "success");
            job.addProperty("data", paymentUrl);
            job.addProperty("oID", oID);
            Gson gson = new Gson();
            response.getWriter().write(gson.toJson(job));
        } else {
            throw new Exception("Payment failed with response code: " + responseCode);
        }
    } catch (Exception e) {
        oDB.updatePaymentMethod(oID, "cashOnDelivery");
        request.setAttribute("oID", oID);
        request.setAttribute("error", "Payment failed. Payment method has been changed to COD.");
        request.getRequestDispatcher("vnpay_return.jsp").forward(request, response);
    }

    System.out.println("Request URL: " + paymentUrl);
    System.out.println("Hash Data: " + hashData.toString());

           
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
