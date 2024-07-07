

<!DOCTYPE jsp>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <title>Manage voucher</title>
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
                <a href="OrderManage.jsp" class="list-group-item list-group-item-action " >Manage Order</a>
                <a href="cusManage.jsp" class="list-group-item list-group-item-action">Manage customer</a>
                <a href="#" class="list-group-item list-group-item-action active" style="background-color: black; color: white;" >Manage voucher</a>

            </div>
        </div>
        <div class="col-9">
            <h1 class="mt-3">Voucher Manager</h1>
            
            <div class="row">
               <a href="add_voucher.jsp" class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04" style="margin: 10px 0px 10px 10px" data-bs-toggle="modal" data-bs-target="#productModal">Add voucher</a>
            </div>   
            <div class="mb-3 mt-3">
                <form class="d-flex">
                    <input class="form-control me-2" style="border-radius: 30px" type="search" placeholder="Input name of voucher to search" aria-label="Search">
                    <select class="form-select me-2" style="border-radius: 20px">
                        <option selected>Status</option>
                        <option value="1">Active</option>
                        <option value="2">Expired</option>
                    </select>
                    <button class="btn btn-dark" style="border-radius: 20px" type="submit">Search</button>
                </form>
            </div>
               
            <div class="card">
                <div class="card-header">Voucher List</div>
                <div class="card-body">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th scope="col">Voucher Code</th>
                                <th scope="col">Voucher Name</th>
                                <th scope="col">Discount</th>
                                <th scope="col">Expiration Date</th>
                                <th scope="col">Image</th>
                                <th scope="col">Status</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>V1001</td>
                                <td>Summer Sale</td>
                                <td>20%</td>
                                <td>2024-06-30</td>
                                <td><img src="images/voucher.jsp" alt="voucherImg"></td>                 
                                <td><button class="btn btn-success btn-sm">Active</button></td>
                                <td>
                                    <a href="UpdateVoucher.jsp"><button class="btn btn-dark btn-sm"><i class="bi bi-pencil"></i> Update</button></a>
                                    <button class="btn btn-danger btn-sm" onclick="confirmDelete('V1001')"><i class="bi bi-trash"></i> Delete</button>
                                </td>
                            </tr>
                            <tr>
                                <td>V1002</td>
                                <td>Winter Sale</td>
                                <td>30%</td>
                                <td>2024-01-31</td>
                                <td><img src="images/voucher.jsp" alt="voucherImg"></td>  
                                <td><button class="btn btn-secondary btn-sm">Expired</button></td>
                                <td>
                                    <a href="UpdateVoucher.jsp"><button class="btn btn-dark btn-sm"><i class="bi bi-pencil"></i> Update</button></a>
                                    <button class="btn btn-danger btn-sm" onclick="confirmDelete('V1002')"><i class="bi bi-trash"></i> Delete</button>
                                </td>
                            </tr>
                            <tr>
                                <td>V1003</td>
                                <td>Black Friday</td>
                                <td>50%</td>
                                <td>2024-11-29</td>
                                <td><img src="images/voucher.jsp" alt="voucherImg"></td>  
                                <td><button class="btn btn-success btn-sm">Active</button></td>
                                <td>
                                    <a href="UpdateVoucher.jsp"><button class="btn btn-dark btn-sm"><i class="bi bi-pencil"></i> Update</button></a>
                                    <button class="btn btn-danger btn-sm" onclick="confirmDelete('V1003')"><i class="bi bi-trash"></i> Delete</button>
                                </td>
                            </tr>
                            <!-- Add more voucher rows as needed -->
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="footer text-right">
                <a href="#" style="color:#6c7ae0">View more</a>
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
    <script>
        function confirmDelete(voucherCode) {
            if (confirm("Are you sure you want to delete voucher " + voucherCode + "?")) {
                // Implement the deletion logic here if needed.
                alert("Voucher " + voucherCode + " deleted.");
            }
        }
    </script>

</body>
</html>