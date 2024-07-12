<%-- 
    Document   : DetailProduct
    Created on : Mar 8, 2024, 4:58:21 PM
    Author     : NDH
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Site meta -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>List Product</title>
        <!-- CSS -->
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet" type="text/css">
    </head>
    <body>

        <!--Nav Bar-->
        <jsp:include page="navbar.jsp"></jsp:include>

            <div class="container">
                <div class="row">
                    <div class="col">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="home">Home</a></li>
                                <li class="breadcrumb-item"><a href="listProduct">Category</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Sub-category</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-12 col-sm-3">
                        <div class="card bg-light mb-3">
                            <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i> Categories</div>
                            <ul class="list-group category_block">
                            <c:forEach var="category" items="${allCategories}">
                                <li class="list-group-item ${categoryId == category.getCategoryID() ? "active":""}"><a href="categorySearch?categoryid=${category.getCategoryID()}">${category.getCategoryName()}</a></li>
                                </c:forEach>
                        </ul>
                    </div>
                    <div class="card bg-light mb-3">
                        <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i> Brands</div>
                        <ul class="list-group category_block">
                            <c:forEach var="brand" items="${allBrands}">
                                <li class="list-group-item ${brandId == brand.getBrandID() ? "active":""}"><a href="brandSearch?brandid=${brand.getBrandID()}">${brand.getBrandName()}</a></li>
                                </c:forEach>
                        </ul>
                    </div>
                    <div class="card bg-light mb-3">
                        <div class="card-header bg-success text-white text-uppercase">Last product</div>
                        <div class="card-body">
                            <img class="img-fluid" src="${lastest.getImage()}" />
                        <h6 class="card-title" style="text-align: center"><a href="detailProduct?id=${lastest.getId()}" title="${lastest.getName()}">${lastest.getName()}</a></h6>
                            <p class="bloc_left_price">${lastest.getPrice()}$</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="row">
                        <c:forEach var="product" items="${allProducts}">
                            <div class="col-12 col-md-6 col-lg-4" style="margin-bottom: 20px">
                                <div class="card">
                                    <div style="display: flex; justify-content: center;">
                                        <img class="card-img-top product-img" src="${product.getImage()}" alt="${product.getName()}">
                                    </div>
                                    <div class="card-body">
                                        <h6 class="card-title text-hidden"><a href="detailProduct?id=${product.getId()}" title="${product.getName()}">${product.getName()}</a></h6>
                                        <div class="col">
                                            <p class="btn btn-danger btn-block">${product.getPrice()}$</p>
                                        </div>
                                        <div class="col">
                                            <a href="addToCart?id=${product.getId()}" class="btn btn-success btn-block">Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>

            </div>
        </div>

        <!-- Footer -->
        <jsp:include page="footer.jsp"></jsp:include>

        <!-- JS -->
        <script src="//code.jquery.com/jquery-3.2.1.slim.min.js" type="text/javascript"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" type="text/javascript"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" type="text/javascript"></script>

    </body>
</html>
