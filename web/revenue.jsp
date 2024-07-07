<%@page import="Model.Product"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <title>Dashboard</title>
        <%@include file="include/header1.jsp" %>
    <body class="animsition" style="border-top: 2px solid #ccc">

        <!-- Container -->
        <div class="container-fluid" style="background: #ccc" >
            <div class="row">
                <div class="col-md-3" style="background: #ccc" >

                    <div class="card" style="background: #ccc">
                        <div class="card-body text-center">
                            <a href="admin_info.jsp">
                                <img src="images/icons/ShopDDee Store.jpg" class="rounded-circle img-fluid zoomable " style="width: 70%" alt="User Image">
                            </a>
                            <h5 class="mt-2">ShopDee</h5>
                            <p class="text-muted">Online</p>
                        </div>
                    </div>
                    <!-- Menu container -->
                    <div class="list-group mt-3" >
                        <a href="#" class="list-group-item list-group-item-action active" style="background-color: black; color: white;" >Dashboard</a>
                        <a href="productManage.jsp" class="list-group-item list-group-item-action" style="background: #ccc">Manage product</a>
                        <a href="OrderManage.jsp" class="list-group-item list-group-item-action" style="background: #ccc">Manage Order</a>
                        <a href="cusManage.jsp" class="list-group-item list-group-item-action" style="background: #ccc">Manage customer</a>
                        <a href="VoucherManage.jsp" class="list-group-item list-group-item-action" style="background: #ccc">Manage voucher</a>

                    </div>

                </div>

                <div class="col-md-9"> 

                    <div class="row  p-t-10 " >
                        <div class="col-md-3">
                            <div class="card text-dark mb-3 " style="border-radius: 20px; box-shadow: 0 0 10px 5px rgba(0, 0, 0, 0.2);">
                                <div class="card-body ">
                                    <h5 class="card-title">Total revenue</h5>
                                    <p class="card-text">$ ${totalSum}</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="card  text-dark mb-3 " style="border-radius: 20px; box-shadow: 0 0 10px 5px rgba(0, 0, 0, 0.2);">
                                <div class="card-body">
                                    <h5 class="card-title">Total order</h5>
                                    <p class="card-text">${totalOrderCount}</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="card text-dark mb-3  " style="border-radius: 20px; box-shadow: 0 0 10px 5px rgba(0, 0, 0, 0.2);">
                                <div class="card-body">
                                    <h5 class="card-title">Total sell product</h5>
                                    <p class="card-text">${totalSoldProducts}</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="card text-dark mb-3 " style="border-radius: 20px; box-shadow: 0 0 10px 5px rgba(0, 0, 0, 0.2);">
                                <div class="card-body">
                                    <h5 class="card-title">Total product canceled</h5>
                                    <p class="card-text">${canceledOrders}</p>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class=" row ">
                        <div class="card mb-3 col-8">
                            <div class="card-body">
                                <h5 class="card-title "></h5>
                                <div id="revenue-chart" style="height: 300px;"></div>
                            </div>
                        </div>

                        <div class="card mb-3 col-4">
                            <div class="card-body">
                                <h5 class="card-title "></h5>
                                <div id="order-status-chart" style="height: 300px;"></div>
                            </div>
                        </div>
                    </div>
                    <!--                    <div class="voucher-banner">
                                            <a href="add_voucher.jsp">
                                                <img src="images/voucher.png" class="container " style="width: 100%; height: 200px" alt="voucher">
                                            </a>
                                        </div>-->


                    <div class="row mt-3" style="background-color: grey"> 
                        <div class="card mb-3 col-lg-7  ">
                            <div class="card-body ">
                                <h5 class="card-title">New order list</h5>
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Info</th>
                                            <th>Money</th>
                                            <th>Payment</th>
                                            <th>Status</th>
                                            <th>Time</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:set var="count" value="0" scope="page"/>
                                        <c:forEach var="o" items="${newOrderList}">
                                            <c:if test="${count <= 5}">
                                                <tr>
                                                    <td>${o.orderID}</td>
                                                    <td>${o.nameReceiver}</td>
                                                    <td>${o.total}$</td>
                                                    <td>${o.paymentMethod}</td>
                                                    <td class="btn btn-secondary btn-sm m-t-15" style="height: 30px; text-align: center">${o.status}</td>
                                                    <td>${o.orderDate}</td>
                                                </tr>
                                                <c:set var="count" value="${count + 1}" scope="page"/>
                                            </c:if>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                <a href="OrderManage.jsp" class=" float-right" style="top: 10px; right: 10px; color: #6c7ae0">View detail</a>
                            </div>

                        </div>


                       <div class="card mb-3 col-lg-5">
    <div class="card-body">
        <h5 class="card-title">Top 5 best seller</h5>
        <% 
        List<Product> pList = (List<Product>) request.getAttribute("bestSeller");
        if (pList != null) {
            for (int i = 0; i < pList.size() && i < 5; i++) {
                Product p = pList.get(i);
        %>
        
                <div class="row mb-3">
                    <div class="col-md-4 d-flex justify-content-center align-items-center">
                        <img src="<%= p.getProductImg() %>" class="img-fluid" alt="Product Image"/>
                    </div>
                    <div class="col-md-5">
                        <p><strong><%= p.getProductName() %></strong></p>
                        <p><%= p.getNumberOfsaled() %> purchases</p>
                    </div>
                    <div class="col-md-3 text-right d-flex flex-column justify-content-center">
                        <p><strong><%= p.getPrice() %></strong> $</p>
                    </div>
                </div>
        <% 
            }
}
        %>
            
    </div>
</div>

                    </div>


                </div>
            </div>
        </div>






        <!-- Footer -->
        <%@include file="include/footer.jsp" %>

        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        <script src="js/main.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <!-- <script src="js/highcharts.js"></script> -->
        <script src="https://code.highcharts.com/highcharts.js"></script>
        <script>
            // Lấy dữ liệu doanh thu từ thuộc tính request
            var monthlyRevenueJson = '<%= request.getAttribute("monthlyRevenueJson")%>';
            var monthlyRevenue = JSON.parse(monthlyRevenueJson);

            var categories = [];
            var data = [];

            for (var key in monthlyRevenue) {
                if (monthlyRevenue.hasOwnProperty(key)) {
                    categories.push(key); // Key format: yyyy-MM
                    data.push(monthlyRevenue[key]);
                }
            }

            Highcharts.chart('revenue-chart', {
                chart: {
                    type: 'column'
                },
                title: {
                    text: 'Monthly Revenue'
                },
                xAxis: {
                    categories: categories,
                    crosshair: true
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: 'Revenue (VND)'
                    }
                },
                series: [{
                        name: 'Revenue',
                        data: data
                    }]
            });

            // Placeholder for order status chart
            Highcharts.chart('order-status-chart', {
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false,
                    type: 'pie'
                },
                title: {
                    text: 'Thống kê trạng thái đơn hàng'
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: true
                        }
                    }
                },
                series: [{
                        name: 'Orders',
                        colorByPoint: true,
                        data: [
                            {
                                name: 'Hoàn tất',
                                y: 60
                            },
                            {
                                name: 'Đang vận chuyển',
                                y: 30
                            },
                            {
                                name: 'Hủy bỏ',
                                y: 10
                            }
                        ]
                    }]
            });
        </script>

    </body>
</html>