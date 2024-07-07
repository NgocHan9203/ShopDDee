<%@page import="Model.Product"%>
<%@page import="java.util.List"%>
<!DOCTYPE jsp>
<html lang="en">
    <head>
        <title>All Product</title>
        <%@include file="include/header1.jsp" %>
        <!-- Product -->
    <div class="bg0 m-t-23 p-b-140">
        <div class="container">
            <div class="flex-w flex-sb-m p-b-52">
                <div class="flex-w flex-l-m filter-tope-group m-tb-10">
                    <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1" data-filter="*">
                        All Products
                    </button>

                    <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".women">
                        Women
                    </button>

                    <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".men">
                        Men
                    </button>

                    <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".bag">
                        Bag
                    </button>

                    <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".shoes">
                        Shoes
                    </button>

                    <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".watches">
                        Watches
                    </button>
                </div>

                <div class="flex-w flex-c-m m-tb-10">
                    <div class="flex-c-m stext-106 cl6 size-104 bor4 pointer hov-btn3 trans-04 m-r-8 m-tb-4 js-show-filter">
                        <i class="icon-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-filter-list"></i>
                        <i class="icon-close-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
                        Filter
                    </div>

                    <div class="flex-c-m stext-106 cl6 size-105 bor4 pointer hov-btn3 trans-04 m-tb-4 js-show-search">
                        <i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
                        <i class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
                        Search
                    </div>
                </div>

                <!-- Search product -->
                <div class="dis-none panel-search w-full p-t-10 p-b-15">
                    <div class="bor8 dis-flex p-l-15">
                        <button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
                            <i class="zmdi zmdi-search"></i>
                        </button>

                        <input class="mtext-107 cl2 size-114 plh2 p-r-15" type="text" name="search-product" placeholder="Search">
                    </div>	
                </div>

                <!-- Filter -->
                <div class="dis-none panel-filter w-full p-t-10">
                    <div class="wrap-filter flex-w bg6 w-full p-lr-40 p-t-27 p-lr-15-sm">
                        <div class="filter-col1 p-r-15 p-b-27">
                            <div class="mtext-102 cl2 p-b-15">
                                Sort By
                            </div>

                            <ul>
                                <li class="p-b-6">
                                    <a href="#" class="filter-link stext-106 trans-04">
                                        Default
                                    </a>
                                </li>

                                <li class="p-b-6">
                                    <a href="#" class="filter-link stext-106 trans-04">
                                        Popularity
                                    </a>
                                </li>

                                <li class="p-b-6">
                                    <a href="#" class="filter-link stext-106 trans-04">
                                        Average rating
                                    </a>
                                </li>

                                <li class="p-b-6">
                                    <a href="#" class="filter-link stext-106 trans-04 filter-link-active">
                                        Newness
                                    </a>
                                </li>

                                <li class="p-b-6">
                                    <a href="#" class="filter-link stext-106 trans-04">
                                        Price: Low to High
                                    </a>
                                </li>

                                <li class="p-b-6">
                                    <a href="#" class="filter-link stext-106 trans-04">
                                        Price: High to Low
                                    </a>
                                </li>
                            </ul>
                        </div>

                        <div class="filter-col2 p-r-15 p-b-27">
                            <div class="mtext-102 cl2 p-b-15">
                                Price
                            </div>

                            <ul>
                                <li class="p-b-6">
                                    <a href="#" class="filter-link stext-106 trans-04 filter-link-active">
                                        All
                                    </a>
                                </li>

                                <li class="p-b-6">
                                    <a href="#" class="filter-link stext-106 trans-04">
                                        $0.00 - $50.00
                                    </a>
                                </li>

                                <li class="p-b-6">
                                    <a href="#" class="filter-link stext-106 trans-04">
                                        $50.00 - $100.00
                                    </a>
                                </li>

                                <li class="p-b-6">
                                    <a href="#" class="filter-link stext-106 trans-04">
                                        $100.00 - $150.00
                                    </a>
                                </li>

                                <li class="p-b-6">
                                    <a href="#" class="filter-link stext-106 trans-04">
                                        $150.00 - $200.00
                                    </a>
                                </li>

                                <li class="p-b-6">
                                    <a href="#" class="filter-link stext-106 trans-04">
                                        $200.00+
                                    </a>
                                </li>
                            </ul>
                        </div>

                        <div class="filter-col3 p-r-15 p-b-27">
                            <div class="mtext-102 cl2 p-b-15">
                                Color
                            </div>

                            <ul>
                                <li class="p-b-6">
                                    <span class="fs-15 lh-12 m-r-6" style="color: #222;">
                                        <i class="zmdi zmdi-circle"></i>
                                    </span>

                                    <a href="#" class="filter-link stext-106 trans-04">
                                        Black
                                    </a>
                                </li>

                                <li class="p-b-6">
                                    <span class="fs-15 lh-12 m-r-6" style="color: #4272d7;">
                                        <i class="zmdi zmdi-circle"></i>
                                    </span>

                                    <a href="#" class="filter-link stext-106 trans-04 filter-link-active">
                                        Blue
                                    </a>
                                </li>

                                <li class="p-b-6">
                                    <span class="fs-15 lh-12 m-r-6" style="color: #b3b3b3;">
                                        <i class="zmdi zmdi-circle"></i>
                                    </span>

                                    <a href="#" class="filter-link stext-106 trans-04">
                                        Grey
                                    </a>
                                </li>

                                <li class="p-b-6">
                                    <span class="fs-15 lh-12 m-r-6" style="color: #00ad5f;">
                                        <i class="zmdi zmdi-circle"></i>
                                    </span>

                                    <a href="#" class="filter-link stext-106 trans-04">
                                        Green
                                    </a>
                                </li>

                                <li class="p-b-6">
                                    <span class="fs-15 lh-12 m-r-6" style="color: #fa4251;">
                                        <i class="zmdi zmdi-circle"></i>
                                    </span>

                                    <a href="#" class="filter-link stext-106 trans-04">
                                        Red
                                    </a>
                                </li>

                                <li class="p-b-6">
                                    <span class="fs-15 lh-12 m-r-6" style="color: #aaa;">
                                        <i class="zmdi zmdi-circle-o"></i>
                                    </span>

                                    <a href="#" class="filter-link stext-106 trans-04">
                                        White
                                    </a>
                                </li>
                            </ul>
                        </div>

                        <div class="filter-col4 p-b-27">
                            <div class="mtext-102 cl2 p-b-15">
                                Tags
                            </div>

                            <div class="flex-w p-t-4 m-r--5">
                                <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                                    Fashion
                                </a>

                                <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                                    Lifestyle
                                </a>

                                <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                                    Denim
                                </a>

                                <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                                    Streetstyle
                                </a>

                                <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                                    Crafts
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Product part -->
            <div class="row isotope-grid">

                <% int idProduct = 0;
                    List<Product> prdList = (List<Product>) request.getAttribute("productList");
                    if (prdList != null) {
                        for (Product p : prdList) {

                %>
                <!-- Product 1 -->
                <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item <%=p.getCategories()%>">
                    <div class="block2">
                        <div class="block2-pic hov-img0">
                            <img src="<%=p.getProductImg()%>" alt="IMG-PRODUCT">
                            <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                Quick View
                            </a>
                        </div>
                        <div class="block2-txt flex-w flex-t p-t-14">
                            <div class="block2-txt-child1 flex-col-l ">
                                <a href="ViewProductDetail?ProductID=<%= p.getProductID()%>" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                    <%=p.getProductName()%>
                                </a>
                                <span class="stext-105 cl3">$<%= p.getPrice()%></span>
                            </div>
                            <div class="block2-txt-child2 flex-r p-t-3">
                                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                    <img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON">
                                    <img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON">
                                </a>
                            </div>
                        </div>
                    </div> 
                </div>
                <% }
                    } %>
                <!--                 Product 2 
                                <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
                                    <div class="block2">
                                        <div class="block2-pic hov-img0">
                                            <img src="images/product-02.jpg" alt="IMG-PRODUCT">
                                            <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                                Quick View
                                            </a>
                                        </div>
                                        <div class="block2-txt flex-w flex-t p-t-14">
                                            <div class="block2-txt-child1 flex-col-l ">
                                                <a href="product-detail.jsp" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                                    Herschel supply
                                                </a>
                                                <span class="stext-105 cl3">$35.31</span>
                                            </div>
                                            <div class="block2-txt-child2 flex-r p-t-3">
                                                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                                    <img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON">
                                                    <img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 Product 3 
                                <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item men">
                                    <div class="block2">
                                        <div class="block2-pic hov-img0">
                                            <img src="images/product-03.jpg" alt="IMG-PRODUCT">
                                            <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                                Quick View
                                            </a>
                                        </div>
                                        <div class="block2-txt flex-w flex-t p-t-14">
                                            <div class="block2-txt-child1 flex-col-l ">
                                                <a href="product-detail.jsp" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                                    Only Check Trouser
                                                </a>
                                                <span class="stext-105 cl3">$25.50</span>
                                            </div>
                                            <div class="block2-txt-child2 flex-r p-t-3">
                                                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                                    <img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON">
                                                    <img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 Product 4 
                                <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
                                    <div class="block2">
                                        <div class="block2-pic hov-img0">
                                            <img src="images/product-04.jpg" alt="IMG-PRODUCT">
                                            <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                                Quick View
                                            </a>
                                        </div>
                                        <div class="block2-txt flex-w flex-t p-t-14">
                                            <div class="block2-txt-child1 flex-col-l ">
                                                <a href="product-detail.jsp" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                                    Classic Trench Coat
                                                </a>
                                                <span class="stext-105 cl3">$75.00</span>
                                            </div>
                                            <div class="block2-txt-child2 flex-r p-t-3">
                                                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                                    <img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON">
                                                    <img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 Product 5 
                                <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
                                    <div class="block2">
                                        <div class="block2-pic hov-img0">
                                            <img src="images/product-05.jpg" alt="IMG-PRODUCT">
                                            <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                                Quick View
                                            </a>
                                        </div>
                                        <div class="block2-txt flex-w flex-t p-t-14">
                                            <div class="block2-txt-child1 flex-col-l ">
                                                <a href="product-detail.jsp" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                                    Front Pocket Jumper
                                                </a>
                                                <span class="stext-105 cl3">$34.75</span>
                                            </div>
                                            <div class="block2-txt-child2 flex-r p-t-3">
                                                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                                    <img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON">
                                                    <img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 Product 6 
                                <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item watches">
                                    <div class="block2">
                                        <div class="block2-pic hov-img0">
                                            <img src="images/product-06.jpg" alt="IMG-PRODUCT">
                                            <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                                Quick View
                                            </a>
                                        </div>
                                        <div class="block2-txt flex-w flex-t p-t-14">
                                            <div class="block2-txt-child1 flex-col-l ">
                                                <a href="product-detail.jsp" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                                    Vintage Inspired Classic
                                                </a>
                                                <span class="stext-105 cl3">$93.20</span>
                                            </div>
                                            <div class="block2-txt-child2 flex-r p-t-3">
                                                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                                    <img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON">
                                                    <img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 Product 7 
                                <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
                                    <div class="block2">
                                        <div class="block2-pic hov-img0">
                                            <img src="images/product-07.jpg" alt="IMG-PRODUCT">
                                            <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                                Quick View
                                            </a>
                                        </div>
                                        <div class="block2-txt flex-w flex-t p-t-14">
                                            <div class="block2-txt-child1 flex-col-l ">
                                                <a href="product-detail.jsp" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                                    Shirt in Stretch Cotton
                                                </a>
                                                <span class="stext-105 cl3">$52.66</span>
                                            </div>
                                            <div class="block2-txt-child2 flex-r p-t-3">
                                                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                                    <img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON">
                                                    <img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 Product 8 
                                <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
                                    <div class="block2">
                                        <div class="block2-pic hov-img0">
                                            <img src="images/product-08.jpg" alt="IMG-PRODUCT">
                                            <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                                Quick View
                                            </a>
                                        </div>
                                        <div class="block2-txt flex-w flex-t p-t-14">
                                            <div class="block2-txt-child1 flex-col-l ">
                                                <a href="product-detail.jsp" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                                    Pieces Metallic Printed
                                                </a>
                                                <span class="stext-105 cl3">$18.96</span>
                                            </div>
                                            <div class="block2-txt-child2 flex-r p-t-3">
                                                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                                    <img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON">
                                                    <img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 Product 9 
                                <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item shoes">
                                    <div class="block2">
                                        <div class="block2-pic hov-img0">
                                            <img src="images/product-09.jpg" alt="IMG-PRODUCT">
                                            <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                                Quick View
                                            </a>
                                        </div>
                                        <div class="block2-txt flex-w flex-t p-t-14">
                                            <div class="block2-txt-child1 flex-col-l ">
                                                <a href="product-detail.jsp" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                                    Converse All Star Hi Plimsolls
                                                </a>
                                                <span class="stext-105 cl3">$75.00</span>
                                            </div>
                                            <div class="block2-txt-child2 flex-r p-t-3">
                                                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                                    <img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON">
                                                    <img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 Product 10 
                                <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
                                    <div class="block2">
                                        <div class="block2-pic hov-img0">
                                            <img src="images/product-10.jpg" alt="IMG-PRODUCT">
                                            <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                                Quick View
                                            </a>
                                        </div>
                                        <div class="block2-txt flex-w flex-t p-t-14">
                                            <div class="block2-txt-child1 flex-col-l ">
                                                <a href="product-detail.jsp" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                                    Femme T-Shirt In Stripe
                                                </a>
                                                <span class="stext-105 cl3">$25.85</span>
                                            </div>
                                            <div class="block2-txt-child2 flex-r p-t-3">
                                                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                                    <img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON">
                                                    <img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 Product 11 
                                <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item men">
                                    <div class="block2">
                                        <div class="block2-pic hov-img0">
                                            <img src="images/product-11.jpg" alt="IMG-PRODUCT">
                                            <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                                Quick View
                                            </a>
                                        </div>
                                        <div class="block2-txt flex-w flex-t p-t-14">
                                            <div class="block2-txt-child1 flex-col-l ">
                                                <a href="product-detail.jsp" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                                    Herschel supply
                                                </a>
                                                <span class="stext-105 cl3">$63.16</span>
                                            </div>
                                            <div class="block2-txt-child2 flex-r p-t-3">
                                                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                                    <img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON">
                                                    <img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 Product 12 
                                <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item shoes">
                                    <div class="block2">
                                        <div class="block2-pic hov-img0">
                                            <img src="images/product-12.jpg" alt="IMG-PRODUCT">
                                            <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                                Quick View
                                            </a>
                                        </div>
                                        <div class="block2-txt flex-w flex-t p-t-14">
                                            <div class="block2-txt-child1 flex-col-l ">
                                                <a href="product-detail.jsp" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                                    Classic Trench Coat
                                                </a>
                                                <span class="stext-105 cl3">$75.00</span>
                                            </div>
                                            <div class="block2-txt-child2 flex-r p-t-3">
                                                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                                    <img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON">
                                                    <img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON">
                                                </a>
                                             </div>
                                        </div>
                                    </div>
                                </div>
                                                     Product 13 
                                <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item men">
                                    <div class="block2">
                                        <div class="block2-pic hov-img0">
                                            <img src="images/product-13.jpg" alt="IMG-PRODUCT">
                                            <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                                Quick View
                                            </a>
                                        </div>
                                        <div class="block2-txt flex-w flex-t p-t-14">
                                            <div class="block2-txt-child1 flex-col-l ">
                                                <a href="product-detail.jsp" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                                    Front Pocket Jumper
                                                </a>
                                                <span class="stext-105 cl3">$34.75</span>
                                            </div>
                                            <div class="block2-txt-child2 flex-r p-t-3">
                                                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                                    <img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON">
                                                    <img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 Product 14 
                                <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
                                    <div class="block2">
                                        <div class="block2-pic hov-img0">
                                            <img src="images/product-14.jpg" alt="IMG-PRODUCT">
                                            <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                                Quick View
                                            </a>
                                        </div>
                                        <div class="block2-txt flex-w flex-t p-t-14">
                                            <div class="block2-txt-child1 flex-col-l ">
                                                <a href="product-detail.jsp" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                                    Esprit Ruffle Shirt
                                                </a>
                                                <span class="stext-105 cl3">$16.64</span>
                                            </div>
                                            <div class="block2-txt-child2 flex-r p-t-3">
                                                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                                    <img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON">
                                                    <img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 Product 15 
                                <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item watches">
                                    <div class="block2">
                                        <div class="block2-pic hov-img0">
                                            <img src="images/product-15.jpg" alt="IMG-PRODUCT">
                                            <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                                Quick View
                                            </a>
                                        </div>
                                        <div class="block2-txt flex-w flex-t p-t-14">
                                            <div class="block2-txt-child1 flex-col-l ">
                                                <a href="product-detail.jsp" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                                    Vintage Inspired Classic
                                                </a>
                                                <span class="stext-105 cl3">$93.20</span>
                                            </div>
                                            <div class="block2-txt-child2 flex-r p-t-3">
                                                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                                    <img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON">
                                                    <img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 Product 16 
                                <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item men">
                                    <div class="block2">
                                        <div class="block2-pic hov-img0">
                                            <img src="images/product-16.jpg" alt="IMG-PRODUCT">
                                            <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                                Quick View
                                            </a>
                                        </div>
                                        <div class="block2-txt flex-w flex-t p-t-14">
                                            <div class="block2-txt-child1 flex-col-l ">
                                                <a href="product-detail.jsp" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                                    Only Check Trouser
                                                </a>
                                                <span class="stext-105 cl3">$25.50</span>
                                            </div>
                                            <div class="block2-txt-child2 flex-r p-t-3">
                                                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                                    <img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON">
                                                    <img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 Product 17 
                                <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
                                    <div class="block2">
                                        <div class="block2-pic hov-img0">
                                            <img src="images/product-17.jpg" alt="IMG-PRODUCT">
                                            <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                                Quick View
                                            </a>
                                        </div>
                                        <div class="block2-txt flex-w flex-t p-t-14">
                                            <div class="block2-txt-child1 flex-col-l ">
                                                <a href="product-detail.jsp" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                                    Shirt in Stretch Cotton
                                                </a>
                                                <span class="stext-105 cl3">$52.66</span>
                                            </div>
                                            <div class="block2-txt-child2 flex-r p-t-3">
                                                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                                    <img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON">
                                                    <img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 Product 18 
                                <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
                                    <div class="block2">
                                        <div class="block2-pic hov-img0">
                                            <img src="images/product-18.jpg" alt="IMG-PRODUCT">
                                            <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                                Quick View
                                            </a>
                                        </div>
                                        <div class="block2-txt flex-w flex-t p-t-14">
                                            <div class="block2-txt-child1 flex-col-l ">
                                                <a href="product-detail.jsp" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                                    Pieces Metallic Printed
                                                </a>
                                                <span class="stext-105 cl3">$18.96</span>
                                            </div>
                                            <div class="block2-txt-child2 flex-r p-t-3">
                                                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                                    <img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON">
                                                    <img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 Product 19 
                                <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item shoes">
                                    <div class="block2">
                                        <div class="block2-pic hov-img0">
                                            <img src="images/product-19.jpg" alt="IMG-PRODUCT">
                                            <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                                Quick View
                                            </a>
                                        </div>
                                        <div class="block2-txt flex-w flex-t p-t-14">
                                            <div class="block2-txt-child1 flex-col-l ">
                                                <a href="product-detail.jsp" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                                    Converse All Star Hi Plimsolls
                                                </a>
                                                <span class="stext-105 cl3">$75.00</span>
                                            </div>
                                            <div class="block2-txt-child2 flex-r p-t-3">
                                                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                                    <img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON">
                                                    <img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 Product 20 
                                <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
                                    <div class="block2">
                                        <div class="block2-pic hov-img0">
                                            <img src="images/product-20.jpg" alt="IMG-PRODUCT">
                                            <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                                Quick View
                                            </a>
                                        </div>
                                        <div class="block2-txt flex-w flex-t p-t-14">
                                            <div class="block2-txt-child1 flex-col-l ">
                                                <a href="product-detail.jsp" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                                    Femme T-Shirt In Stripe
                                                </a>
                                                <span class="stext-105 cl3">$25.85</span>
                                            </div>
                                            <div class="block2-txt-child2 flex-r p-t-3">
                                                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                                    <img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON">
                                                    <img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 Product 21 
                                <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item men">
                                    <div class="block2">
                                        <div class="block2-pic hov-img0">
                                            <img src="images/product-21.jpg" alt="IMG-PRODUCT">
                                            <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                                Quick View
                                            </a>
                                        </div>
                                        <div class="block2-txt flex-w flex-t p-t-14">
                                            <div class="block2-txt-child1 flex-col-l ">
                                                <a href="product-detail.jsp" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                                    Herschel supply
                                                </a>
                                                <span class="stext-105 cl3">$63.16</span>
                                            </div>
                                            <div class="block2-txt-child2 flex-r p-t-3">
                                                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                                    <img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON">
                                                    <img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 Product 22 
                                <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item shoes">
                                    <div class="block2">
                                        <div class="block2-pic hov-img0">
                                            <img src="images/product-22.jpg" alt="IMG-PRODUCT">
                                            <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                                                Quick View
                                            </a>
                                        </div>
                                        <div class="block2-txt flex-w flex-t p-t-14">
                                            <div class="block2-txt-child1 flex-col-l ">
                                                <a href="product-detail.jsp" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                                    Classic Trench Coat
                                                </a>
                                                <span class="stext-105 cl3">$75.00</span>
                                            </div>
                                            <div class="block2-txt-child2 flex-r p-t-3">
                                                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                                    <img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON">
                                                    <img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>-->
                <!-- End of Product Listings -->
            </div>


            <!-- Load more -->
            <div class="flex-c-m flex-w w-full p-t-45">
                <a href="#" class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">
                    Load More
                </a>
            </div>
        </div>
    </div>


    <!-- Footer -->
    <%@include file="include/footer.jsp" %>

    <!-- Modal1 -->
    <div class="wrap-modal1 js-modal1 p-t-60 p-b-20">
        <div class="overlay-modal1 js-hide-modal1"></div>

        <div class="container">
            <div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
                <button class="how-pos3 hov3 trans-04 js-hide-modal1">
                    <img src="images/icons/icon-close.png" alt="CLOSE">
                </button>

                <div class="row">
                    <div class="col-md-6 col-lg-7 p-b-30">
                        <div class="p-l-25 p-r-30 p-lr-0-lg">
                            <div class="wrap-slick3 flex-sb flex-w">
                                <div class="wrap-slick3-dots"></div>
                                <div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

                                <div class="slick3 gallery-lb">
                                    <div class="item-slick3" data-thumb="">
                                        <div class="wrap-pic-w pos-relative">
                                            <img id="modal-product-img" src="" alt="IMG-PRODUCT">
                                            <a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="#">
                                                <i class="fa fa-expand"></i>
                                            </a>
                                        </div>
                                    </div>

                                    <!--thêm hình-->
                                </div>
                            </div>
                        </div>
                    </div>

                     <div class="col-md-6 col-lg-5 p-b-30">
                    <div class="p-r-50 p-t-5 p-lr-0-lg">
                        <h4 id="modal-product-name" class="mtext-105 cl2 js-name-detail p-b-14"></h4>
                        <span id="modal-product-price" class="mtext-106 cl2">$</span>
                        <p id="modal-product-description" class="stext-102 cl3 p-t-23"></p>

                        <div class="p-t-33">
                            <div class="flex-w flex-r-m p-b-10">
                                <div class="size-203 flex-c-m respon6">Size</div>
                                <div class="size-204 respon6-next">
                                    <div class="rs1-select2 bor8 bg0">
                                        <select id="size-select" class="js-select2" name="time">
                                            <option>Choose an option</option>
                                            <option>S</option>
                                            <option>M</option>
                                            <option>L</option>
                                            <option>XL</option>
                                        </select>
                                        <div class="dropDownSelect2"></div>
                                    </div>
                                </div>
                            </div>

                            <div class="flex-w flex-r-m p-b-10">
                                <div class="size-203 flex-c-m respon6">Color</div>
                                <div class="size-204 respon6-next">
                                    <div class="rs1-select2 bor8 bg0">
                                        <select id="color-select" class="js-select2" name="time">
                                            <option>Choose an option</option>
                                            <option>Red</option>
                                            <option>Blue</option>
                                            <option>White</option>
                                            <option>Grey</option>
                                        </select>
                                        <div class="dropDownSelect2"></div>
                                    </div>
                                </div>
                            </div>

                            <div class="flex-w flex-r-m p-b-10">
                                <div class="size-204 flex-w flex-m respon6-next">
                                    <div class="wrap-num-product flex-w m-r-20 m-tb-10">
                                        <div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
                                            <i class="fs-16 zmdi zmdi-minus"></i>
                                        </div>
                                        <input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product" value="1">
                                        <div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
                                            <i class="fs-16 zmdi zmdi-plus"></i>
                                        </div>
                                    </div>

                                    <%
                                        Customer account = (Customer) session.getAttribute("account");
                                        boolean isLoggedIn = account != null;
                                        boolean isShopDDee = account != null && account.getUserName().equals("ShopDDee");
                                    %>
                                    <script>
                                        var isLoggedIn = <%= isLoggedIn %>;
                                        var isShopDDee = <%= isShopDDee %>;
                                    </script>
                                    <button onclick="addToCart(event)" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
                                        Add to cart
                                    </button>
                                </div>
                            </div>
                </div>
            </div>
                                    </div>
</div>
            <!--	
            <div class="wrap-modal1 js-modal1 p-t-60 p-b-20">
                            <div class="overlay-modal1 js-hide-modal1"></div>
            
                            <div class="container">
                                    <div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
                                            <button class="how-pos3 hov3 trans-04 js-hide-modal1">
                                                    <img src="images/icons/icon-close.png" alt="CLOSE">
                                            </button>
            
                                            <div class="row">
                                                    <div class="col-md-6 col-lg-7 p-b-30">
                                                            <div class="p-l-25 p-r-30 p-lr-0-lg">
                                                                    <div class="wrap-slick3 flex-sb flex-w">
                                                                            <div class="wrap-slick3-dots"></div>
                                                                            <div class="wrap-slick3-arrows flex-sb-m flex-w"></div>
            
                                                                            <div class="slick3 gallery-lb">
                                                                                    <div class="item-slick3" data-thumb="images/product-detail-01.jpg">
                                                                                            <div class="wrap-pic-w pos-relative">
                                                                                                    <img src="images/product-detail-01.jpg" alt="IMG-PRODUCT">
            
                                                                                                    <a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="images/product-detail-01.jpg">
                                                                                                            <i class="fa fa-expand"></i>
                                                                                                    </a>
                                                                                            </div>
                                                                                    </div>
            
                                                                                    <div class="item-slick3" data-thumb="images/product-detail-02.jpg">
                                                                                            <div class="wrap-pic-w pos-relative">
                                                                                                    <img src="images/product-detail-02.jpg" alt="IMG-PRODUCT">
            
                                                                                                    <a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="images/product-detail-02.jpg">
                                                                                                            <i class="fa fa-expand"></i>
                                                                                                    </a>
                                                                                            </div>
                                                                                    </div>
            
                                                                                    <div class="item-slick3" data-thumb="images/product-detail-03.jpg">
                                                                                            <div class="wrap-pic-w pos-relative">
                                                                                                    <img src="images/product-detail-03.jpg" alt="IMG-PRODUCT">
            
                                                                                                    <a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="images/product-detail-03.jpg">
                                                                                                            <i class="fa fa-expand"></i>
                                                                                                    </a>
                                                                                            </div>
                                                                                    </div>
                                                                            </div>
                                                                    </div>
                                                            </div>
                                                    </div>
                                                    
                                                    <div class="col-md-6 col-lg-5 p-b-30">
                                                            <div class="p-r-50 p-t-5 p-lr-0-lg">
                                                                    <h4 class="mtext-105 cl2 js-name-detail p-b-14">
                                                                            Lightweight Jacket
                                                                    </h4>
            
                                                                    <span class="mtext-106 cl2">
                                                                            $58.79
                                                                    </span>
            
                                                                    <p class="stext-102 cl3 p-t-23">
                                                                            Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.
                                                                    </p>
                                                                    
                                                                      
                                                                    <div class="p-t-33">
                                                                            <div class="flex-w flex-r-m p-b-10">
                                                                                    <div class="size-203 flex-c-m respon6">
                                                                                            Size
                                                                                    </div>
            
                                                                                    <div class="size-204 respon6-next">
                                                                                            <div class="rs1-select2 bor8 bg0">
                                                                                                    <select class="js-select2" name="time">
                                                                                                            <option>Choose an option</option>
                                                                                                            <option>Size S</option>
                                                                                                            <option>Size M</option>
                                                                                                            <option>Size L</option>
                                                                                                            <option>Size XL</option>
                                                                                                    </select>
                                                                                                    <div class="dropDownSelect2"></div>
                                                                                            </div>
                                                                                    </div>
                                                                            </div>
            
                                                                            <div class="flex-w flex-r-m p-b-10">
                                                                                    <div class="size-203 flex-c-m respon6">
                                                                                            Color
                                                                                    </div>
            
                                                                                    <div class="size-204 respon6-next">
                                                                                            <div class="rs1-select2 bor8 bg0">
                                                                                                    <select class="js-select2" name="time">
                                                                                                            <option>Choose an option</option>
                                                                                                            <option>Red</option>
                                                                                                            <option>Blue</option>
                                                                                                            <option>White</option>
                                                                                                            <option>Grey</option>
                                                                                                    </select>
                                                                                                    <div class="dropDownSelect2"></div>
                                                                                            </div>
                                                                                    </div>
                                                                            </div>
            
                                                                            <div class="flex-w flex-r-m p-b-10">
                                                                                    <div class="size-204 flex-w flex-m respon6-next">
                                                                                            <div class="wrap-num-product flex-w m-r-20 m-tb-10">
                                                                                                    <div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
                                                                                                            <i class="fs-16 zmdi zmdi-minus"></i>
                                                                                                    </div>
            
                                                                                                    <input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product" value="1">
            
                                                                                                    <div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
                                                                                                            <i class="fs-16 zmdi zmdi-plus"></i>
                                                                                                    </div>
                                                                                            </div>
            
                                                                                            <button class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
                                                                                                    Add to cart
                                                                                            </button>
                                                                                    </div>
                                                                            </div>	
                                                                    </div>
            
                                                                      
                                                                    <div class="flex-w flex-m p-l-100 p-t-40 respon7">
                                                                            <div class="flex-m bor9 p-r-10 m-r-11">
                                                                                    <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100" data-tooltip="Add to Wishlist">
                                                                                            <i class="zmdi zmdi-favorite"></i>
                                                                                    </a>
                                                                            </div>
            
                                                                            <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Facebook">
                                                                                    <i class="fa fa-facebook"></i>
                                                                            </a>
            
                                                                            <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Twitter">
                                                                                    <i class="fa fa-twitter"></i>
                                                                            </a>
            
                                                                            <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Google Plus">
                                                                                    <i class="fa fa-google-plus"></i>
                                                                            </a>
                                                                    </div>
                                                            </div>
                                                    </div>
                                            </div>
                                    </div>
                            </div>
                    </div>-->
            </div>
            </div>
                                    </div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
                   
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
                                            $('.js-addwish-b2, .js-addwish-detail').on('click', function (e) {
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

            <script>
                $(document).ready(function () {
                    $('.js-show-modal1').on('click', function (e) {
                        e.preventDefault();

                        // Get the product details from the clicked element
                        var $product = $(this).closest('.block2');
                        var productImg = $product.find('img').attr('src');
                        var productName = $product.find('.js-name-b2').text();
                        var productPrice = $product.find('.stext-105').text();
                        var productDescription = "Product description here..."; // Replace this with actual product description if available

                        // Set the product details in the modal
                        $('#modal-product-img').attr('src', productImg);
                        $('#modal-product-name').text(productName);
                        $('#modal-product-price').text(productPrice);
                        $('#modal-product-description').text(productDescription);

                        // Show the modal
                        $('.js-modal1').addClass('show-modal1');
                    });

                    $('.js-hide-modal1').on('click', function () {
                        $('.js-modal1').removeClass('show-modal1');
                    });
                });
            </script>

            <script>
                function addToCart(event) {
                    event.preventDefault();
                        if (!isLoggedIn || isShopDDee) {
                // Redirect to login page if user is not logged in or if username is "ShopDDee"
                        window.location.href = 'login';
                        return;
                }

                // Get product details
                var product = $(event.target).closest('.block2');
                        //    var productID = product.data('product-id'); // Ensure you have data-product-id attribute in your product div
                        var productName = product.find('.js-name-b2').text();
                        var size = $('#size-select').val(); // Ensure your size select has id="size-select"
                        var color = $('#color-select').val(); // Ensure your color select has id="color-select"
                        var quantity = product.find('.num-product').val();
                        // Prepare data to send
                        var data = {
                        //        productID: productID,
                        productName: productName,
                                size: size,
                                color: color,
                                quantity: quantity
                        };
                        alert("fghjkl;")
                        // Send data to AddToCart servlet
                        $.ajax({
                        url: 'addToCart',
                                type: 'POST',
                                data: data,
                                success: function (response) {
                                // Handle success response
                                console.log('Product added to cart:', response);
                                        alert('Product added to cart successfully!');
                                        error: function (error) {
                                        // Handle error response
                                        console.error('Error adding product to cart:', error);
                                                alert('Failed to add product to cart.');
                                        }
                                });
                        }
            </script>
            <!--===============================================================================================-->
            <script src="js/main.js"></script>

            
        
        
        </body>
            </html>