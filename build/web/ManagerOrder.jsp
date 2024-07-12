<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Manager Order</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/manager.css"/>
    </head>
    <body>
        <div class="container-xl">
            <div class="table-responsive">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-6">
                                <h2>Manage <b>Order</b></h2>
                            </div>
                        </div>
                    </div>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>Order ID</th>
                                <th>Account Username</th>
                                <th>Client Name</th>
                                <th>Address</th>
                                <th>Phone Number</th>
                                <th>Products</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="order" items="${orders}">
                                <tr>
                                    <td>${order.getOrderID()}</td>
                                    <td>${order.getAccount().getUsername()}</td>
                                    <td>${order.getClientName()}</td>
                                    <td>${order.getAddress()}</td>
                                    <td>${order.getPhoneNumber()}</td>
                                    <td>${order.getProducts()}</td>
                                    <td>
                                        <a href="deleteOrder?id=${order.getOrderID()}" class="delete"><i class="material-icons" title="Delete">&#xE872;</i></a>
                                    </td>
                                </tr> 
                            </c:forEach>
                        </tbody>
                    </table>
                </div><br>
                <a href="home"><button type="button" class="btn btn-primary">Back to home</button></a>
            </div>        
        </div>
    </body>

    <script src="js/manager.js"></script>
</html>