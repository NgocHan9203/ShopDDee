<!DOCTYPE jsp>
<html lang="en">

 <html lang="en">
    <head>
        <title>Reply feedback</title>
        <%@include file="include/header1.jsp" %>


        <!-- Content page -->
        <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('images/bg-01.jpg');">
            <h2 class="ltext-105 cl0 txt-center">
                Feedback Product
            </h2>
        </section>

        <!-- Form và Review Section -->
        <section class="bg0 p-t-104 p-b-116">
            <div class="container" style="display: flex; justify-content: center; align-items: center;">
                <div class="size-210 bor10 p-lr-70 p-t-55 p-b-30 p-lr-15-lg w-full-md" style="width: 100%; max-width: 600px; display: flex; flex-direction: column; align-items: center;">
                    <form action="OrderManage.jsp" id="review-form" style="width: 100%; text-align: center;">
                        <h4 class="mtext-105 cl2 txt-center p-b-30" style="margin-bottom: 30px;">
                            Feedback of customer
                        </h4>

                        <div class="bor8 m-b-20 how-pos4-parent" style="margin-bottom: 20px; position: relative; width: 100%;">
                            <p>Good product, I will buy again in the future.</p>
                        </div>

                        <div class="bor8 m-b-20 how-pos4-parent" style="margin-bottom: 20px; position: relative; width: 100%;">
                            <textarea id="review" class="stext-111 cl2 plh3 size-120 p-lr-28 p-tb-25" name="review" placeholder="Enter your review here" style="width: 100%; padding: 10px; border-radius: 8px; border: 1px solid #ccc;"></textarea>
                        </div>

                        <div style="display: flex; justify-content: center; gap: 10px;">
                            <button type="button" onclick="confirmDelete()" class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
                                Delete
                            </button>
                            <button type="submit" class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
                                Send 
                            </button>
                        </div>
                    </form>
                </div>
            </div>

        </section>


        <!-- Edit Modal -->
        <div id="edit-modal"
             style="display:none; position:fixed; top:50%; left:50%; transform:translate(-50%, -50%); padding:20px; background-color:white; box-shadow:0px 0px 10px rgba(0,0,0,0.1); z-index:1000;">
            <form id="edit-form">
                <h4>Send feedback</h4>
                <div>
                    <label for="edit-username">Ngoc Han</label>
                    <input type="text" id="edit-username">
                </div>
                <div>
                    <label for="edit-review">Review:</label>
                    <textarea id="edit-review"></textarea>
                </div>
                <button type="submit">Save</button>
                <button type="button" id="cancel-edit">Cancel</button>
            </form>
        </div>
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

        <!--===============================================================================================-->
        <script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
  
        <!--===============================================================================================-->
        <script src="js/main.js"></script>
 

        <!--===============================================================================================-->
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>

        <!--===============================================================================================-->
        <script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>

        <!--===============================================================================================-->
        <script src="js/main.js"></script>
        <script>
function confirmDelete() {
    if (confirm("Are you sure you want to delete this review?")) {
        // Implement the deletion logic here if needed.
        document.getElementById("review").value = ''; // Clear the review textarea as an example.
    }
}
</script>
        
    </body>

</html>