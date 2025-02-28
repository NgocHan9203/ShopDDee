<!DOCTYPE jsp>
<html lang="en">

<head>
    <title>Contact</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="images/icons/favicon.png" />
    <!--===============================================================================================-->
    <style>
        /* CSS cho hi?u ?ng vote sao */
        .rating {
            unicode-bidi: bidi-override;
            direction: rtl;
            text-align: left;
            display: inline-block;
            position: relative;
        }

        .rating input {
            display: none;
        }

        .rating label {
            display: inline-block;
            position: relative;
            width: 1.1em;
            font-size: 24px; /* K�ch th??c c?a ng�i sao */
            color: #ccc; /* M�u m?c ??nh c?a ng�i sao */
            transition: color 0.2s; /* Hi?u ?ng chuy?n ??i m�u */
            cursor: pointer;
        }

        .rating label:before {
            content: "\2605"; /* K� hi?u ng�i sao (Unicode) */
        }

        .rating input:checked~label {
            color: #f90; /* M�u khi ng??i d�ng ch?n */
        }

        /* Hi?u ?ng di chu?t qua */
        .rating label:hover,
        .rating label:hover~label {
            color: #f90; /* M�u khi di chu?t qua */
        }
    </style>
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="images/icons/favicon.png" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/linearicons-v1.0.0/icon-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!--===============================================================================================-->
</head>

<body class="animsition">

    <!-- Header -->
    <header class="header-v4">
        <!-- Header desktop -->
        <div class="container-menu-desktop">
            <!-- Topbar -->
            <div class="top-bar">
                <div class="content-topbar flex-sb-m h-full container">
                    <div class="left-top-bar">
                        Free shipping for standard order over $100
                    </div>

                    <div class="right-top-bar flex-w h-full">
                        <a href="#" class="flex-c-m trans-04 p-lr-25">
                            Help & FAQs
                        </a>

                        <a href="Profile-Customer.jsp" class="flex-c-m trans-04 p-lr-25">
                            My Account
                        </a>

                        <a href="#" class="flex-c-m trans-04 p-lr-25">
                            EN
                        </a>

                        <a href="#" class="flex-c-m trans-04 p-lr-25">
                            USD
                        </a>
                    </div>
                </div>
            </div>

            <div class="wrap-menu-desktop how-shadow1">
                <nav class="limiter-menu-desktop container">

                    <!-- Logo desktop -->
                    <a href="#" class="logo">
                        <img src="images/icons/logo-01.png" alt="IMG-LOGO">
                    </a>

                    <!-- Menu desktop -->
                    <div class="menu-desktop">
                        <ul class="main-menu">
                            <li>
                                <a href="index.jsp">Home</a>
                                <ul class="sub-menu">
                                    <li><a href="index.jsp">Homepage 1</a></li>
                                    <li><a href="home-02.jsp">Homepage 2</a></li>
                                    <li><a href="home-03.jsp">Homepage 3</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="product.jsp">Shop</a>
                            </li>
<li class="label1" data-label1="hot">
                                <a href="shoping-cart.jsp">Features</a>
                            </li>

                            <li>
                                <a href="blog.jsp">Blog</a>
                            </li>

                            <li>
                                <a href="about.jsp">About</a>
                            </li>

                            <li class="active-menu">
                                <a href="contact.jsp">Contact</a>
                            </li>
                        </ul>
                    </div>

                    <!-- Icon header -->
                    <div class="wrap-icon-header flex-w flex-r-m">
                        <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
                            <i class="zmdi zmdi-search"></i>
                        </div>

                        <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart"
                            data-notify="2">
                            <i class="zmdi zmdi-shopping-cart"></i>
                        </div>

                        <a href="#" class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti"
                            data-notify="0">
                            <i class="zmdi zmdi-favorite-outline"></i>
                        </a>
                    </div>
                </nav>
            </div>
        </div>

        <!-- Header Mobile -->
        <div class="wrap-header-mobile">
            <!-- Logo moblie -->
            <div class="logo-mobile">
                <a href="index.jsp"><img src="images/icons/logo-01.png" alt="IMG-LOGO"></a>
            </div>

            <!-- Icon header -->
            <div class="wrap-icon-header flex-w flex-r-m m-r-15">
                <div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
                    <i class="zmdi zmdi-search"></i>
                </div>

                <div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart"
                    data-notify="2">
                    <i class="zmdi zmdi-shopping-cart"></i>
                </div>

                <a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti"
                    data-notify="0">
                    <i class="zmdi zmdi-favorite-outline"></i>
                </a>
            </div>

            <!-- Button show menu -->
            <div class="btn-show-menu-mobile hamburger hamburger--squeeze">
                <span class="hamburger-box">
                    <span class="hamburger-inner"></span>
                </span>
            </div>
        </div>


        <!-- Menu Mobile -->
        <div class="menu-mobile">
            <ul class="topbar-mobile">
                <li>
                    <div class="left-top-bar">
Free shipping for standard order over $100
                    </div>
                </li>

                <li>
                    <div class="right-top-bar flex-w h-full">
                        <a href="#" class="flex-c-m p-lr-10 trans-04">
                            Help & FAQs
                        </a>

                        <a href="#" class="flex-c-m p-lr-10 trans-04">
                            My Account
                        </a>

                        <a href="#" class="flex-c-m p-lr-10 trans-04">
                            EN
                        </a>

                        <a href="#" class="flex-c-m p-lr-10 trans-04">
                            USD
                        </a>
                    </div>
                </li>
            </ul>

            <ul class="main-menu-m">
                <li>
                    <a href="index.jsp">Home</a>
                    <ul class="sub-menu-m">
                        <li><a href="index.jsp">Homepage 1</a></li>
                        <li><a href="home-02.jsp">Homepage 2</a></li>
                        <li><a href="home-03.jsp">Homepage 3</a></li>
                    </ul>
                    <span class="arrow-main-menu-m">
                        <i class="fa fa-angle-right" aria-hidden="true"></i>
                    </span>
                </li>

                <li>
                    <a href="product.jsp">Shop</a>
                </li>

                <li>
                    <a href="shoping-cart.jsp" class="label1 rs1" data-label1="hot">Features</a>
                </li>

                <li>
                    <a href="blog.jsp">Blog</a>
                </li>

                <li>
                    <a href="about.jsp">About</a>
                </li>

                <li>
                    <a href="contact.jsp">Contact</a>
                </li>
            </ul>
        </div>

        <!-- Modal Search -->
        <div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
            <div class="container-search-header">
                <button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
                    <img src="images/icons/icon-close2.png" alt="CLOSE">
                </button>

                <form class="wrap-search-header flex-w p-l-15">
                    <button class="flex-c-m trans-04">
                        <i class="zmdi zmdi-search"></i>
                    </button>
                    <input class="plh3" type="text" name="search" placeholder="Search...">
                </form>
            </div>
        </div>
    </header>

    <!-- Content page -->
    <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('images/bg-01.jpg');">
        <h2 class="ltext-105 cl0 txt-center">
            Feedback Product
        </h2>
    </section>

    <!-- Form v� Review Section -->
    <section class="bg0 p-t-104 p-b-116">
<div class="container" style="display: flex; justify-content: center; align-items: center;">
            <div class="size-210 bor10 p-lr-70 p-t-55 p-b-30 p-lr-15-lg w-full-md" style="width: 100%; max-width: 600px; display: flex; flex-direction: column; align-items: center;">
                <form id="review-form" style="width: 100%; text-align: center;" action="feedback" method="POST">
                    <h4 class="mtext-105 cl2 txt-center p-b-30" style="margin-bottom: 30px;">
                        Send feedback
                    </h4>
    
                    
    
                    <div class="bor8 m-b-20 how-pos4-parent" style="margin-bottom: 20px; position: relative; width: 100%;">
                        <textarea id="review" class="stext-111 cl2 plh3 size-120 p-lr-28 p-tb-25" name="feedback" placeholder="Enter your review here" style="width: 100%; padding: 10px; border-radius: 8px; border: 1px solid #ccc;"></textarea>
                    </div>

                        <!-- Ph?n ch?n sao -->
                        <div class="rating" name="rating" style="display: flex; justify-content: center; margin-bottom: 20px;">
                            <input type="radio" id="star5" name="rating" value="5">
                            <label for="star5"></label>
                            <input type="radio" id="star4" name="rating" value="4">
                            <label for="star4"></label>
                            <input type="radio" id="star3" name="rating" value="3">
                            <label for="star3"></label>
                            <input type="radio" id="star2" name="rating" value="2">
                            <label for="star2"></label>
                            <input type="radio" id="star1" name="rating"  value="1">
                            <label for="star1"></label>
                        </div>

                        <button  type="submit" class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
                            Send 
                        </button>
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
<!--    <script>
        document.getElementById('review-form').addEventListener('submit', (e) => {
            e.preventDefault();
            const username = document.getElementById('username').value;
            const review = document.getElementById('review').value;
            const rating = document.getElementById('rating').value;

            if (username && review) {
                const newReviewRow = document.createElement('tr');

                newReviewRow.innerHTML = `
                <td style="padding: 10px; border: 1px solid #e0e0e0; text-align: left;">${username}</td>
                <td style="padding: 10px; border: 1px solid #e0e0e0; text-align: left;">${review}</td>
                <td style="padding: 10px; border: 1px solid #e0e0e0;">${rating} sao</td>
                <td style="padding: 10px; border: 1px solid #e0e0e0;">
                    <button class="edit-btn" style="background-color: #007bff; color: #fff; border: none; padding: 5px 10px; border-radius: 5px;">S?a</button>
                </td>
            `;
document.getElementById('review-table-body').appendChild(newReviewRow);

                addEditButtonListener(newReviewRow.querySelector('.edit-btn'));

                document.getElementById('username').value = '';
                document.getElementById('review').value = '';
                document.getElementById('rating').value = '1';
            } else {
                alert('Vui l�ng ?i?n ??y ?? th�ng tin.');
            }
        });
    </script>-->

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

<!--    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const editModal = document.getElementById('edit-modal');
            const editForm = document.getElementById('edit-form');
            let currentEditRow;

            const addEditButtonListener = (button) => {
                button.addEventListener('click', (e) => {
                    currentEditRow = e.target.closest('tr');
                    const username = currentEditRow.children[0].textContent;
                    const review = currentEditRow.children[1].textContent;
document.getElementById('edit-username').value = username;
                    document.getElementById('edit-review').value = review;

                    editModal.style.display = 'block';
                });
            };

            document.querySelectorAll('.edit-btn').forEach(button => {
                addEditButtonListener(button);
            });

            document.getElementById('cancel-edit').addEventListener('click', () => {
                editModal.style.display = 'none';
            });

            editForm.addEventListener('submit', (e) => {
                e.preventDefault();
                currentEditRow.children[0].textContent = document.getElementById('edit-username').value;
                currentEditRow.children[1].textContent = document.getElementById('edit-review').value;
                editModal.style.display = 'none';
            });

            document.getElementById('review-form').addEventListener('submit', (e) => {
                e.preventDefault();
                const username = document.getElementById('username').value;
                const review = document.getElementById('review').value;

                if (username && review) {
                    const newReviewRow = document.createElement('tr');

                    newReviewRow.innerHTML = `
                        <td style="padding: 10px; border: 1px solid #e0e0e0; text-align: left;">${username}</td>
                        <td style="padding: 10px; border: 1px solid #e0e0e0; text-align: left;">${review}</td>
                        <td style="padding: 10px; border: 1px solid #e0e0e0;">
                            <button class="edit-btn" style="background-color: #007bff; color: #fff; border: none; padding: 5px 10px; border-radius: 5px;">S?a</button>
                        </td>
                    `;

                    document.getElementById('review-table-body').appendChild(newReviewRow);

                    addEditButtonListener(newReviewRow.querySelector('.edit-btn'));

                    document.getElementById('username').value = '';
                    document.getElementById('review').value = '';
                } else {
                    alert('Please fill out both fields.');
                }
            });
        });
    </script>-->
</body>

</html>