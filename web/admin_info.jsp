<!DOCTYPE jsp>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <title>Order</title>
        <%@include file="include/header1.jsp" %>


   <!-- Container -->
    <div class="container-fluid">
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
				<!-- Menu container -->
                <div class="list-group mt-3">
                    <a href="revenue.jsp" class="list-group-item list-group-item-action " >Dashboard</a>
                    <a href="productManage.jsp" class="list-group-item list-group-item-action">Manage product</a>
                    <a href="OrderManage.jsp" class="list-group-item list-group-item-action">Manage Order</a>
                    <a href="cusManage.jsp" class="list-group-item list-group-item-action">Manage customer</a>
                    <a href="#" class="list-group-item list-group-item-action">Manage voucher</a>
<!--                    <a href="#" class="list-group-item list-group-item-action active" style="background-color: black; color: white;" >Manage profile</a>-->
                </div>
            </div>
             <div class="col-9 ">
                   
                        <!-- Container <div class="col-lg-10 col-xl-7 m-lr-auto m-b-50 "  style=" width:  100%">-->

                            <div class="m-l-25 m-r--38 m-lr-0-xl" style="margin-left:0px ">


                                <div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm" style= "border-top: 0.8px solid grey; margin-right: 50px ">
                                    <h4 class="mtext-109 cl2 p-b-30">
                                        Profile
                                    </h4>

                                    <div class="flex-w flex-l m-r-20 m-tb-5 w-100">
                                        <input class="w-100 stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5"
                                               type="text" placeholder="Name">
                                    </div>

                                    <div class="flex-w flex-l m-r-20 m-tb-5 w-100">
                                        <input class="w-100 stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5"
                                               type="text" placeholder="Gender">
                                    </div>

                                    <div class="flex-w flex-l m-r-20 m-tb-5 w-100">
                                        <input class="w-100 stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5"
                                               type="number" placeholder="Date of birth">
                                    </div>

                                    <div class="flex-w flex-l m-r-20 m-tb-5 w-100">
                                        <input class="w-100 stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5"
                                               type="text" placeholder="Phone Number">
                                    </div>

                                    <div class="flex-w flex-l m-r-20 m-tb-5 w-100">
                                        <input class="w-100 stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5"
                                               type="text" value="name@gmail.com" readonly> 

                                    </div>
                                    <div class="container">
                                        <div class="row justify-content-center">
                                            <div class="col-12 d-flex justify-content-center">
                                                <a href="changePassword.jsp" class="m-2">
                                                    <div class="flex-c-m stext-101 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer">
                                                        Change password
                                                    </div>
                                                </a>
                                                <a href="Update-cus.jsp" class="m-2">
                                                    <div class="flex-c-m stext-101 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer">
                                                        Update information
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
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
    <script src="js/highcharts.js"></script>in
 
	
</body>
</html>