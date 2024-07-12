<%-- 
    Document   : Payment
    Created on : Mar 12, 2024, 6:02:17 PM
    Author     : NDH
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment</title>
        <link rel="stylesheet" href="css/payment.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
        <script src=""></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>
    <style>
        button {
            cursor: pointer;
            font-weight: 700;
            font-family: Helvetica,"sans-serif";
            transition: all .2s;
            padding: 10px 20px;
            border-radius: 100px;
            background: rgb(232, 234, 246);
            border: 1px solid transparent;
            display: flex;
            align-items: center;
            font-size: 15px;
        }

        button:hover {
            background: lightsteelblue;
        }

        button > svg {
            width: 34px;
            margin-left: 10px;
            transition: transform .3s ease-in-out;
        }

        button:hover svg {
            transform: translateX(5px);
        }

        button:active {
            transform: scale(0.95);
        }


    </style>
    <body>
        <div class="container" >
            <form action="orderSuccess" method="post">
                <div class="row m-0">
                    <div class="col-md-7 col-12">
                        <div class="row">
                            <div class="col-12 mb-4">
                                <div class="row box-right">
                                    <div class="col-md-8 ps-0 ">
                                        <p class="ps-3 text-muted fw-bold h6 mb-0">TOTAL RECEIVED</p>
                                        <p class="h1 fw-bold d-flex">
                                            <span class="fas fa-dollar-sign text-muted pe-1 h6 align-text-top mt-1"></span>
                                            Total Price: ${sessionScope.total}$ <span class="text-muted"></span>
                                        </p>
                                        <h4>-Include:</h4>
                                        <c:forEach var="cart" items="${cart}">
                                            <li>${cart.getName()}, x${cart.getQuantity()}</li>
                                            </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 px-0">
                                <div class="box-right">
                                    <div class="d-flex mb-2">
                                        <h1 class="fw-bold">Address</h1>
                                    </div>
                                    <div class="row">
                                        <div class="col-12 mb-2">
                                            <p class="text-muted h8">Address: </p>
                                            <input class="form-control" name="address" type="text" placeholder="Address" required="">
                                        </div>
                                        <div class="col-6">
                                            <p class="text-muted h8">Phone Number: </p>
                                            <input class="form-control" name="phonenumber" type="text" placeholder="+84 123 456 789" required="">
                                        </div>
                                        <div class="col-6">
                                            <p class="text-muted h8">Name: </p>
                                            <input class="form-control" name="name" type="text" placeholder="Nguyen Van A" required="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5 col-12 ps-md-5 p-0">
                        <div class="box-left">
                            <div class="">
                                <p class="h7 fw-bold mb-1">Pay this Bills</p>
                                <p class="text-muted h8 mb-2">Make payment by filling in the details</p>
                                <div class="form">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="card border-0">
                                                <input class="form-control ps-5" required="" type="text" placeholder="Card number">
                                                <span class="far fa-credit-card"></span>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <input class="form-control my-3" type="text" required="" placeholder="MM/YY">
                                        </div>
                                        <div class="col-6">
                                            <input class="form-control my-3" type="text" required="" placeholder="CVV">
                                        </div>
                                    </div>
                                    <button>
                                        <span>Pay  ${sessionScope.total}$</span>
                                        <svg width="34" height="34" viewBox="0 0 74 74" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <circle cx="37" cy="37" r="35.5" stroke="black" stroke-width="3"></circle>
                                        <path d="M25 35.5C24.1716 35.5 23.5 36.1716 23.5 37C23.5 37.8284 24.1716 38.5 25 38.5V35.5ZM49.0607 38.0607C49.6464 37.4749 49.6464 36.5251 49.0607 35.9393L39.5147 26.3934C38.9289 25.8076 37.9792 25.8076 37.3934 26.3934C36.8076 26.9792 36.8076 27.9289 37.3934 28.5147L45.8787 37L37.3934 45.4853C36.8076 46.0711 36.8076 47.0208 37.3934 47.6066C37.9792 48.1924 38.9289 48.1924 39.5147 47.6066L49.0607 38.0607ZM25 38.5L48 38.5V35.5L25 35.5V38.5Z" fill="black"></path>
                                        </svg>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
