<%@page import="Model.Cart_Item"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Your cart</title>
        <%@include file="include/header1.jsp" %>
        <!-- breadcrumb -->
    <div class="container">
        <div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
            <a href="home" class="stext-109 cl8 hov-cl1 trans-04">
                Home
                <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
            </a>

            <span class="stext-109 cl4">
                Shoping Cart
            </span>
        </div>
    </div>


    <!-- Shoping Cart -->

    <form class="bg0 p-t-75 p-b-85" action="Order">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
                    <div class="m-l-25 m-r--38 m-lr-0-xl">
                        <div class="wrap-table-shopping-cart">

                            <table class="table-shopping-cart">
                                <tr class="table_head">
                                    <th class="column-1">Product</th>
                                    <th class="column-2"></th>

                                    <th class="column-3" style="padding-left:10px">Price</th>
                                    <th class="column-4 text-center">Quantity</th>
                                    <th class="column-5">Total</th>
                                </tr>
                                <% Double total = 0.0;
                                    List<Cart_Item> cartL = cartList;
                                    if (cartL != null && !cartL.isEmpty()) {
                                        int index = 1;
                                        for (Cart_Item c : cartL) {
                                            String productId = "product-" + index; // T?o id cho t?ng s?n ph?m
%>
                                <tr data-cart-detail-id="<%= c.getCartDetailID()%>" data-price="<%= c.getPrice()%>" id="<%= productId%>">
                                    <td class="column-1">
                                        <a href="deleteCart?cartDetailId=<%= c.getCartDetailID()%>">
                                            <div class="how-itemcart1 p-b-10 p-t-10">

                                                <img src="<%= c.getCartImg()%>" alt="IMG" />

                                            </div>
                                        </a>
                                    </td>
                                    <td class="column-2">
                                        <div><%= c.getProductName()%></div>
                                        <span style="font-size: smaller; color: #888;">
                                            <%= c.getSize()%> | <%= c.getColor()%>
                                        </span><br>
                                        
                                    </td>

                                    <td class="column-3">$ <span class="product-price"><%= c.getPrice()%></span></td>
                                    <td class="column-4">
                                        <div class="wrap-num-product flex-w m-l-auto m-r-0">
                                            <input type="hidden" class="cart-detail-id" value="<%= c.getCartDetailID()%>" />
                                            <div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
                                                <i class="fs-16 zmdi zmdi-minus"></i>
                                            </div>
                                            <input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product-1" value="<%= c.getQuantity()%>" min="1" />
                                            <div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
                                                <i class="fs-16 zmdi zmdi-plus"></i>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="column-5"><span class="total-price"><%= c.getPrice() * c.getQuantity()%> $</span></td>
                                </tr>
                                <% total += c.getPrice() * c.getQuantity();
                                        index++;
                                    } %>
                                <% } else { %>
                                <tr>
                                    <td colspan="5">No items selected.</td>
                                </tr>
                                <% } %>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
                    <div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
                        <h4 class="mtext-109 cl2 p-b-30">Cart Totals</h4>
                        <div class="flex-w flex-t p-t-27 p-b-33">
                            <div class="size-208">
                                <span class="mtext-101 cl2"> Total: </span>
                            </div>
                            <div class="size-209 p-t-1">
                                <span class="mtext-110 cl2 cart-total">$<%=String.format("%.2f",total)%></span>
                            </div>
                        </div>
                        <button type="submit"
                                class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">
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
                dropdownParent: $(this).next('.dropDownSelect2')
            });
        })
    </script>
    <!--===============================================================================================-->
    <script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script>
        $('.js-pscroll').each(function () {
            $(this).css('position', 'relative');
            $(this).css('overflow', 'hidden');
            var ps = new PerfectScrollbar(this, {
                wheelSpeed: 1,
                scrollingThreshold: 1000,
                wheelPropagation: false,
            });

            $(window).on('resize', function () {
                ps.update();
            })
        });
    </script>
    <!--===============================================================================================-->
    <script src="js/main.js"></script>
    <!--        <script>
                                document.addEventListener('DOMContentLoaded', function () {
                                    var btnDowns = document.querySelectorAll('.btn-num-product-down');
                                    var btnUps = document.querySelectorAll('.btn-num-product-up');
    
                                    function updateQuantity(cartDetailID, newQuantity, rowElement) {
                                        var xhr = new XMLHttpRequest();
                                        xhr.open("POST", "CartList", true); // URL of your servlet
                                        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    
                                        xhr.onreadystatechange = function () {
                                            if (xhr.readyState === 4 && xhr.status === 200) {
                                                // Update DOM after receiving a response from the server
                                                var price = parseFloat(rowElement.getAttribute('data-price'));
                                                var totalPriceElement = rowElement.querySelector('.total-price');
                                                totalPriceElement.textContent = (price * newQuantity).toFixed(2);
    
                                                // Update the total price of the cart
                                                updateTotalPrice();
                                            }
                                        };
    
                                        xhr.send("cartDetailID=" + cartDetailID + "&quantity=" + newQuantity);
                                    }
    
                                    function updateTotalPrice() {
                                        var total = 0;
                                        document.querySelectorAll('.total-price').forEach(function (totalPriceElement) {
                                        total += parseFloat(totalPriceElement.textContent);
    //                                    document.querySelector('.cart-total').textContent = total.toFixed(2);   
                                     });
                                        document.querySelector('.cart-total').textContent = total.toFixed(2);
                                    }
    
                                    function handleQuantityChange(input, change) {
                                        var currentQuantity = parseInt(input.value);
                                        var newQuantity = currentQuantity + change;
    
                                        if (newQuantity >= 1) {
                                            input.value = newQuantity;
                                            var rowElement = input.closest('tr');
                                            var cartDetailID = rowElement.getAttribute('data-cart-detail-id');
                                            updateQuantity(cartDetailID, newQuantity, rowElement);
                                        }
                                    }
    
                                   btnDown.addEventListener('click', function () {
        var inputQuantity = btnDown.nextElementSibling;
        handleQuantityChange(inputQuantity, -1);
    });
    
    btnUp.addEventListener('click', function () {
        var inputQuantity = btnUp.previousElementSibling;
        handleQuantityChange(inputQuantity, 1);
    });
    
    
                                    document.querySelectorAll('.num-product').forEach(function (inputQuantity) {
                                        inputQuantity.addEventListener('input', function () {
                                            var newQuantity = parseInt(inputQuantity.value);
                                            if (newQuantity >= 1) {
                                                var rowElement = inputQuantity.closest('tr');
                                                var cartDetailID = rowElement.getAttribute('data-cart-detail-id');
                                                updateQuantity(cartDetailID, newQuantity, rowElement);
                                            } else {
                                                inputQuantity.value = 1;
                                            }
                                        });
                                    });
                                });
    
            </script>-->
    <script>

        document.addEventListener('DOMContentLoaded', function () {
            var btnDownProducts = document.querySelectorAll('.btn-num-product-down');
            var btnUpProducts = document.querySelectorAll('.btn-num-product-up');
            var handlingClick = false; // Bi?n ?ánh d?u xem có ?ang x? lý click hay không

            // L?ng nghe s? ki?n click c?a nút gi?m s? l??ng
            btnDownProducts.forEach(function (btnDown) {
                btnDown.addEventListener('click', function (event) {
                    event.preventDefault(); // Ng?n ch?n hành ??ng m?c ??nh c?a nút (ví d? nh?y lên ??u trang)

                    if (handlingClick)
                        return; // N?u ?ang x? lý s? ki?n click khác thì không cho phép x? lý ti?p
                    handlingClick = true; // ?ánh d?u ?ang x? lý s? ki?n click

                    var rowElement = btnDown.closest('tr');
                    var inputQuantity = rowElement.querySelector('.num-product');
                    var currentQuantity = parseInt(inputQuantity.value);
                    var productId = rowElement.id; // L?y id c?a s?n ph?m

                    handleQuantityChange(inputQuantity, currentQuantity - 1, productId, function () {
                        inputQuantity.value = currentQuantity - 1;
                        var price = parseFloat(rowElement.getAttribute('data-price'));
                        var totalPriceElement = rowElement.querySelector('.total-price');
                        totalPriceElement.textContent = "$" + (price * (currentQuantity - 1)).toFixed(2);

                        updateTotalPrice();

                        handlingClick = false; // Sau khi x? lý xong, ?ánh d?u là ?ã hoàn thành x? lý s? ki?n click
                    });
                });
            });

            // L?ng nghe s? ki?n click c?a nút t?ng s? l??ng
            btnUpProducts.forEach(function (btnUp) {
                btnUp.addEventListener('click', function (event) {
                    event.preventDefault(); // Ng?n ch?n hành ??ng m?c ??nh c?a nút (ví d? nh?y lên ??u trang)

                    if (handlingClick)
                        return; // N?u ?ang x? lý s? ki?n click khác thì không cho phép x? lý ti?p
                    handlingClick = true; // ?ánh d?u ?ang x? lý s? ki?n click

                    var rowElement = btnUp.closest('tr');
                    var inputQuantity = rowElement.querySelector('.num-product');
                    var currentQuantity = parseInt(inputQuantity.value);
                    var productId = rowElement.id; // L?y id c?a s?n ph?m

                    handleQuantityChange(inputQuantity, currentQuantity + 1, productId, function () {
                        inputQuantity.value = currentQuantity + 1;
                        var price = parseFloat(rowElement.getAttribute('data-price'));
                        var totalPriceElement = rowElement.querySelector('.total-price');
                        totalPriceElement.textContent = "$" + (price * (currentQuantity + 1)).toFixed(2);

                        updateTotalPrice();

                        handlingClick = false; // Sau khi x? lý xong, ?ánh d?u là ?ã hoàn thành x? lý s? ki?n click
                    });
                });
            });

            function handleQuantityChange(input, newQuantity, productId, callback) {
                var cartDetailID = input.closest('tr').getAttribute('data-cart-detail-id');
                var xhr = new XMLHttpRequest();
                xhr.open("POST", "CartList", true);
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

                xhr.onreadystatechange = function () {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        console.log(xhr.responseText); // Log response t? server (optional)
                        if (typeof callback === 'function') {
                            callback(); // G?i callback khi x? lý thành công
                        }
                    }
                };

                xhr.send("cartDetailID=" + cartDetailID + "&quantity=" + newQuantity + "&productId=" + productId);
            }

            function updateTotalPrice() {
                var total = 0;
                document.querySelectorAll('.total-price').forEach(function (totalPriceElement) {
                    total += parseFloat(totalPriceElement.textContent.replace('$', ''));
                });
                document.querySelector('.cart-total').textContent = "$" + total.toFixed(2);
            }
        });




    </script>

</body>
</html>