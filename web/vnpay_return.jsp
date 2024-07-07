<%@page import="Dal.OrderDB"%>
<%@page import="Controller.Config"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.nio.charset.StandardCharsets"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>KẾT QUẢ THANH TOÁN</title>
        <link href="assets/bootstrap.min.css" rel="stylesheet"/>
        <link href="assets/jumbotron-narrow.css" rel="stylesheet"> 
        <script src="assets/jquery-1.11.3.min.js"></script>
    </head>
    <body>
        <%
          
            Integer oID = (Integer) session.getAttribute("oID");
            
                // Begin process return from VNPAY
                Map<String, String> fields = new HashMap<>();
                for (Enumeration<String> params = request.getParameterNames(); params.hasMoreElements();) {
                    String fieldName = URLEncoder.encode(params.nextElement(), StandardCharsets.US_ASCII.toString());
                    String fieldValue = URLEncoder.encode(request.getParameter(fieldName), StandardCharsets.US_ASCII.toString());
                    if ((fieldValue != null) && (fieldValue.length() > 0)) {
                        fields.put(fieldName, fieldValue);
                    }
                }

                String vnp_SecureHash = request.getParameter("vnp_SecureHash");
                if (fields.containsKey("vnp_SecureHashType")) {
                    fields.remove("vnp_SecureHashType");
                }
                if (fields.containsKey("vnp_SecureHash")) {
                    fields.remove("vnp_SecureHash");
                }
                String signValue = Config.hashAllFields(fields);

                String responseCode = request.getParameter("vnp_ResponseCode");
                String txnRef = request.getParameter("vnp_TxnRef");
                String amount = request.getParameter("vnp_Amount");
                String orderInfo = request.getParameter("vnp_OrderInfo");
                String transactionNo = request.getParameter("vnp_TransactionNo");
                String bankCode = request.getParameter("vnp_BankCode");
                String payDate = request.getParameter("vnp_PayDate");

                if (!"00".equals(responseCode)) {
                    OrderDB oDB = new OrderDB();
                    oDB.updatePaymentMethod(oID, "cashOnDelivery");
                }
        %>
                <div class="container">
                    <div class="header clearfix">
                        <h3 class="text-muted">KẾT QUẢ THANH TOÁN</h3>
                    </div>
                    <div class="table-responsive">
                        <div class="form-group">
                            <label >Mã giao dịch thanh toán:</label>
                            <label><%=txnRef%></label>
                        </div>    
                        <div class="form-group">
                            <label >Số tiền:</label>
                           
                            <label><%=amount%></label>
                        </div>  
                        <div class="form-group">
                            <label >Mô tả giao dịch:</label>
                            <label><%=orderInfo%></label>
                        </div> 
                        <div class="form-group">
                            <label >Mã lỗi thanh toán:</label>
                            <label><%=responseCode%></label>
                        </div> 
                        <div class="form-group">
                            <label >Mã giao dịch tại CTT VNPAY-QR:</label>
                            <label><%=transactionNo%></label>
                        </div> 
                        <div class="form-group">
                            <label >Mã ngân hàng thanh toán:</label>
                            <label><%=bankCode%></label>
                        </div> 
                        <div class="form-group">
                            <label >Thời gian thanh toán:</label>
                            <label><%=payDate%></label>
                        </div> 
                        <div class="form-group">
                            <label >Tình trạng giao dịch:</label>
                            <label>
                                <%
                                    if (signValue.equals(vnp_SecureHash)) {
                                        if ("00".equals(responseCode)) {
                                            out.print("Thành công");
                                        } else {
                                            out.print("Không thành công. Phương thức thanh toán đã được chuyển thành COD.");
                                        }
                                    } else {
                                        out.print("Chữ ký không hợp lệ.");
                                    }
                                %>
                            </label>
                        </div> 
                    </div>
                    <p>
                        &nbsp;
                    </p>
                    <footer class="footer">
                        <a href="home">Come back to home</a>
                    </footer>
                </div>
                           
    </body>
</html>
