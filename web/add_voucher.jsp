
<!DOCTYPE jsp>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<html lang="en">
    <head>
        <title>Add voucher</title>
        <%@include file="include/header1.jsp" %>
        <!-- Container -->

        <div class="container d-flex justify-content-center align-items-center">
            <div class="col-md-6">
                <h2 class="stext-301 text-dark cl0 p-b-30" style="font-size: 200%">Add Voucher</h2>
                <form id="addVoucherForm">
                    <div class="mb-3">
                        <label for="voucherCode" class="form-label">Voucher Code:</label>
                        <input type="text" class="form-control form-control-lg" style="border-radius: 30px" id="voucherCode" placeholder="Enter voucher code">
                    </div>
                    <div class="mb-3">
                        <label for="discount" class="form-label">Discount:</label>
                        <input type="text" class="form-control form-control-lg" style="border-radius: 30px" id="discount" placeholder="Enter discount">
                    </div>
                    <div class="mb-3">
                        <label for="expiryDate" class="form-label">Expiry Date:</label>
                        <input type="date" class="form-control form-control-lg" style="border-radius: 30px" id="expiryDate">
                    </div>
                    <div class="mb-3">
                        <label for="productImage" class="form-label">Upload Image:</label>
                        <input type="file" class="form-control form-control-lg" style="border-radius: 20px" id="productImage" name="productImage" accept="image/*" required>
                    </div>

                    <div class="d-flex justify-content-center">
                        <button type="submit" class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04">Add Voucher</button>
                    </div>            

                </form>
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
                            document.getElementById('addVoucherForm').addEventListener('submit', function (event) {
                                event.preventDefault();
                                const formData = new FormData(this);

                                fetch('/add-voucher', {
                                    method: 'POST',
                                    body: formData
                                }).then(response => {
                                    if (response.ok) {
                                        alert('Voucher has been added successfully!');
                                    } else {
                                        alert('An error occurred while adding the voucher.');
                                    }
                                }).catch(error => {
                                    console.error('Error:', error);
                                    alert('An error occurred while adding the voucher.');
                                });
                            });

        </script>

    </body>
</html>