

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Site meta -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>TopTech.vn</title>
        <!-- CSS -->
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet" type="text/css">
    </head>
    <body>

        <!--Nav bar-->
        <jsp:include page="navbar.jsp"></jsp:include>


            <div class="container">
                <div class="col">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active" style="width: 855px; height: 462px; margin: auto">
                                <img class="d-block w-100" src="https://cdn.pixabay.com/photo/2021/06/13/08/29/laptop-6332600_640.jpg" alt="First slide" style="width: 100%; height: 100%">
                            </div>
                            <div class="carousel-item" style="width: 855px; height: 462px; margin: auto">
                                <img class="d-block w-100" src="https://www.shutterstock.com/image-vector/super-sale-lable-banner-discount-260nw-1988175476.jpg" alt="Second slide" style="width: 100%; height: 100%">
                            </div>
                            <div class="carousel-item" style="width: 855px; height: 462px; margin: auto">
                                <img class="d-block w-100" src="https://img.freepik.com/free-photo/online-fashion-shopping-with-computer_23-2150400628.jpg" alt="Third slide" style="width: 100%; height: 100%">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>


            <div class="container mt-3">
                <div class="row">
                    <div class="col-sm">
                        <div class="card">
                            <div class="card-header bg-primary text-white text-uppercase">
                                <i class="fa fa-star"></i> Last products
                            </div>
                            <div class="card-body">
                                <div class="row">
                                <c:forEach var="product" items="${lastest4}">
                                    <div class="col-sm">
                                        <div class="card">
                                            <div style="display: flex; justify-content: center; ">
                                                <img class="card-img-top product-img" src="${product.getImage()}" alt="${product.getName()}">
                                            </div>

                                            <div class="card-body">
                                                <h6 class="card-title text-hidden" ><a href="detailProduct?id=${product.getId()}" title="${product.getName()}">${product.getName()}</a></h6>
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
            </div>
        </div>


        <div class="container mt-3 mb-4">
            <div class="row">
                <div class="col-sm">
                    <div class="card">
                        <div class="card-header bg-primary text-white text-uppercase">
                            <i class="fa fa-trophy"></i> Best products
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <c:forEach var="product" items="${highest4}">
                                    <div class="col-sm">
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
