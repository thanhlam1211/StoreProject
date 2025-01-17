<%-- 
 Document   : single-product
 Created on : Jun 22, 2021, 11:03:38 PM
 Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>     
<!DOCTYPE html>
<html lang="zxx">

    <head>

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Hanger - Product</title>
        <meta name="robots" content="index, follow" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="${path}/assets/images/logo2.png" />

        <!-- CSS
        ============================================ -->

        <link rel="stylesheet" href="${path}/assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="${path}/assets/css/font-awesome.min.css" />
        <link rel="stylesheet" href="${path}/assets/css/Pe-icon-7-stroke.css" />
        <link rel="stylesheet" href="${path}/assets/css/animate.min.css">
        <link rel="stylesheet" href="${path}/assets/css/swiper-bundle.min.css">
        <link rel="stylesheet" href="${path}/assets/css/nice-select.css">
        <link rel="stylesheet" href="${path}/assets/css/magnific-popup.min.css" />
        <link rel="stylesheet" href="${path}/assets/css/ion.rangeSlider.min.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
        <!-- Style CSS -->
        <link rel="stylesheet" href="${path}/assets/css/style.css"> 

    </head>

    <body>
        <c:if test="${p_url == 'Shop'}">
            <div class="preloader-activate preloader-active open_tm_preloader">
                <div class="preloader-area-wrap">
                    <div class="spinner d-flex justify-content-center align-items-center h-100">
                        <div class="bounce1"></div>
                        <div class="bounce2"></div>
                        <div class="bounce3"></div>
                    </div>
                </div>
            </div>
        </c:if>

        <div class="main-wrapper">

            <!-- Begin Main Header Area -->
            <jsp:include page="header.jsp"></jsp:include>
                <!-- Main Header Area End Here -->
            <c:set var="from" value="infor?id=${product.getProID()}"></c:set>
                <!-- Begin Main Content Area  -->
                <main class="main-content">

                    <div class="single-product-area section-space-top-100">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="single-product-img">
                                        <div class="swiper-container single-product-slider">
                                            <div class="swiper-wrapper">
                                            <c:forEach items="${product.getImage()}" var="i"> 
                                                <div class="swiper-slide">
                                                    <a href="${i.getUrl()}" class="single-img gallery-popup">
                                                        <img class="img-full" src="${i.getUrl()}" alt="Product Image">
                                                    </a>
                                                </div>
                                            </c:forEach>

                                        </div>
                                    </div>
                                    <div class="thumbs-arrow-holder">
                                        <div class="swiper-container single-product-thumbs">
                                            <div class="swiper-wrapper">
                                                <c:forEach items="${product.getImage()}" var="i"> 
                                                    <a href="#" class="swiper-slide">
                                                        <img class="img-full" src="${i.getUrl()}" alt="Product Thumnail">
                                                    </a>
                                                </c:forEach>

                                            </div>
                                            <!-- Add Arrows -->
                                            <div class=" thumbs-button-wrap d-none d-md-block">
                                                <div class="thumbs-button-prev">
                                                    <i class="pe-7s-angle-left"></i>
                                                </div>
                                                <div class="thumbs-button-next">
                                                    <i class="pe-7s-angle-right"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 pt-5 pt-lg-0">
                                <div class="single-product-content">
                                    <h2 class="title">${product.getProName()}</h2>
                                    <div class="price-box">
                                        <span class="new-price">$${product.getProPrice()}</span>
                                        <h5 style="text-align: center;">${message}</h5>
                                    </div>
                                    <div class="rating-box-wrap pb-4">
                                        <div class="rating-box">
                                            InStock: ${product.getStock()}
                                        </div>
                                        <div class="review-status"> 
                                            <a href="#">( 1 Review )</a>
                                        </div>
                                    </div>
                                    <p class="short-desc">${product.getDes()}</p>
                                    <form action="Cart" method="get">
                                        <input type="hidden" name="id" value="${product.getProID()}">
                                        <input type="hidden" name="add" value="on">
                                        <input type="hidden" name="from" value="${from}">
                                        <ul class="quantity-with-btn">
                                            <li class="quantity">
                                                <div class="cart-plus-minus">
                                                    <input class="cart-plus-minus-box" value="1" name="num"/> 
                                                </div>
                                            </li>
                                            <li class="add-to-cart">
                                                <div style="text-align: center">                                               
                                                    <button class="btn btn-custom-size lg-size btn-pronia-primary">Add To Cart</button>
                                                </div>
                                            </li>
                                    </form>
                                    <li class="wishlist-btn-wrap">
                                        <a class="custom-circle-btn" href="wishlist?id=${product.getProID()}&from=${from}&status=add">
                                            <i class="pe-7s-like"></i>
                                        </a>
                                    </li>

                                    </ul>

                                    <ul class="service-item-wrap">
                                        <li class="service-item">
                                            <div class="service-img">
                                                <img src="${path}/assets/images/shipping/icon/car.png" alt="Shipping Icon">
                                            </div>
                                            <div class="service-content">
                                                <span class="title">Free <br> Shipping</span>
                                            </div>
                                        </li>
                                        <li class="service-item">
                                            <div class="service-img">
                                                <img src="${path}/assets/images/shipping/icon/card.png" alt="Shipping Icon">
                                            </div>
                                            <div class="service-content">
                                                <span class="title">Safe <br> Payment</span>
                                            </div>
                                        </li>
                                        <li class="service-item">
                                            <div class="service-img">
                                                <img src="${path}/assets/images/shipping/icon/service.png" alt="Shipping Icon">
                                            </div>
                                            <div class="service-content">
                                                <span class="title">Best <br> Services</span>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="product-category">
                                        <span class="title">ID: </span>
                                        <ul>
                                            <li>
                                                <a href="#">${product.getProID()}</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="product-category">
                                        <span class="title">Categories :</span>
                                        <ul>
                                            <c:forEach items="${cate}" var="c"> 
                                                <c:if test="${c.getId() == product.getProCategorieID()}">
                                                    <li>
                                                        <a href="Shop?cate=${product.getProCategorieID()}">${c.getName()},</a>
                                                    </li>
                                                </c:if>
                                                <c:forEach items="${c.getSubcate()}" var="s">
                                                    <c:if test="${s.getId() == product.getProSubCategorieID()}">
                                                        <li>
                                                            <a href="Shop?cate=${product.getProSubCategorieID()}">${s.getName()}</a>
                                                        </li>
                                                    </c:if>
                                                </c:forEach>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                    <div class="product-category product-tags">
                                        <span class="title">Tags :</span>
                                        <ul>
                                            <c:forEach items="${cate}" var="c"> 
                                                <c:if test="${c.getId() == product.getProCategorieID()}">
                                                    <li>
                                                        <a href="Shop?cate=${product.getProCategorieID()}">${c.getName()},</a>
                                                    </li>
                                                </c:if>
                                                <c:forEach items="${c.getSubcate()}" var="s">
                                                    <c:if test="${s.getId() == product.getProSubCategorieID()}">
                                                        <li>
                                                            <a href="Shop?cate=${product.getProSubCategorieID()}">${s.getName()}</a>
                                                        </li>
                                                    </c:if>
                                                </c:forEach>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product-tab-area section-space-top-100">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <ul class="nav product-tab-nav tab-style-2 pt-0" role="tablist">
                                    <li class="nav-item" role="presentation">
                                        <a class="tab-btn" id="information-tab" data-bs-toggle="tab" href="#information" role="tab" aria-controls="information" aria-selected="false">
                                            Information
                                        </a>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <a class="active tab-btn" id="description-tab" data-bs-toggle="tab" href="#description" role="tab" aria-controls="description" aria-selected="true">
                                            Description
                                        </a>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <a class="tab-btn" id="reviews-tab" data-bs-toggle="tab" href="#reviews" role="tab" aria-controls="reviews" aria-selected="false">
                                            Reviews(${cmt.size()})
                                        </a>
                                    </li>
                                </ul>
                                <div class="tab-content product-tab-content">
                                    <div class="tab-pane fade" id="information" role="tabpanel" aria-labelledby="information-tab">
                                        <div class="product-information-body">
                                            <h4 class="title">Shipping</h4>
                                            <p class="short-desc mb-4">Fast and Quality</p>
                                            <h4 class="title">About return request</h4>
                                            <p class="short-desc mb-4">Contact us if you have issue about our product.
                                            </p>
                                            <h4 class="title">Guarantee</h4>
                                            <p class="short-desc mb-0">Feed back us after every game.
                                            </p>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">
                                        <div class="product-description-body">
                                            <h5 style="text-align: center" >${product.getDes()}
                                            </h5>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="reviews" role="tabpanel" aria-labelledby="reviews-tab">
                                        <div class="product-review-body">
                                            <div class="blog-comment mt-0">
                                                <h4 class="heading">Comments (${cmt.size()})</h4>

                                                <c:forEach items="${cmt}" var="c"> 
                                                    <div class="blog-comment-item">
                                                        <div class="blog-comment-img">
                                                            <img src="${path}/assets/images/ava.jfif" alt="User Image">
                                                        </div>
                                                        <div class="blog-comment-content">
                                                            <div class="user-meta">
                                                                <c:forEach items="${userlist}" var="u"> 
                                                                    <c:if test="${u.getID() == c.getUid()}"> 
                                                                        <h2 class="user-name">${u.getFullname()} (${u.getRole()})</h2>
                                                                    </c:if>
                                                                </c:forEach>
                                                                <span class="date">${c.getDate()}</span>
                                                            </div>
                                                            <p class="user-comment">${c.getText()}
                                                            </p>
                                                        </div>
                                                    </div>
                                                    </br>
                                                </c:forEach>


                                            </div>
                                            <div class="feedback-area">
                                                <h2 class="heading">Leave a comment</h2>
                                                <form class="feedback-form" action="comment">
                                                    <input type="hidden" name="proid" value="${product.getProID()}">
                                                    <input type="hidden" name="from" value="${from}"/>
                                                    <div class="form-field mt-30">
                                                        <textarea name="message" placeholder="Message" class="textarea-field"></textarea>
                                                    </div>
                                                    <div class="button-wrap pt-5">
                                                        <button type="submit" class="btn btn-custom-size xl-size btn-pronia-primary" name="submit">Post
                                                            Comment</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Begin Product Area -->
                <div class="product-area section-space-y-axis-90">
                    <div class="container">

                        <div class="row">
                            <div class="section-title-wrap without-tab">
                                <h2 class="section-title">Related Products</h2>
                                <p class="section-desc">Offer high quality products </p>
                            </div>
                            <div class="col-lg-12"> 
                                <div class="swiper-container product-slider">
                                    <div class="swiper-wrapper">
                                        <!--product 1, dùng jstl để hiển thị, đây chỉ demo 4 sp-->
                                        <c:forEach items="${rp}" var="p">
                                            <div class="swiper-slide product-item">
                                                <div class="product-img">
                                                    <a href="infor?id=${p.getProID()}"> 
                                                        <c:forEach items="${p.getImage()}" var="i"> 
                                                            <c:if test="${i.getIndex() == '1'}"> 
                                                                <img class="primary-img" src="${i.getUrl()}" alt="Product Images">
                                                            </c:if>
                                                            <c:if test="${i.getIndex() == '2'}"> 
                                                                <img class="secondary-img" src="${i.getUrl()}"  alt="Product Images">
                                                            </c:if>
                                                        </c:forEach>
                                                    </a>
                                                    <div class="product-add-action">
                                                        <ul>
                                                            <li>
                                                                <a href="wishlist?id=${p.getProID()}&from=${from}&status=add" data-tippy="Add to wishlist" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                    <i class="pe-7s-like"></i>
                                                                </a>
                                                            </li>
                                                            <li class="quuickview-btn" data-bs-toggle="modal" data-bs-target="#${p.getProID()}">

                                                                <div class="modal quick-view-modal fade" id="${p.getProID()}"  data-bs-keyboard="false" tabindex="-1" aria-labelledby="quickModal" aria-hidden="true">
                                                                    <div class="modal-dialog modal-dialog-centered">
                                                                        <div class="modal-content">
                                                                            <div class="modal-header">
                                                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" data-tippy="Close" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                                </button>
                                                                            </div>
                                                                            <div class="modal-body">
                                                                                <div class="modal-wrap row">
                                                                                    <div class="col-lg-6">
                                                                                        <div class="modal-img">
                                                                                            <div class="swiper-container modal-slider">
                                                                                                <div class="swiper-wrapper">
                                                                                                    <div class="swiper-slide">
                                                                                                        <a href="infor?id=${p.getProID()}" class="single-img">
                                                                                                            <img class="img-full" src="assets/images/product/medium-size/" alt="Product Image">
                                                                                                        </a>
                                                                                                    </div>
                                                                                                    <div class="swiper-slide">
                                                                                                        <a href="infor?id=${p.getProID()}" class="single-img">
                                                                                                            <img class="img-full" src="assets/images/product/medium-size/" alt="Product Image">
                                                                                                        </a>
                                                                                                    </div>
                                                                                                    <div class="swiper-slide">
                                                                                                        <a href="infor?id=${p.getProID()}" class="single-img">
                                                                                                            <img class="img-full" src="assets/images/product/medium-size/" alt="Product Image">
                                                                                                        </a>
                                                                                                    </div>
                                                                                                    <div class="swiper-slide">
                                                                                                        <a href="infor?id=${p.getProID()}" class="single-img">
                                                                                                            <img class="img-full" src="assets/images/product/medium-size/" alt="Product Image">
                                                                                                        </a>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-lg-6 pt-5 pt-lg-0">
                                                                                        <div class="single-product-content">
                                                                                            <h2 class="title">${p.getProName()}</h2>
                                                                                            <div class="price-box">
                                                                                                <span class="new-price">${p.getProPrice()}</span>
                                                                                            </div>
                                                                                            <div class="rating-box-wrap">
                                                                                                <div class="rating-box">
                                                                                                    InStock: ${p.getStock()}
                                                                                                </div>
                                                                                                <div class="review-status">
                                                                                                    <a href="#">( 1 Review )</a>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="selector-wrap color-option">
                                                                                                <span class="selector-title border-bottom-0">Color</span>
                                                                                                <select class="nice-select wide border-bottom-0 rounded-0">
                                                                                                    <option value="default">Black & White</option>
                                                                                                    <option value="blue">Blue</option>
                                                                                                    <option value="green">Green</option>
                                                                                                    <option value="red">Red</option>
                                                                                                </select>
                                                                                            </div>
                                                                                            <div class="selector-wrap size-option">
                                                                                                <span class="selector-title">Size</span>
                                                                                                <select class="nice-select wide rounded-0">
                                                                                                    <option value="medium">Medium Size & Poot</option>
                                                                                                    <option value="large">Large Size With Poot</option>
                                                                                                    <option value="small">Small Size With Poot</option>
                                                                                                </select>
                                                                                            </div>
                                                                                            <p class="short-desc">${p.getDes()}</p>
                                                                                            <ul class="quantity-with-btn">

                                                                                                <li class="add-to-cart">
                                                                                                    <a class="btn btn-custom-size lg-size btn-pronia-primary" href="Cart?num=1&add=on&id=${p.getProID()}&from=Shop">Add to
                                                                                                        cart</a>

                                                                                                </li>
                                                                                                <li class="wishlist-btn-wrap">
                                                                                                    <a class="custom-circle-btn" href="mywishlist?uid=${UI.getID()}">
                                                                                                        <i class="pe-7s-like"></i>
                                                                                                    </a>
                                                                                                </li>
                                                                                            </ul>
                                                                                            <ul class="service-item-wrap pb-0">
                                                                                                <li class="service-item">
                                                                                                    <div class="service-img">
                                                                                                        <img src="${path}/assets/images/shipping/icon/car.png" alt="Shipping Icon">
                                                                                                    </div>
                                                                                                    <div class="service-content">
                                                                                                        <span class="title">Free <br> Shipping</span>
                                                                                                    </div>
                                                                                                </li>
                                                                                                <li class="service-item">
                                                                                                    <div class="service-img">
                                                                                                        <img src="${path}/assets/images/shipping/icon/card.png" alt="Shipping Icon">
                                                                                                    </div>
                                                                                                    <div class="service-content">
                                                                                                        <span class="title">Safe <br> Payment</span>
                                                                                                    </div>
                                                                                                </li>
                                                                                                <li class="service-item">
                                                                                                    <div class="service-img">
                                                                                                        <img src="${path}/assets/images/shipping/icon/service.png" alt="Shipping Icon">
                                                                                                    </div>
                                                                                                    <div class="service-content">
                                                                                                        <span class="title">Safe <br> Payment</span>
                                                                                                    </div>
                                                                                                </li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <a href="#" data-tippy="Quickview" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                    <i class="pe-7s-look"></i>
                                                                </a>
                                                            </li>
                                                            <li class="add-to-cart">
                                                                <a href="Cart?num=1&add=on&id=${p.getProID()}&from=Shop" onclick="showSwal('success-message')" data-tippy="Add to cart" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                                    <i class="pe-7s-cart"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product-content">

                                                    <a class="product-name" href="infor?id=${p.getProID()}">${p.getProName()}</a>
                                                    <div class="price-box pb-1">
                                                        <span class="new-price">$${p.getProPrice()}</span>
                                                    </div>
                                                    <div class="rating-box">
                                                        InStock: ${p.getStock()}
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>

                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>

                </div>
                <!-- Product Area End Here -->

            </main>
            <!-- Main Content Area End Here  -->

            <!-- Begin Footer Area -->
            <jsp:include page="footer.jsp"></jsp:include>
                <!-- Footer Area End Here -->

                <!-- Begin Modal Area -->
                <!--label sẽ pop-up khi ấn quickView, dùng linh hoạt cho mỗi sản phẩm-->
                <div class="modal quick-view-modal fade" id="quickModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="quickModal" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" data-tippy="Close" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="modal-wrap row">
                                    <div class="col-lg-6">
                                        <div class="modal-img">
                                            <div class="swiper-container modal-slider">
                                                <div class="swiper-wrapper">
                                                    <div class="swiper-slide">
                                                        <a href="#" class="single-img">
                                                            <img class="img-full" src="${path}/assets/images/product/medium-size/" alt="Product Image">
                                                    </a>
                                                </div>
                                                <div class="swiper-slide">
                                                    <a href="#" class="single-img">
                                                        <img class="img-full" src="${path}/assets/images/product/medium-size/" alt="Product Image">
                                                    </a>
                                                </div>
                                                <div class="swiper-slide">
                                                    <a href="#" class="single-img">
                                                        <img class="img-full" src="${path}/assets/images/product/medium-size/" alt="Product Image">
                                                    </a>
                                                </div>
                                                <div class="swiper-slide">
                                                    <a href="#" class="single-img">
                                                        <img class="img-full" src="${path}/assets/images/product/medium-size/" alt="Product Image">
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 pt-5 pt-lg-0">
                                    <div class="single-product-content">
                                        <h2 class="title">Bucu</h2>
                                        <div class="price-box">
                                            <span class="new-price">$23.45</span>
                                        </div>
                                        <div class="rating-box-wrap">
                                            <div class="rating-box">
                                                <ul>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                </ul>
                                            </div>
                                            <div class="review-status">
                                                <a href="#">( 1 Review )</a>
                                            </div>
                                        </div>
                                        <div class="selector-wrap color-option">
                                            <span class="selector-title border-bottom-0">Color</span>
                                            <select class="nice-select wide border-bottom-0 rounded-0">
                                                <option value="default">Black & White</option>
                                                <option value="blue">Blue</option>
                                                <option value="green">Green</option>
                                                <option value="red">Red</option>
                                            </select>
                                        </div>
                                        <div class="selector-wrap size-option">
                                            <span class="selector-title">Size</span>
                                            <select class="nice-select wide rounded-0">
                                                <option value="medium">Medium Size & Poot</option>
                                                <option value="large">Large Size With Poot</option>
                                                <option value="small">Small Size With Poot</option>
                                            </select>
                                        </div>
                                        <p class="short-desc">HIHI</p>
                                        <ul class="quantity-with-btn">
                                            <li class="quantity">
                                                <div class="cart-plus-minus">
                                                    <input class="cart-plus-minus-box" value="1" type="text">
                                                </div>
                                            </li>
                                            <li class="add-to-cart">
                                                <a class="btn btn-custom-size lg-size btn-pronia-primary" href="cart.jsp">Add to
                                                    cart</a>
                                            </li>
                                            <li class="wishlist-btn-wrap">
                                                <a class="custom-circle-btn" href="mywishlist?uid=${UI.getID()}">
                                                    <i class="pe-7s-like"></i>
                                                </a>
                                            </li>
                                        </ul>
                                        <ul class="service-item-wrap pb-0">
                                            <li class="service-item">
                                                <div class="service-img">
                                                    <img src="${path}/assets/images/shipping/icon/car.png" alt="Shipping Icon">
                                                </div>
                                                <div class="service-content">
                                                    <span class="title">Free <br> Shipping</span>
                                                </div>
                                            </li>
                                            <li class="service-item">
                                                <div class="service-img">
                                                    <img src="${path}/assets/images/shipping/icon/card.png" alt="Shipping Icon">
                                                </div>
                                                <div class="service-content">
                                                    <span class="title">Safe <br> Payment</span>
                                                </div>
                                            </li>
                                            <li class="service-item">
                                                <div class="service-img">
                                                    <img src="${path}/assets/images/shipping/icon/service.png" alt="Shipping Icon">
                                                </div>
                                                <div class="service-content">
                                                    <span class="title">Safe <br> Payment</span>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Modal Area End Here -->

            <!-- Begin Scroll To Top -->
            <a class="scroll-to-top" href="">
                <i class="fa fa-angle-double-up"></i>
            </a>
            <!-- Scroll To Top End Here -->

        </div>

        <!-- Global Vendor, plugins JS -->

        <!-- JS Files
        ============================================ -->

        <script src="${path}/assets/js/vendor/bootstrap.bundle.min.js"></script>
        <script src="${path}/assets/js/vendor/jquery-3.6.0.min.js"></script>
        <script src="${path}/assets/js/vendor/jquery-migrate-3.3.2.min.js"></script>
        <script src="${path}/assets/js/vendor/jquery.waypoints.js"></script>
        <script src="${path}/assets/js/vendor/modernizr-3.11.2.min.js"></script>
        <script src="${path}/assets/js/plugins/wow.min.js"></script>
        <script src="${path}/assets/js/plugins/swiper-bundle.min.js"></script>
        <script src="${path}/assets/js/plugins/jquery.nice-select.js"></script>
        <script src="${path}/assets/js/plugins/parallax.min.js"></script>
        <script src="${path}/assets/js/plugins/jquery.magnific-popup.min.js"></script>
        <script src="${path}/assets/js/plugins/tippy.min.js"></script>
        <script src="${path}/assets/js/plugins/ion.rangeSlider.min.js"></script>
        <script src="${path}/assets/js/plugins/mailchimp-ajax.js"></script>
        <script src="${path}/assets/js/plugins/jquery.counterup.js"></script>

        <!--Main JS (Common Activation Codes)-->
        <script src="${path}/assets/js/main.js"></script>

    </body>

</html>
