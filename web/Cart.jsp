<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Site meta -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Cart</title>
        <!-- CSS -->
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet" type="text/css">
    </head>
    <body>

        <jsp:include page="navbar.jsp"></jsp:include>

            <div class="container mb-4">
                <div class="row">
                    <div class="col-12">
                        <span style="color: red">${message}</span>
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Image</th>
                                    <th>Name</th>
                                    <th>Quantity</th>
                                    <th>Price</th>
                                    <th> </th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="cart" items="${sessionScope.cart}">
                                    <tr>
                                        <td><img src="${cart.getImage()}" style="width: 50px" /> </td>
                                        <td>${cart.getName()}</td>
                                        <td>${cart.getQuantity()}</td>
                                        <td>${cart.getPrice()}</td>
                                        <td><a style="text-decoration: none" href="deleteFromCart?id=${cart.getId()}"><button class="btn btn-sm btn-danger"><i class="fa fa-trash"></i> </button> </a></td>
                                    </tr>
                                </c:forEach>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td><strong>Total</strong></td>
                                    <td><strong>${sessionScope.total} $</strong></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col mb-2">
                    <div class="row">
                        <div class="col-sm-12  col-md-6">
                            <a href="listProduct" style="text-decoration: none"><button class="btn btn-block btn-light">Continue Shopping</button></a>
                        </div>
                        <div class="col-sm-12 col-md-6 text-right">
                            <a href="${sessionScope.account==null?"login":"paymentCheck"}" style="text-decoration: none"><button class="btn btn-lg btn-block btn-success text-uppercase">Checkout</button></a>
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

