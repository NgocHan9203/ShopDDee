<!DOCTYPE jsp>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <title>Manage customer</title>
        <%@include file="include/header1.jsp" %>
        <!-- Container -->
        <div class="container-fluid mt-4">
            <div class="row">
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
                        <a href="revenue.jsp" class="list-group-item list-group-item-action ">Dashboard</a>
                        <a href="productManage.jsp" class="list-group-item list-group-item-action">Manage product</a>
                        <a href="OrderManage.jsp" class="list-group-item list-group-item-action">Manage Order</a>
                        <a href="#" class="list-group-item list-group-item-action active" style="background-color: black; color: white;">Manage customer</a>
                        <a href="VoucherManage.jsp" class="list-group-item list-group-item-action">Manage voucher</a>

                    </div>
                </div>
                <div class="col-md-9">

                    <h1 class="mt-3">Customer Manager</h1>
                       <div class="mb-3 mt-3" >
						<form class="d-flex">
							<input class="form-control me-2" style="border-radius: 30px" type="search" placeholder="Input name of customer to search" aria-label="Search">
							<select class="form-select me-2" style="border-radius: 20px">
								<option selected>Arange</option>
								<option value="1">Buy most to least</option>
								<option value="2">Buy least to most</option>
                                                                <option value="3">abc</option>
							</select>
<!--							<select class="form-select me-2" style="border-radius: 20px">
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
                        <div class="card-header">Customer List</div>
                        <div class="card-body">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">Phone</th>
                                        <th scope="col">Number of order</th>
                                        <th scope="col">Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!-- Sample Data -->
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>John Doe</td>
                                        <td>johndoe@example.com</td>
                                        <td>(123) 456-7890</td>
                                        <td>90</td>
                                        <td>
                                            <button class="btn btn-sm btn-dark" data-bs-toggle="modal" data-bs-target="#customerModal">View detail</button>
                                            <button class="btn btn-sm btn-danger">Delete</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>Jane Smith</td>
                                        <td>janesmith@example.com</td>
                                        <td>(987) 654-3210</td>
                                        <td>4</td>
                                        <td>
                                            <button class="btn btn-sm btn-dark" data-bs-toggle="modal" data-bs-target="#customerModal">view detail</button>
                                            <button class="btn btn-sm btn-danger">Delete</button>
                                        </td>
                                    </tr>
                                    <!-- Add more customers here -->
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="footer text-right ">
                        <a href="#" style="color:#6c7ae0 "> view more</a>
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
        <script src="js/highcharts.js"></script>


    </body>
</html>
