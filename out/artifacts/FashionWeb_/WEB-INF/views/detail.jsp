<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Product Detail</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="images/icons/favicon.png"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css"
          href="vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css"
          href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css"
          href="fonts/iconic/css/material-design-iconic-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css"
          href="fonts/linearicons-v1.0.0/icon-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css"
          href="vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css"
          href="vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css"
          href="vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css"
          href="vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css"
          href="vendor/MagnificPopup/magnific-popup.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css"
          href="vendor/perfect-scrollbar/perfect-scrollbar.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!--===============================================================================================-->
</head>
<body class="animsition">

<!-- Header -->
<jsp:include page="_header.jsp"/>

<!-- breadcrumb -->
<div items="${SP },${loaiSP}" class="container">
    <div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
        <a href="${pageContext.request.contextPath}/home" class="stext-109 cl8 hov-cl1 trans-04"> Home
            <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
        </a> <a href="product.jsp" class="stext-109 cl8 hov-cl1 trans-04">
        ${loaiSP.tenLoaiSP } <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
    </a> <span class="stext-109 cl4"> ${SP.tenSP } </span>
    </div>
</div>


<!-- Product Detail -->
<section items="${SP}" class="sec-product-detail bg0 p-t-65 p-b-60">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-lg-7 p-b-30">
                <div class="p-l-25 p-r-30 p-lr-0-lg">
                    <div class="wrap-slick3 flex-sb flex-w">
                        <div class="wrap-slick3-dots"></div>
                        <div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

                        <div class="slick3 gallery-lb">
                            <div class="item-slick3" data-thumb="${SP.hinhSP}">
                                <div class="wrap-pic-w pos-relative">
                                    <img src="${SP.hinhSP}" alt="IMG-PRODUCT"> <a
                                        class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
                                        href="${SP.hinhSP}"> <i
                                        class="fa fa-expand"></i>
                                </a>
                                </div>
                            </div>
                            <div class="item-slick3" data-thumb="${TH.hinhTH}">
                                <div class="wrap-pic-w pos-relative">
                                    <img src="${TH.hinhTH}" alt="IMG-PRODUCT"> <a
                                        class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
                                        href="${TH.hinhTH}"> <i
                                        class="fa fa-expand"></i>
                                </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-5 p-b-30">
                <div class="p-r-50 p-t-5 p-lr-0-lg">
                    <h4 class="mtext-105 cl2 js-name-detail p-b-14">${SP.tenSP}</h4>
                    <h4 class="mtext-105 cl2 js-name-detail p-b-14">Thương hiệu: ${TH.tenTH}</h4>
                    <span class="mtext-106 cl2">
							<fmt:formatNumber type="number" maxFractionDigits="0" value="${SP.giaSP}"/>vnđ
						 </span>

                    <p class="stext-102 cl3 p-t-23"> » BẢO HÀNH SẢN PHẨM 90 NGÀY</p>
                    <p class="stext-102 cl3 p-t-23"> » ĐỔI HÀNG TRONG VÒNG 30 NGÀY</p>
                    <p class="stext-102 cl3 p-t-23"> » HOTLINE BÁN HÀNG 1900 633 501</p>
                    <!--  -->
                    <div class="p-t-33">


                        <div class="flex-w flex-r-m p-b-10">
                            <div class="size-204 flex-w flex-m respon6-next">
                                <div class="wrap-num-product flex-w m-r-20 m-tb-10">
                                    <div
                                            class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
                                        <i class="fs-16 zmdi zmdi-minus"></i>
                                    </div>

                                    <input class="mtext-104 cl3 txt-center num-product"
                                           type="number" name="num-product" value="1">

                                    <div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
                                        <i class="fs-16 zmdi zmdi-plus"></i>
                                    </div>
                                </div>

                                <button
                                        class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
                                    Thêm vào giỏ hàng
                                </button>
                            </div>
                        </div>
                    </div>

                    <!--  -->
                    <div class="flex-w flex-m p-l-100 p-t-40 respon7">
                        <div class="flex-m bor9 p-r-10 m-r-11">
                            <a href="#"
                               class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100"
                               data-tooltip="Add to Wishlist"> <i
                                    class="zmdi zmdi-favorite"></i>
                            </a>
                        </div>

                        <a href="#"
                           class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
                           data-tooltip="Facebook"> <i class="fa fa-facebook"></i>
                        </a> <a href="#"
                                class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
                                data-tooltip="Twitter"> <i class="fa fa-twitter"></i>
                    </a> <a href="#"
                            class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
                            data-tooltip="Google Plus"> <i class="fa fa-google-plus"></i>
                    </a>
                    </div>
                </div>
            </div>
        </div>

        <div class="bor10 m-t-50 p-t-43 p-b-40">
            <!-- Tab01 -->
            <div class="tab01">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li class="nav-item p-b-10"><a class="nav-link active"
                                                   data-toggle="tab" href="#description" role="tab">Mô tả sản phẩm</a>
                    </li>

                    <li class="nav-item p-b-10"><a class="nav-link"
                                                   data-toggle="tab" href="#information" role="tab">Chi tiết sản
                        phẩm</a></li>

                    <li class="nav-item p-b-10"><a class="nav-link"
                                                   data-toggle="tab" href="#reviews"
                                                   role="tab">Reviews(${listBL.size() })</a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content p-t-43">
                    <!-- - -->
                    <div class="tab-pane fade show active" id="description"
                         role="tabpanel">
                        <div class="how-pos2 p-lr-15-md">
                            <p class="stext-102 cl6">Mang phong cách đơn giản,
                                chất lượng sản phẩm được đánh giá cao và có thể giúp
                                bạn thoải mái trong mọi hoạt động.
                                Chắc chắn việc sở hữu sản phẩm của SHOP NTTT sẽ
                                giúp bạn thêm tự tin trong các cuộc vui với bạn bè.</p>
                        </div>
                    </div>

                    <!-- - -->
                    <div class="tab-pane fade" id="information" role="tabpanel">
                        <div class="row">
                            <div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
                                <ul class="p-lr-28 p-lr-15-sm">
                                    <li class="flex-w flex-t p-b-7"><span
                                            class="stext-102 cl3 size-205"> Weight </span> <span
                                            class="stext-102 cl6 size-206"> 0.79 kg </span></li>

                                    <!-- <li class="flex-w flex-t p-b-7"><span
                                            class="stext-102 cl3 size-205"> Dimensions </span> <span
                                            class="stext-102 cl6 size-206"> 110 x 33 x 100 cm </span></li> -->

                                    <li class="flex-w flex-t p-b-7"><span
                                            class="stext-102 cl3 size-205"> Materials </span> <span
                                            class="stext-102 cl6 size-206"> 60% cotton </span></li>

                                    <li class="flex-w flex-t p-b-7"><span
                                            class="stext-102 cl3 size-205"> Color </span> <span
                                            class="stext-102 cl6 size-206"> Black, Blue, Grey,
												Green, Red, White </span></li>

                                    <li class="flex-w flex-t p-b-7"><span
                                            class="stext-102 cl3 size-205"> Size </span> <span
                                            class="stext-102 cl6 size-206"> Freesize </span></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- - -->

                    <div class="tab-pane fade" id="reviews" role="tabpanel">
                        <div class="row">
                            <div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
                                <div class="p-b-30 m-lr-15-sm">
                                    <!-- Review -->
                                    <c:forEach items="${listBL}" var="o" begin="0" end="5">
                                        <div class="flex-w flex-t p-b-68">
                                            <div class="wrap-pic-s size-109 bor0 of-hidden m-r-18 m-t-6">
                                                <img src="images/avatar-01.jpg" alt="AVATAR">
                                            </div>
                                            <div class="size-207">
                                                <div class="flex-w flex-sb-m p-b-17">
                                                    <span class="mtext-107 cl2 p-r-20">${o.hoTen } </span>
                                                    <span class="fs-18 cl11">
														<i class="zmdi zmdi-star"></i>
														<i class="zmdi zmdi-star"></i> 
														<i class="zmdi zmdi-star"></i>
														<i class="zmdi zmdi-star"></i> 
														<i class="zmdi zmdi-star-half"></i>
													</span>
                                                </div>
                                                <p class="stext-102 cl6">Ngày đăng: ${o.ngayDang }</p>
                                                <p class="stext-102 cl6">${o.noiDung}</p>
                                            </div>
                                        </div>
                                    </c:forEach>
                                    <!-- Add review -->
                                    <form class="w-full">
                                        <h5 class="mtext-108 cl2 p-b-7">Add a review</h5>

                                        <p class="stext-102 cl6">Your email address will not be
                                            published. Required fields are marked *</p>

                                        <div class="flex-w flex-m p-t-50 p-b-23">
                                            <span class="stext-102 cl3 m-r-16"> Your Rating </span> <span
                                                class="wrap-rating fs-18 cl11 pointer"> <i
                                                class="item-rating pointer zmdi zmdi-star-outline"></i> <i
                                                class="item-rating pointer zmdi zmdi-star-outline"></i> <i
                                                class="item-rating pointer zmdi zmdi-star-outline"></i> <i
                                                class="item-rating pointer zmdi zmdi-star-outline"></i> <i
                                                class="item-rating pointer zmdi zmdi-star-outline"></i> <input
                                                class="dis-none" type="number" name="rating">
												</span>
                                        </div>

                                        <div class="row p-b-25">
                                            <div class="col-12 p-b-5">
                                                <label class="stext-102 cl3" for="review">Your
                                                    review</label>
                                                <textarea
                                                        class="size-110 bor8 stext-102 cl2 p-lr-20 p-tb-10"
                                                        id="review" name="review"></textarea>
                                            </div>

                                            <div class="col-sm-6 p-b-5">
                                                <label class="stext-102 cl3" for="name">Name</label> <input
                                                    class="size-111 bor8 stext-102 cl2 p-lr-20" id="name"
                                                    type="text" name="name">
                                            </div>

                                            <div class="col-sm-6 p-b-5">
                                                <label class="stext-102 cl3" for="email">Email</label> <input
                                                    class="size-111 bor8 stext-102 cl2 p-lr-20" id="email"
                                                    type="text" name="email">
                                            </div>
                                        </div>

                                        <button
                                                class="flex-c-m stext-101 cl0 size-112 bg7 bor11 hov-btn3 p-lr-15 trans-04 m-b-10">
                                            Submit
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <div class="bg6 flex-c-m flex-w size-302 m-t-73 p-tb-15">
        <span class="stext-107 cl6 p-lr-25"> Tên sản phẩm: ${SP.tenSP } </span> <span
            class="stext-107 cl6 p-lr-25"> Loại sản phẩm: ${loaiSP.tenLoaiSP } </span>
    </div>
</section>


<!-- Related Products -->
<section class="sec-relate-product bg0 p-t-45 p-b-105">
    <div class="container">
        <div class="p-b-45">
            <h3 class="ltext-106 cl5 txt-center">Related Products</h3>
        </div>

        <!-- Slide2 -->

        <div class="wrap-slick2">
            <div class="slick2">
                <c:forEach items="${ListSPbymaLoaiSP}" var="p" begin="0" end="7">
                    <div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
                        <!-- Block2 -->
                        <div class="block2">
                            <div class="block2-pic hov-img0">
                                <img src="${p.hinhSP }" alt="IMG-PRODUCT">
                                <a href="${pageContext.request.contextPath}/detail?maSP=${o.maSP}"
                                   class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04">
                                    Detail
                                </a>
                            </div>

                            <div class="block2-txt flex-w flex-t p-t-14">
                                <div class="block2-txt-child1 flex-col-l ">
                                    <a href="detail?maSP=${p.maSP }"
                                       class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                            ${p.tenSP } </a>
                                    <span class="stext-105 cl3">
											 <fmt:formatNumber type="number" maxFractionDigits="0" value="${p.giaSP}"/>vnđ
										</span>
                                </div>

                                <div class="block2-txt-child2 flex-r p-t-3">
                                    <a href="#"
                                       class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                        <img class="icon-heart1 dis-block trans-04"
                                             src="images/icons/icon-heart-01.png" alt="ICON"> <img
                                            class="icon-heart2 dis-block trans-04 ab-t-l"
                                            src="images/icons/icon-heart-02.png" alt="ICON">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</section>


<!-- Footer -->
<jsp:include page="_footer.jsp"/>

<!-- Back to top -->
<jsp:include page="_backToTop.jsp"/>

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

    $('.js-addwish-b2').each(
        function () {
            var nameProduct = $(this).parent().parent().find(
                '.js-name-b2').html();
            $(this).on('click', function () {
                swal(nameProduct, "is added to wishlist !", "success");

                $(this).addClass('js-addedwish-b2');
                $(this).off('click');
            });
        });

    $('.js-addwish-detail').each(
        function () {
            var nameProduct = $(this).parent().parent().parent().find(
                '.js-name-detail').html();

            $(this).on('click', function () {
                swal(nameProduct, "is added to wishlist !", "success");

                $(this).addClass('js-addedwish-detail');
                $(this).off('click');
            });
        });

    /*---------------------------------------------*/

    $('.js-addcart-detail').each(
        function () {
            var nameProduct = $(this).parent().parent().parent()
                .parent().find('.js-name-detail').html();
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