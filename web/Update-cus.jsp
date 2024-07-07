<!DOCTYPE jsp>
<html lang="en">


    <head>
    <title>Update information</title>
 
<jsp:include page="include/header1.jsp"/>
    <div class="container-fluid">
        <form class="bg0 p-t-75 p-b-85">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
                      
                        <div class="m-l-25 m-r--38 m-lr-0-xl">
                           

                            <div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
                                <h4 class="mtext-109 cl2 p-b-30">
                                   Update
                                </h4>
                                <div class="flex-w flex-l m-r-20 m-tb-5 w-100">
                                    <input class="w-100 stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5"
                                        type="text" value="name@gmail.com" readonly>
                                </div>
                                <div class="flex-w flex-l m-r-20 m-tb-5 w-100">
                                    <input class="w-100 stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5"
                                        type="text" placeholder="Name">
                                </div>

                                <div class="flex-w flex-l m-r-20 m-tb-5 w-100">
                                    <input class="w-100 stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5"
                                        type="number" placeholder="Age">
                                </div>
                                <div class="flex-w flex-l m-r-20 m-tb-5 w-100">
                                    <input class="w-100 stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5"
                                        type="text" placeholder="Address">
                                </div>

                                <div class="flex-w flex-l m-r-20 m-tb-5 w-100">
                                    <input class="w-100 stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5"
                                        type="text" placeholder="Phone number">
                                </div>
                            

                                <div class="flex-w flex-l m-r-20 m-tb-5 w-100">
                                <select class="w-100 stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5"  aria-label="Default select example">
                                    <option selected>Choose gender</option>
                                    <option value="1">Male</option>
                                    <option value="2">Female</option>
                                    <option value="3">Orther</option>
                                    </select>
                                </div>

                                <div
                                    class="flex-c-m stext-101  size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10">
                                    Update Information
                                </div>
                            </div>
                        </div>
                    </div>

                
                </div>
            </div>
        </form>
    </div>

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
    <script src="vendor/daterangepicker/moment.min.js"></script>
    <script src="vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/slick/slick.min.js"></script>
    <script src="js/slick-custom.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/parallax100/parallax100.js"></script>
    <script>
        $('.parallax100').parallax100();
    </script>
    <!--===============================================================================================-->
    <script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
    <script>
        $('.gallery-lb').each(function () { // the containers for all your galleries
            $(this).magnificPopup({
                delegate: 'a', // the selector for gallery item
                type: 'image',
                gallery: {
                    enabled: true
                },
                mainClass: 'mfp-fade'
            });
        });
    </script>
    <!--===============================================================================================-->
    <script src="vendor/isotope/isotope.pkgd.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/sweetalert/sweetalert.min.js"></script>
    <script>
        $('.js-addwish-b2').on('click', function (e) {
            e.preventDefault();
        });

        $('.js-addwish-b2').each(function () {
            var nameProduct = $(this).parent().parent().find('.js-name-b2').jsp();
            $(this).on('click', function () {
                swal(nameProduct, "is added to wishlist !", "success");

                $(this).addClass('js-addedwish-b2');
                $(this).off('click');
            });
        });

        $('.js-addwish-detail').each(function () {
            var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').jsp();

            $(this).on('click', function () {
                swal(nameProduct, "is added to wishlist !", "success");

                $(this).addClass('js-addedwish-detail');
                $(this).off('click');
            });
        });

        /*---------------------------------------------*/

        $('.js-addcart-detail').each(function () {
            var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').jsp();
            $(this).on('click', function () {
                swal(nameProduct, "is added to cart !", "success");
            });
        });

    </script>
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

</body>

</html>