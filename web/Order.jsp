
<%@page import="Model.Cart_Item"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Order</title>
        <%@include file="include/header1.jsp" %>
        <!-- breadcrumb -->
    <div style="border-top:2px solid #ccc">
        <div class=" container bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
            <a href="home" class="stext-109 cl8 hov-cl1 trans-04">
                Home
                <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
            </a>

            <span class="stext-109 cl4">Order</span>
        </div>
    </div>

    <!--Order bill -->

    <%
        Double total = 5.0;
        List<Cart_Item> cartL = cartList;
        if (cartL != null && !cartL.isEmpty()) {
            for (Cart_Item item : cartL) {
                total += item.getPrice() * item.getQuantity();
            }
        }

        String mess = (String) request.getAttribute("messVoucher");
        Integer discount = (Integer) request.getAttribute("discount");
        if (discount != null && discount > 0) {
            total = total * (1 - discount / 100.0);
        }
        
          // L?y realTotal t? request n?u có
    Double realTotal = (Double) request.getAttribute("realTotal");
    Double subTotal = (Double) request.getAttribute("subTotal");
    %>

    <form class="bg0 p-b-85" id="frmCreateOrder" action="Order" method="post">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 m-lr-auto m-b-50">
                    <div class="wrap-table-shopping-cart">
                        <!--                            <div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm" style="border-top:2px solid #ccc ; opacity: 0.5">
                                                        <h4 class="mtext-109 cl2 p-b-30  text-center">Cart Totals</h4>
                                                    </div>-->

                        <table class="table table-shopping-cart">
                            <thead class="table_head">
                                <tr>
                                    <th class="column-1">Product</th>
                                    <th class="column-2"></th>
                                    <th class="column-3">Price</th>
                                    <th class="column-4">Quantity</th>
                                    <th class="column-5">Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% if (cartL != null && !cartL.isEmpty()) {
                                            for (Cart_Item item : cartL) {%>
                                <tr>
                                    <td class="column-1">
                                        <div class="how-itemcart1">
                                            <img src="<%= item.getCartImg()%>" alt="Product Image" />
                                        </div>
                                    </td>
                                    <td class="column-2"><%= item.getProductName()%></td>
                                    <td class="column-3">$<%= String.format("%.2f", item.getPrice())%></td>
                                    <td class="column-4"><%= item.getQuantity()%></td>
                                    <td class="column-5">$<%= String.format("%.2f", item.getPrice() * item.getQuantity())%></td>
                                </tr>
                                <% }
                                    } else { %>
                                <tr>
                                    <td colspan="5">No items selected.</td>
                                </tr>
                                <% }%>
                            </tbody>
                        </table>
                    </div>
                    

                    <!-- Subtotal -->
                    <div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm d-flex justify-content-between align-items-center">
                        <div class="size-208">
                            <span class="stext-110 cl2">SubTotal:</span>
                        </div>
                        <div class="size-209 ms-auto" style="text-align:right">
                            <span class="mtext-110 cl2">$<%= String.format("%.2f",subTotal != null ? subTotal : total ) %></span>
                        </div>
                        <input type="hidden" name="total" value="<%= String.format("%.2f", realTotal != null ? realTotal : total ) %>">
                    </div>

                    <!-- Total -->
                    <div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm d-flex justify-content-between align-items-center">
                        <div class="size-208">
                            <span class="stext-110 cl2">Total:</span>
                        </div>
                        <div class="size-209 ms-auto" style="text-align:right">
                            <span class="mtext-110 cl2">$<%= String.format("%.2f", realTotal != null ? realTotal : total ) %></span>
                        </div>
                    </div>


                    <div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm"><%= mess%></div>
                    <div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
                        <%
                            if (mess == null || !mess.equals("Valid code")) {
                        %>
                        <div class="flex-w flex-m m-r-20 m-tb-5">
                            <input class="form-control stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5" type="text" id="couponInput" placeholder="Coupon Code" />
                            <a id="applyCouponBtn" href="#" class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5" onclick="submitVoucherForm();">Apply coupon</a>
                        </div>
                        <%
                            }
                        %>
                        <button type="button" class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5" onclick="window.location.href = '<%= request.getContextPath()%>/CartList'">
                            Update Cart
                        </button>
                    </div>
                </div>
                <div class="col-lg-5 m-lr-auto m-b-50">
                    <div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-0 m-r-0 p-lr-15-sm">
                        <h4 class="mtext-109 cl2 p-b-15">Shipping:</h4>
                        <!-- Shipping fee -->
                        <div class="p-b-15">
                            <span class="stext-110 cl2">Shipping fee for any city: 5$</span>
                        </div>
                        
                    
                        <div class="container form-container mt-0" >
                            
                            <div class="form-group">
                                <label for="name">Name:</label> 
                                <input type="text" class="form-control" id="name" name="name" placeholder="Ex: Huynh Han" required title="Please enter your name">
                            </div>
                            <div class="form-group">
                                <label for="phone">Phone:</label> 
                                <input type="text" class="form-control" id="phone" name="phone" placeholder="Ex: 0123456789" required title="Please enter your phone">
                            </div>
                            <div class="form-group">
                                <label for="city">City:</label> 
                                <input type="text" class="form-control" id="city" name="city" placeholder="Ex: Ho Chi Minh" required title="Please enter your City">
                            </div>
                            <div class="form-group">
                                <label for="street">Address:</label> 
                                <input type="text" class="form-control" id="street" name="street" placeholder="Ex: 12 Nguyen Tat To" required title="Please enter your address">
                            </div>
                            <div class="form-group" style="padding-left: 10px;">
                                <label for="payment-method">Payment method:</label>
                                <div style="padding-left: 30px;">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="paymentMethod" id="vnpay" value="VNBANK" checked>
                                        <label class="form-check-label" for="vnpay">VNPay</label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="paymentMethod" id="cashOnDelivery" value="cashOnDelivery">
                                        <label class="form-check-label" for="cashOnDelivery">Pay when receiver (COD)</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">
                            Proceed to Checkout
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </form>





    <!-- Footer -->
    <%@include file="include/footer.jsp" %>


    <!--===============================================================================================-->
    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/select2/select2.min.js"></script>
    <script>
                            $(".js-select2").each(function () {
                                $(this).select2({
                                    minimumResultsForSearch: 20,
                                    dropdownParent: $(this).next(".dropDownSelect2"),
                                });
                            });
    </script>
    <!--===============================================================================================-->
    <script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script>
                            $(".js-pscroll").each(function () {
                                $(this).css("position", "relative");
                                $(this).css("overflow", "hidden");
                                var ps = new PerfectScrollbar(this, {
                                    wheelSpeed: 1,
                                    scrollingThreshold: 1000,
                                    wheelPropagation: false,
                                });

                                $(window).on("resize", function () {
                                    ps.update();
                                });
                            });
    </script>
    <!--===============================================================================================-->
    <script src="js/main.js"></script>

    <script type="text/javascript">
                            document.getElementById('frmCreateOrder').addEventListener('submit', function (event) {
                                event.preventDefault(); // Ng?n ch?n form g?i ?i m?c ??nh

                                var paymentMethod = document.querySelector('input[name="paymentMethod"]:checked').value;

                                if (paymentMethod === 'VNBANK') {
                                    var postData = $("#frmCreateOrder").serialize();
                                    var submitUrl = $("#frmCreateOrder").attr("action");
                                    console.log("Sending AJAX request to:", submitUrl);
                                    console.log("Post data:", postData);

                                    $.ajax({
                                        type: "POST",
                                        url: submitUrl,
                                        data: postData,
                                        dataType: 'JSON',
                                        success: function (x) {
                                            console.log("Response from server:", x);
                                            if (x.code === '00') {
//                                                if (window.vnpay) {
//                                                    vnpay.open({width: 768, height: 600, url: x.data});
//                                                } else {
//                                                    location.href = x.data;
//                                                }
                                                window.open(x.data, 'VNPAY', 'width=768,height=600');
                                                return false;
                                            } else {
                                                alert(x.Message);
                                            }
                                        }
                                    });
                                } else if (paymentMethod === 'cashOnDelivery') {
                                    // X? lý ??n hàng COD t?i ?ây
                                    alert('B?n ?ã ch?n ph??ng th?c thanh toán khi nh?n hàng (COD). ??n hàng c?a b?n s? ???c x? lý.');
                                    document.getElementById('frmCreateOrder').submit(); // G?i form ?i ?? x? lý trên server
                                }
                            });

    </script>    
    <script>
        document.getElementById('applyCouponBtn').addEventListener('click', function (event) {
            event.preventDefault();

            var coupon = document.getElementById('couponInput').value;
            var total = '<%= total%>'; // ??m b?o total ?ã ???c khai báo và tính toán trong mã JSP c?a b?n

            window.location.href = 'VoucherServlet?coupon=' + encodeURIComponent(coupon) + '&total=' + encodeURIComponent(total);
        });
    </script>
</body>
</html>
