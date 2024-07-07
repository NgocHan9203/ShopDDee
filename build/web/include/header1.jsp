
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Cart_Item"%>
<%@page import="java.util.List"%>
<%@page import="Dal.CartDB"%>
<%@page import="Model.Customer"%>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
<link rel="icon" type="image/png" href="images/icons/ShopDDee Store.jpg"/>
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
<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<style>
    .card.text-dark.mb-3:hover {
        transform: scale(1.1);
        transition: transform 0.3s ease;
    }
    .voucher-banner:hover img {
        transform: scale(1.1);
        transition: transform 0.3s ease;
    }
    .zoomable:hover {
        transform: scale(1.1);
        transition: transform 0.3s ease;
    }


    .voucher-container {
        display: flex;
    }

    .voucher {
        flex: 1;
        margin: 5px; /* ?i?u ch?nh kho?ng cách gi?a các khung voucher */
        border: 2px solid #ccc; /* Màu vi?n */
        border-radius: 5px; /* ?? cong vi?n */
        overflow: hidden; /* ?n ph?n d? th?a */
        transition: transform 0.3s; /* Hi?u ?ng chuy?n ??i */
    }

    .voucher:hover {
        transform: scale(1.1); /* Phóng to khi di chu?t qua */
    }

    .voucher img {
        width: 100%; /* ??m b?o hình ?nh ph? ??y khung */
        height: auto; /* Gi? nguyên t? l? c?a hình ?nh */
        display: block;
    }
    .icon-header-item i, .icon-header-item svg {
        font-size: 24px;
        color: #000;
    }
    .dropdown-menu {
        display: none;
        position: absolute;
        background-color: #fff;
        min-width: 10rem;
        box-shadow: 0 0.5rem 1rem rgba(0,0,0,0.15);
        z-index: 1000;
    }


</style>
</head>
<body class="animsition">
    <% int coutCartItem =0;
        Customer cus = (Customer) session.getAttribute("account");
          if (cus != null) {
                    CartDB cDB = new CartDB();
                    List<Cart_Item> cartList = cDB.getCartByName(cus.getUserName());
                    coutCartItem =cartList.size();
        }
    %>
    <!-- Header -->
    <header class="header-v4">
        <!-- Header desktop -->
        <div class="container-menu-desktop">
            <!-- Topbar -->
            <div class="top-bar">
                <div class="content-topbar flex-sb-m h-full container">
                    <div class="left-top-bar">
                        Thanks you for thousand website outside but you still choose ShopDDee
                    </div>

                </div>
            </div>

            <div class="wrap-menu-desktop">
                <nav class="limiter-menu-desktop container">

                    <!-- Logo desktop -->		
                    <a href="#" class="logo">
                        <img src="images/icons/ShopDDee Store.jpg" alt="IMG-LOGO" style="border-radius: 50%; width: 80px; height: auto;margin: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.1);">
                    </a>

                    <!-- Menu desktop -->
                    <div class="menu-desktop">
                        <ul class="main-menu">
                            <li class="active-menu">
                                <a href="home">Home</a>
                                <ul class="sub-menu">
                                    <li><a href="index.jsp">Homepage 1</a></li>
                                    <li><a href="home-02.jsp">Homepage 2</a></li>
                                    <li><a href="home-03.jsp">Homepage 3</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="viewproduct">Shop</a>
                            </li>

                            <li class="label1" data-label1="hot">
                                <a href="CartList">Features</a>
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

                    <!-- Icon header -->
                    <div class="wrap-icon-header flex-w flex-r-m">
                        <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
                            <i class="zmdi zmdi-search"></i>
                        </div>
                        <% if (cus == null || !cus.getUserName().equals("ShopDDee")) { %>

                        <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="<%=coutCartItem%>">
                            <i class="zmdi zmdi-shopping-cart"></i>
                        </div>
                        <% }%>

                        <div class="dropdown">
                            <button id="dropdownMenuButton" class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16" style="color: #000;">
                                <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6m2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0m4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4m-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10s-3.516.68-4.168 1.332c-.678.678-.83 1.418-.832 1.664z"/>
                                </svg>

                            </button>

                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <% if (cus != null && cus.getUserName().equals("ShopDDee")) { %>
                                <li><a class="dropdown-item" href="revenue">Dashboard</a></li>
                                <li><a class="dropdown-item" href="logout">Logout</a></li>
                                    <% } else if (cus != null) { %>
                                <li><a class="dropdown-item" href="cus_info.jsp">Profile</a></li>
                                <li><a class="dropdown-item" href="logout">Logout</a></li>
                                    <%} else { %>    
                                <li><a class="dropdown-item" href="login">Login</a></li>
                                <li><a class="dropdown-item" href="registerr">Register</a></li>
                                    <% }%>
                            </ul>
                        </div>
                        <% if (cus != null) {%>
                        <div> 
                            <h5> Hello, <%= cus.getUserName()%> </h5>
                        </div>
                        <% }%>


                    </div>
                </nav>
            </div>	           </div>

        <!-- Header Mobile -->
        <div class="wrap-header-mobile">
            <!-- Logo moblie -->		
            <div class="logo-mobile">
                <a href="index.jsp"><img src="images/icons/ShopDDee Store.jpg" alt="IMG-LOGO"></a>
            </div>

            <!-- Icon header -->
            <div class="wrap-icon-header flex-w flex-r-m m-r-15">
                <div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
                    <i class="zmdi zmdi-search"></i>
                </div>
                <% if (cus == null || !cus.getUserName().equals("ShopDDee")) { %>

                <div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart" data-notify="2">
                    <i class="zmdi zmdi-shopping-cart"></i>
                </div>
                <%}%>
                <div class="dropdown">
                    <button id="dropdownMenuButton" class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16" style="color: #000;">
                        <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6m2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0m4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4m-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10s-3.516.68-4.168 1.332c-.678.678-.83 1.418-.832 1.664z"/>
                        </svg>

                    </button>

                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <% if (cus != null && cus.getUserName().equals("ShopDDee")) { %>
                        <li><a class="dropdown-item" href="revenue">Dashboard</a></li>
                        <li><a class="dropdown-item" href="logout">Logout</a></li>
                            <% } else if (cus != null) { %>
                        <li><a class="dropdown-item" href="cus_info.jsp">Profile</a></li>
                        <li><a class="dropdown-item" href="logout">Logout</a></li>
                            <%} else { %>    
                        <li><a class="dropdown-item" href="login">Login</a></li>
                        <li><a class="dropdown-item" href="registerr">Register</a></li>
                            <% }%>
                    </ul>
                </div>
                <% if (cus != null) {%>
                <div> 
                    <h5> Hello, <%= cus.getUserName()%> </h5>
                </div>
                <% }%>
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
                        Thanks you for thousand website outside but you still choose ShopDDee 
                    </div>
                </li>

            </ul>

            <ul class="main-menu-m">
                <li>
                    <a href="index.jsp">Home</a>
                    <ul class="sub-menu-m">
                        <li><a href="home">Homepage 1</a></li>
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
                    <a href="CartList" class="label1 rs1" data-label1="hot">Features</a>
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
    <!-- Cart -->

    <div class="wrap-header-cart js-panel-cart">
        <div class="s-full js-hide-cart"></div>
        <div class="header-cart flex-col-l p-l-65 p-r-25">
            <div class="header-cart-title flex-w flex-sb-m p-b-8">
                <span class="mtext-103 cl2">Your Cart</span>
                <div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
                    <i class="zmdi zmdi-close"></i>
                </div>
            </div>
           
            <div class="header-cart-content flex-w js-pscroll">
         
                <ul class="header-cart-wrapitem w-full">
                            <% Double total1 = 0.0;
                    List<Cart_Item> cartList= new ArrayList<>();
                    if (cus != null) {
                    CartDB cDB = new CartDB();
                    cartList = cDB.getCartByName(cus.getUserName());
                    if (cartList != null) {

                        for (Cart_Item item : cartList) {
                            total1 += item.getPrice() * item.getQuantity();

            %>
                    <li class="header-cart-item flex-w flex-t m-b-12">
                        <!--                    <input type="checkbox" class="select-item" data-item="White Shirt Pleat" data-price="19.00">-->
                        <div class="header-cart-item-img">
                            <img src="<%= item.getCartImg()%>" alt="IMG" />
                        </div>
                        <div class="header-cart-item-txt p-t-8">
                            <a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04"><%= item.getProductName()%></a>
                            <span class="header-cart-item-info text-right p-b-15"><%= item.getQuantity()%> x $<%= item.getPrice()%></span>
                        </div>
                    </li>

                    <!--                <li class="header-cart-item flex-w flex-t m-b-12">
                                        <input type="checkbox" class="select-item" data-item="Converse All Star" data-price="39.00">
                                        <div class="header-cart-item-img">
                                            <img src="images/item-cart-02.jpg" alt="IMG" />
                                        </div>
                                        <div class="header-cart-item-txt p-t-8">
                                            <a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">Converse All Star</a>
                                            <span class="header-cart-item-info">1 x $39.00</span>
                                        </div>
                                    </li>
                    
                                    <li class="header-cart-item flex-w flex-t m-b-12">
                                        <input type="checkbox" class="select-item" data-item="Nixon Porter Leather" data-price="17.00">
                                        <div class="header-cart-item-img">
                                            <img src="images/item-cart-03.jpg" alt="IMG" />
                                        </div>
                                        <div class="header-cart-item-txt p-t-8">
                                            <a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">Nixon Porter Leather</a>
                                            <span class="header-cart-item-info">1 x $17.00</span>
                                        </div>
                                    </li>-->
               
                <%
                            }
                        }
                    }
                %>
                 </ul>
                <div class="w-full">
                    <div class="header-cart-total w-full p-tb-40">Total: $<%=String.format("%.2f",total1)%></div>
                    <div class="header-cart-buttons flex-w w-full">
                        <a href="CartList" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">Check Out</a>
                        <!--                    <button type="button" id="checkoutButton" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10">Check Out</button>-->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        // L?y tham chi?u ??n button dropdown
        var dropdownMenuButton = document.getElementById('dropdownMenuButton');

        // B?t s? ki?n click vào button
        dropdownMenuButton.addEventListener('click', function () {
            // L?y tham chi?u ??n dropdown-menu t??ng ?ng
            var dropdownMenu = this.nextElementSibling;

            // Toggle hi?n th? dropdown-menu
            if (dropdownMenu.style.display === 'block') {
                dropdownMenu.style.display = 'none';
            } else {
                dropdownMenu.style.display = 'block';
            }
        });
    </script>