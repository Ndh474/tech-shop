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
        <title>${product.getName()}</title>
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
                                <li class="breadcrumb-item active" aria-current="page">Product</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <!-- Image -->
                    <div class="col-12 col-lg-6">
                        <div class="card bg-light mb-3">
                            <div class="card-body">
                                <a href="" data-toggle="modal" data-target="#productModal">
                                    <div style="display: flex; justify-content: center">
                                        <img class="img-fluid" src="${product.getImage()}" alt="${product.getName()}" width="100%"/>
                                </div>
                                <p class="text-center">Zoom</p>
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Add to cart -->
                <div class="col-12 col-lg-6 add_to_cart_block">
                    <div class="card bg-light mb-3">
                        <div class="card-body">
                            <h3 style="text-align: center">${product.getName()}</h3>
                            <p class="price">${product.getPrice()} $</p><br>
                            <h6>Specifications: </h6>
                            <c:forEach var="specification" items="${specifications}">
                                <li>${specification}</li>
                            </c:forEach><br>
                            <p><strong>Number of products in stock: ${product.getQuantity()}</strong></p>
                            <form action="addToCart">
                                <input type="hidden" name="id" value="${product.getId()}">
                                <p>Quantity: <input type="number" value="1" name="quantity" max="${product.getQuantity()}" min="1"></p>
                                <button type="submit" class="btn btn-success btn-lg btn-block text-uppercase">
                                    <i class="fa fa-shopping-cart"></i> Add To Cart
                                </button>
                            </form>
                                <br>
                            <c:if test="${sessionScope.account.getRole().getRoleID()==1 || sessionScope.account.getRole().getRoleID() == product.getAccount().getRole().getRoleID()}"> 
                                <a href="updateProduct?id=${product.getId()}" class="btn btn-success btn-lg btn-block text-uppercase" style="background-color: blue">
                                    <i class="fa fa-edit"></i> EDIT PRODUCT
                                </a>
                                <a href="deleteProduct?id=${product.getId()}" class="btn btn-success btn-lg btn-block text-uppercase" style="background-color: red">
                                    <i class="fa fa-trash"></i> Delete PRODUCT
                                </a>
                            </c:if>

                            <div class="product_rassurance">
                                <ul class="list-inline">
                                    <li class="list-inline-item"><i class="fa fa-truck fa-2x"></i><br/>Fast delivery</li>
                                    <li class="list-inline-item"><i class="fa fa-credit-card fa-2x"></i><br/>Secure payment</li>
                                    <li class="list-inline-item"><i class="fa fa-phone fa-2x"></i><br/>+84 123 456 789</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <!-- Description -->
                <div class="col-12">
                    <div class="card border-light mb-3">
                        <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-align-justify"></i> Description</div>
                        <div class="card-body">
                            <p class="card-text">${product.getDescription()}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- Footer -->
        <jsp:include page="footer.jsp"></jsp:include>


            <!-- Modal image -->
            <div class="modal fade" id="productModal" tabindex="-1" role="dialog" aria-labelledby="productModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="productModalLabel">${product.getName()}</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <img class="img-fluid" src="${product.getImage()}" style="width: 100%"/>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- JS -->
        <script src="//code.jquery.com/jquery-3.2.1.slim.min.js" type="text/javascript"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" type="text/javascript"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            //Plus & Minus for Quantity product
            $(document).ready(function () {
                var quantity = 1;

                $('.quantity-right-plus').click(function (e) {
                    e.preventDefault();
                    var quantity = parseInt($('#quantity').val());
                    $('#quantity').val(quantity + 1);
                });

                $('.quantity-left-minus').click(function (e) {
                    e.preventDefault();
                    var quantity = parseInt($('#quantity').val());
                    if (quantity > 1) {
                        $('#quantity').val(quantity - 1);
                    }
                });

            });
        </script>
    </body>
</html>

