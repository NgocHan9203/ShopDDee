
<!DOCTYPE jsp>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <title>Add product</title>
        <%@include file="include/header1.jsp" %>
        

        <!-- Container -->
        <div class="container">
            <h2 class="stext-301 text-dark cl0 p-b-30" style="font-size: 200%">Add Product</h2>
    <form id="editProductForm">
        <div class="row">
            <div class="col-md-6" style="padding-right: 25px">
                <div class="mb-3">
                    <label for="productType" class="form-label">Product Type:</label>
                    <input type="text" class="form-control form-control-lg" style="border-radius: 30px" id="productType" placeholder="Enter product type">
                </div>
                <div class="mb-3">
                    <label for="productName" class="form-label">Product Name:</label>
                    <input type="text" class="form-control form-control-lg" style="border-radius: 30px" id="productName" placeholder="Enter product name">
                </div>
                <div class="mb-3">
                    <label for="productPrice" class="form-label">Product Price:</label>
                    <input type="number" class="form-control form-control-lg" style="border-radius: 30px" id="productPrice" placeholder="Enter product price">
                </div>
                <div class="mb-3">
                    <label for="productDescription" class="form-label">Product Description:</label>
                    <textarea class="form-control form-control-lg" style="border-radius: 30px" id="productDescription" rows="3" placeholder="Enter product description"></textarea>
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
                        <div class="col-md-8">
                            <div class="mb-3">
                                <label for="productColorNumber" class="form-label">Colors and Numbers:</label>
                                <div class="row">
                                    <div class="col-md-6">
                                        <input type="text" class="form-control form-control-lg" style="border-radius: 20px" placeholder="Enter color" name="productColor[]">
                                    </div>
                                    <div class="col-md-6">
                                        <input type="number" class="form-control form-control-lg" style="border-radius: 20px" placeholder="Enter number of color" name="numberOfColor[]">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <button type="button" class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04" id="addAttributeButton">Add Attribute</button>
                <button type="button" class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04" id="addMoreColorsButton">More Colors</button>
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
        <button type="submit" class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04" style="margin-left: 15%">Add Product</button>
    </form>

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
        <div class="col-md-8">
            <div class="mb-3">
                <label for="productColorNumber" class="form-label">Colors and Numbers:</label>
                <div class="row">
                    <div class="col-md-6">
                        <input type="text" class="form-control form-control-lg" style="border-radius: 20px" placeholder="Enter color" name="productColor[]">
                    </div>
                    <div class="col-md-6">
                        <input type="number" class="form-control form-control-lg" style="border-radius: 20px" placeholder="Enter number of color" name="numberOfColor[]">
                    </div>
                </div>
            </div>
        </div>
    `;

    container.appendChild(newAttributeRow);
});

document.getElementById('addMoreColorsButton').addEventListener('click', function() {
    const lastAttributeRow = document.querySelector('#productAttributesContainer .productAttribute:last-child .col-md-8 .mb-3');

    const newColorRow = document.createElement('div');
    newColorRow.classList.add('row');
    
    newColorRow.innerHTML = `
        <div class="col-md-6">
            <input type="text" class="form-control form-control-lg" style="border-radius: 20px" placeholder="Enter color" name="productColor[]">
        </div>
        <div class="col-md-6">
            <input type="number" class="form-control form-control-lg" style="border-radius: 20px" placeholder="Enter number of color" name="numberOfColor[]">
        </div>
    `;

    lastAttributeRow.appendChild(newColorRow);
});

document.getElementById('editProductForm').addEventListener('submit', function(event) {
    event.preventDefault();
    
    const attributes = [];
    document.querySelectorAll('.productAttribute').forEach((attributeRow) => {
        const size = attributeRow.querySelector('input[name="productSize[]"]').value;
        const colors = Array.from(attributeRow.querySelectorAll('input[name="productColor[]"]')).map(input => input.value);
        const numberOfColors = Array.from(attributeRow.querySelectorAll('input[name="numberOfColor[]"]')).map(input => input.value);

        const colorNumberMap = {};
        colors.forEach((color, index) => {
            colorNumberMap[color] = numberOfColors[index];
        });

        attributes.push({
            size: size,
            colors: colorNumberMap
        });
    });

    const formData = new FormData();
    formData.append('attributes', JSON.stringify(attributes));

    fetch('/edit-product', {
        method: 'POST',
        body: formData
    }).then(response => {
        if (response.ok) {
            alert('Product has been successfully updated!');
        } else {
            alert('There was an error updating the product.');
        }
    }).catch(error => {
        console.error('Error:', error);
        alert('There was an error updating the product.');
    });
});
</script>


    </body>
</html>