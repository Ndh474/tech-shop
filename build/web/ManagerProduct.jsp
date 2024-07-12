<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Manager Product</title>
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
                                <h2>Manage <b>Product</b></h2>
                            </div>
                            <div class="col-sm-6">
                                <a href="#addProductModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Product</span></a>
                            </div>
                        </div>
                    </div>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Image</th>
                                <th>Category</th>
                                <th>Brand</th>
                                <th>Seller</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="product" items="${products}">
                                <tr>
                                    <td>${product.getId()}</td>
                                    <td><a href="detailProduct?id=${product.getId()}" style="text-decoration: none">${product.getName()}</a></td>
                                    <td>${product.getPrice()}</td>
                                    <td>${product.getQuantity()}</td>
                                    <td><img src="${product.getImage()}" alt="${product.getName()}" style="width: 50px; height: auto"/></td>
                                    <td>${product.getCategory().getCategoryName()}</td>
                                    <td>${product.getBrand().getBrandName()}</td>
                                    <td>${product.getAccount().getUsername()}</td>
                                </tr> 
                            </c:forEach>
                        </tbody>
                    </table>
                </div><br>
                <a href="home"><button type="button" class="btn btn-primary">Back to home</button></a>
            </div>        
        </div>
        <!-- Edit Modal HTML -->
        <div id="addProductModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="insertProduct" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" name="name" class="form-control" placeholder="Product Name" required>
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input type="number" name="price" class="form-control" placeholder="$" required>
                            </div>
                            <div class="form-group">
                                <label>Quantity</label>
                                <input type="number" name="quantity" class="form-control" placeholder="123" required>
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <input type="text" name="image" class="form-control" placeholder="Image Address" required>
                            </div>
                            <div class="form-group">
                                <label>Specification (Use semicolon to separate information)</label>
                                <textarea class="form-control" name="specifications" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea class="form-control" name="description" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Category</label>
                                <select name="category">
                                    <c:forEach var="category" items="${categories}">
                                        <option value="${category.getCategoryID()}">${category.getCategoryName()}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Brand</label>
                                <select name="brand">
                                    <c:forEach var="brand" items="${brands}">
                                        <option value="${brand.getBrandID()}">${brand.getBrandName()}</option>
                                    </c:forEach>  
                                </select>
                            </div>
                            <div class="form-group">
                                <input type="hidden" name="sellerid" value="${sessionScope.account.userID}" />
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>

    <script src="js/manager.js"></script>
</html>