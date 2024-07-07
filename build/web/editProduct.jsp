


<!DOCTYPE jsp>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <title>Edit product</title>
        <%@include file="include/header1.jsp" %>
        <!-- Container -->

       <div class="container">
        <h2 class="stext-301 text-dark cl0 p-b-30" style="font-size: 200%">Edit Product</h2>
        <form id="editProductForm">
            <div class="row">
                <div class="col-md-6" style="padding-right: 25px">
                    <div class="mb-3">
                        <label for="productName" class="form-label">Product Name:</label>
                        <input type="text" class="form-control form-control-lg" style="border-radius: 30px" id="productName" name="productName" placeholder="Enter product name" required>
                    </div>
                    <div class="mb-3">
                        <label for="productPrice" class="form-label">Price:</label>
                        <input type="number" class="form-control form-control-lg" style="border-radius: 30px" id="productPrice" name="productPrice" placeholder="Enter price" required>
                    </div>
                    <div class="mb-3">
                        <label for="productDescription" class="form-label">Product Description:</label>
                        <textarea class="form-control form-control-lg" style="border-radius: 30px" id="productDescription" name="productDescription" rows="3" placeholder="Enter product description" required></textarea>
                    </div>
                </div>
                <div class="col-md-6" style="padding-left: 25px">
                    <div id="productAttributesContainer">
                        <div class="row productAttribute">
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="productSize" class="form-label">Size:</label>
                                    <input type="text" class="form-control form-control-lg" style="border-radius: 20px" id="productSize" name="productSize[]" placeholder="Enter size">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="productColor" class="form-label">Color:</label>
                                    <input type="text" class="form-control form-control-lg" style="border-radius: 20px" id="productColor" name="productColor[]" placeholder="Enter color">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="productQuantity" class="form-label">Number:</label>
                                    <input type="number" class="form-control form-control-lg" style="border-radius: 20px" id="productQuantity" name="productQuantity[]" placeholder="Enter quantity">
                                </div>
                            </div>
                        </div>
                    </div>
                    <button type="button" class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04" id="addAttributeButton">Add Attribute</button>
                    <div class="mb-3">
                        <label for="productCategory" class="form-label">Category:</label>
                        <select class="form-control form-control-lg" style="border-radius: 20px" id="productCategory" name="productCategory" required>
                            <option value="men">Men</option>
                            <option value="women">Women</option>
                            <option value="kids">Kids</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="productImage" class="form-label">Upload Image:</label>
                        <input type="file" class="form-control form-control-lg" style="border-radius: 20px" id="productImage" name="productImage" accept="image/*" required>
                    </div>
                </div>
            </div>
            <button type="submit" class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04" style="margin-left: 15%">Save Changes</button>
        </form>
    </div>







        <!-- Footer -->
        <footer class="bg3 p-t-75 p-b-32 mt-3">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-lg-3 p-b-50">
                        <h4 class="stext-301 cl0 p-b-30">
                            Categories
                        </h4>

                        <ul>
                            <li class="p-b-10">
                                <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                                    Women
                                </a>
                            </li>

                            <li class="p-b-10">
                                <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                                    Men
                                </a>
                            </li>

                            <li class="p-b-10">
                                <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                                    Shoes
                                </a>
                            </li>

                            <li class="p-b-10">
                                <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                                    Watches
                                </a>
                            </li>
                        </ul>
                    </div>

                    <div class="col-sm-6 col-lg-3 p-b-50">
                        <h4 class="stext-301 cl0 p-b-30">
                            Help
                        </h4>

                        <ul>
                            <li class="p-b-10">
                                <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                                    Track Order
                                </a>
                            </li>

                            <li class="p-b-10">
                                <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                                    Returns 
                                </a>
                            </li>

                            <li class="p-b-10">
                                <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                                    Shipping
                                </a>
                            </li>

                            <li class="p-b-10">
                                <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                                    FAQs
                                </a>
                            </li>
                        </ul>
                    </div>

                    <div class="col-sm-6 col-lg-3 p-b-50">
                        <h4 class="stext-301 cl0 p-b-30">
                            GET IN TOUCH
                        </h4>

                        <p class="stext-107 cl7 size-201">
                            Any questions? Let us know in store at 8th floor, 379 Hudson St, New York, NY 10018 or call us on (+1) 96 716 6879
                        </p>

                        <div class="p-t-27">
                            <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                                <i class="fa fa-facebook"></i>
                            </a>

                            <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                                <i class="fa fa-instagram"></i>
                            </a>

                            <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                                <i class="fa fa-pinterest-p"></i>
                            </a>
                        </div>
                    </div>

                    <div class="col-sm-6 col-lg-3 p-b-50">
                        <h4 class="stext-301 cl0 p-b-30">
                            Newsletter
                        </h4>

                        <form>
                            <div class="wrap-input1 w-full p-b-4">
                                <input class="input1 bg-none plh1 stext-107 cl7" type="text" name="email" placeholder="email@example.com">
                                <div class="focus-input1 trans-04"></div>
                            </div>

                            <div class="p-t-18">
                                <button class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04">
                                    Subscribe
                                </button>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="p-t-40">
                    <div class="flex-c-m flex-w p-b-18">
                        <a href="#" class="m-all-1">
                            <img src="images/icons/icon-pay-01.png" alt="ICON-PAY">
                        </a>

                        <a href="#" class="m-all-1">
                            <img src="images/icons/icon-pay-02.png" alt="ICON-PAY">
                        </a>

                        <a href="#" class="m-all-1">
                            <img src="images/icons/icon-pay-03.png" alt="ICON-PAY">
                        </a>

                        <a href="#" class="m-all-1">
                            <img src="images/icons/icon-pay-04.png" alt="ICON-PAY">
                        </a>

                        <a href="#" class="m-all-1">
                            <img src="images/icons/icon-pay-05.png" alt="ICON-PAY">
                        </a>
                    </div>

                    <p class="stext-107 cl6 txt-center">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> &amp; distributed by <a href="https://themewagon.com" target="_blank">ThemeWagon</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

                    </p>
                </div>
            </div>
        </footer>


        <!-- Back to top -->
        <div class="btn-back-to-top" id="myBtn">
            <span class="symbol-btn-back-to-top">
                <i class="zmdi zmdi-chevron-up"></i>
            </span>
        </div>

        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        <script src="js/main.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/highcharts.js"></script>
        <script>
            document.getElementById('addAttributeButton').addEventListener('click', function() {
    const container = document.getElementById('productAttributesContainer');

    const newAttributeRow = document.createElement('div');
    newAttributeRow.classList.add('row', 'productAttribute');
    
    newAttributeRow.innerHTML = `
        <div class="col-md-4">
            <div class="mb-3">
                <label for="productSize" class="form-label">Size:</label>
                <input type="text" class="form-control form-control-lg" style="border-radius: 20px" id="productSize" name="productSize[]" placeholder="Enter size">
            </div>
        </div>
        <div class="col-md-4">
            <div class="mb-3">
                <label for="productColor" class="form-label">Color:</label>
                <input type="text" class="form-control form-control-lg" style="border-radius: 20px" id="productColor" name="productColor[]" placeholder="Enter color">
            </div>
        </div>
        <div class="col-md-4">
            <div class="mb-3">
                <label for="productQuantity" class="form-label">Number:</label>
                <input type="number" class="form-control form-control-lg" style="border-radius: 20px" id="productQuantity" name="productQuantity[]" placeholder="Enter quantity">
            </div>
        </div>
    `;

    container.appendChild(newAttributeRow);
});

document.getElementById('editProductForm').addEventListener('submit', function(event) {
    event.preventDefault();
    const formData = new FormData(this);

    fetch('/edit-product', {
        method: 'POST',
        body: formData
    }).then(response => {
        if (response.ok) {
            alert('Sản phẩm đã được cập nhật thành công!');
        } else {
            alert('Đã xảy ra lỗi khi cập nhật sản phẩm.');
        }
    }).catch(error => {
        console.error('Error:', error);
        alert('Đã xảy ra lỗi khi cập nhật sản phẩm.');
    });
});

    </script>

    </body>
</html>