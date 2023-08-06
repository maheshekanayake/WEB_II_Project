<%--
  Created by IntelliJ IDEA.
  User: Mahesh
  Date: 8/1/2023
  Time: 1:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>MultiShop - Home</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="assets/images/home/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="assets/lib/animate/animate.min.css" rel="stylesheet">
    <link href="assets/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!-- Customized Bootstrap Stylesheet -->
    <link href="assets/css/style.css" rel="stylesheet">


</head>
<body>
<jsp:include page="../../header.jsp"></jsp:include>
<!-- Breadcrumb Start -->
<div class="container-fluid">
    <div class="row px-xl-5">
        <div class="col-12">
            <nav class="breadcrumb bg-light mb-30">
                <a class="breadcrumb-item text-dark" href="#">Home</a>
                <a class="breadcrumb-item text-dark" href="#">Shop</a>
                <span class="breadcrumb-item active">Wishlist</span>
            </nav>
        </div>
    </div>
</div>
<!-- Breadcrumb End -->


<!-- Cart Start -->
<div class="container-fluid">
    <div class="row px-xl-5">

        <div class="card mb-3 mx-0 mx-lg-2 col-12">
            <div class="row g-0">
                <div class="col-md-4 text-center">
                    <img src="assets/images/products/img.png" class="img-fluid rounded-start p-2" style="max-height:300px ;">
                </div>
                <div class="col-md-5">
                    <div class="card-body">
                        <h5 class="card-title fw-bold fs-2 text-success">Samsung A12 2021</h5>
                        <span class="fs-5 fw-bold text-black-50">Colour : Black</span>
                        &nbsp; &nbsp;| &nbsp; &nbsp;
                        <span class="fs-5 fw-bold text-black-50">Condition : Brandnew</span>
                        <br />
                        <span class="fs-5 fw-bold text-black-50">Price :</span>&nbsp; &nbsp;
                        <span class="fs-5 fw-bold text-black">Rs: 36999</span>
                        <br />
                        <span class="fs-5 fw-bold text-black-50">Quantity :</span>&nbsp; &nbsp;
                        <span class="fs-5 fw-bold text-black">50 items Available</span>
                        <br />
                        <span class="fs-5 fw-bold text-black-50">Seller :</span>
                        &nbsp;
                        <span class="fs-5 fw-bold text-black">Mahesh</span>

                    </div>
                </div>
                <div class="col-md-3 mt-5 text-center">
                    <div class="card-body d-grid">
                        <a href="singleProductView.php?id=10" class="btn btn-outline-success mb-2">Buy Now</a>
                        <a href="#" onclick="addToCart(10);" class="btn btn-outline-primary mb-2">Add to Cart</a>
                        <a href="#"  class="btn btn-outline-danger mb-2" onclick="removeFromWatchlist(125);" >Remove</a>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Cart End -->

<jsp:include page="../../footer.jsp"></jsp:include>

<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script src="assets/lib/easing/easing.min.js"></script>
<script src="assets/lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Contact Javascript File -->
<script src="assets/mail/jqBootstrapValidation.min.js"></script>
<script src="assets/mail/contact.js"></script>

<!-- Template Javascript -->
<script src="assets/js/main.js"></script>


</body>
</html>
