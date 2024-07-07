<%@page import="java.util.List"%>
<%@page import="Model.Product"%>
<!DOCTYPE jsp>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <title>Order</title>
        <%@include file="include/header1.jsp" %>
<!-- Container -->

<div class=" container-fluid row" >
    <div class="col-lg-3">
        <div class="card">
            <div class="card-body text-center">
                <a href="admin_info.jsp">
                    <img src="https://via.placeholder.com/150" class="rounded-circle img-fluid zoomable" alt="User Image">
                </a>
                <h5 class="mt-2">ShopDee</h5>
                <p class="text-muted">Online</p>
            </div>
        </div>
        <div class="list-group ">
            <a href="revenue.jsp" class="list-group-item list-group-item-action ">Dashboard</a>
            <a href="#" class="list-group-item list-group-item-action bg-dark active">Manage product</a>
            <a href="OrderManage.jsp" class="list-group-item list-group-item-action">Manage Order</a>
            <a href="cusManage.jsp" class="list-group-item list-group-item-action">Manage customer</a>
            <a href="VoucherManage.jsp" class="list-group-item list-group-item-action">Manage voucher</a>

        </div>
    </div>
    <div class=" col-lg-9">

        <h1 >Product Manager</h1>

        <div class="row">
            <a href="AddProduct" class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04" style="margin: 10px 0px 10px 10px" data-bs-toggle="modal" data-bs-target="#productModal">Add Product</a></div>
        <div class="mb-3 mt-3" >
            <form class="d-flex">
                <input class="form-control me-2" style="border-radius: 30px" type="search" placeholder="Input name of product to search" aria-label="Search">
                <select class="form-select me-2" style="border-radius: 20px">
                    <option selected>Category</option>
                    <option value="1">Men</option>
                    <option value="2">Women</option>
                    <option value="3">Asseceries</option>
                </select>
                <select class="form-select me-2" style="border-radius: 20px">
                    <option selected>Arrange</option>
                    <option value="1">Best saler </option>
                    <option value="2">Few sales</option>
                    <option value="3">Least left</option>
                    <option value="4">abc</option>
                </select>

                <button class="btn btn-dark" style="border-radius: 20px" type="submit">Search</button>
            </form>
        </div>
        <div class="card">

            <div class="card-header">Product List</div>
            <div class="card-body">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Name</th>
                            <th scope="col">Category</th>
                            <th scope="col">Price</th>
                            <th scope="col">Stock</th>
                            <th scope="col">quantity sold</th>
                            <th scope="col">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            List<Product> pList = (List<Product>) request.getAttribute("productList");
                            for (Product p : pList) {

                        %>
                        <!-- Sample Data -->
                        <tr>
                            <th scope="row"><%=p.getProductID()%></th>
                            <td><%=p.getProductName()%></td>
                            <td><%=p.getCategories()%></td>
                            <td>$<%=p.getPrice()%></td>
                            <td><%=p.getNumberOfProduct()%></td>
                            <td><%=p.getNumberOfsaled()%></td>
                            <td>
                                <form action="updateProduct" method="post" style="display:inline;">
                                    <input type="hidden" name="productID" value="${p.productID}">
                                    <input type="hidden" name="action" value="edit">
                                    <button type="submit" class="btn btn-sm btn-dark">Edit</button>
                                </form>
                               

                            </td>
                        </tr>

                        <%}%>
                        <!-- Add more products here -->
                    </tbody>
                </table>
            </div>
        </div>
        <div class="footer text-right ">
            <a href="#" style="color:#6c7ae0 "> view more</a>
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
<script src="js/highcharts.js"></script>


</body>
</html>