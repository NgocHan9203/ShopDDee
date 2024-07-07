<!DOCTYPE jsp>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <title>Manage order</title>
<%@include file="include/header1.jsp" %>


    <div class="container-fluid row mt-nav ">

        <div class="col-md-3">
            <div class="card">
                <div class="card-body text-center">
                    <a href="admin_info.jsp">
                        <img src="https://via.placeholder.com/150" class="rounded-circle img-fluid zoomable" alt="User Image">
                    </a>
                    <h5 class="mt-2">ShopDee</h5>
                    <p class="text-muted">Online</p>
                </div>
            </div>
            <div class="list-group mt-3">
                <a href="revenue.jsp" class="list-group-item list-group-item-action">Dashboard</a>
                <a href="productManage.jsp" class="list-group-item list-group-item-action">Manage product</a>
                <a href="#" class="list-group-item list-group-item-action active" style="background-color: black; color: white;" >Manage Order</a>
                <a href="cusManage.jsp" class="list-group-item list-group-item-action">Manage customer</a>
                <a href="VoucherManage.jsp" class="list-group-item list-group-item-action">Manage voucher</a>

            </div>
        </div>
        <div class="col-9">



            <h1 class="mt-3">Order Manager</h1>
            <div class="mb-3 mt-3" >
                <form class="d-flex">
                    <input class="form-control me-2" style="border-radius: 30px" type="search" placeholder="Input name of customer to search" aria-label="Search">
                    <select class="form-select me-2" style="border-radius: 20px">
                        <option selected>Status</option>
                        <option value="1">Done</option>
                        <option value="2">Doing</option>
                        <option value="3">Cancel</option>
                    </select>
                    <!--                        <select class="form-select me-2" style="border-radius: 20px">
                                                <option selected>Arrange</option>
                                                <option value="1">Best saler </option>
                                                <option value="2">Few sales</option>
                                                <option value="3">Least left</option>
                                                <option value="4">abc</option>
                                            </select>-->

                    <button class="btn btn-dark" style="border-radius: 20px" type="submit">Search</button>
                </form>
            </div>
            <div class="card">
                <div class="card-header">Product List</div>
                <div class="card-body">

                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <!--                                    <th scope="col"><input type="checkbox"></th>-->
                                <th scope="col">Order code</th>
                                <th scope="col">Customer name</th>
                                <!--                                    <th scope="col">Hình ảnh</th>-->
                                <th scope="col">Count</th>
                                <th scope="col">Total prize</th>
                                <th scope="col">Date</th>
                                <th scope="col">Status</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <!--                                    <td><input type="checkbox"></td>-->
                                <td><a href="Order_Detail_Admin.jsp">O1001</a></td>
                                <td>Ngoc Han</td>
                                <!--                                    <td><img src="image1.jpg" alt="Áo sơ mi công sở" width="50"></td>-->
                                <td>4</td>
                                <td>90,000</td>
                                <td>2024-05-22</td>
                                <td><button class="btn btn-success btn-sm"><i class="bi bi-trash"></i>Done</button></td>
                                <td>
                                    <button class="btn btn-dark btn-sm"><i class="bi bi-pencil"></i>Update status</button>
<!--                                    <button class="btn hov-btn2 bg1"><i class="bi bi-trash"></i>Update status</button>-->
                                </td>
                            </tr>
                            <tr>
                                <!--                                    <td><input type="checkbox"></td>-->
                                <td><a href="Order_Detail_Admin.jsp">O1002</a></td>
                                <td> Bo thui</td>
                                <!--                                    <td><img src="image2.jpg" alt="Áo phông nữ" width="50"></td>-->
                                <td>2</td>
                                <td>170,000</td>
<!--                                                                    <td>Áo</td>-->
                                <td>2024-05-21</td>
                                <td><button class="btn btn-secondary btn-sm"><i class="bi bi-trash"></i> Doing</button></td>
                                <td>
                                    <button class="btn btn-dark btn-sm"><i class="bi bi-pencil">Update status</i></button>
                                    
                                </td>
                            </tr>
                            <tr>
                                <!--                                    <td><input type="checkbox"></td>-->
                                <td><a href="Order_Detail_Admin.jsp">O1003</a></td>
                                <td> Thuy Duong</td>
                                <!--                                    <td><img src="image2.jpg" alt="Áo phông nữ" width="50"></td>-->
                                <td>3</td>
                                <td>500,000</td>
                                <!--                                    <td>Áo</td>-->
                                <td>2024-05-21</td>
                                <td><button class="btn btn-danger btn-sm"><i class="bi bi-trash"></i>Cancel</button></td>
                                <td>
                                    <button class="btn btn-dark btn-sm" ><i class="bi bi-pencil">Update status</i></button>
                                    
                                </td>
                            </tr>
                            <!-- Thêm các dòng sản phẩm khác ở đây -->
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