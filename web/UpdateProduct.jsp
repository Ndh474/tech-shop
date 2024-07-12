<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Update Product</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Edit <b>Product</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editProductModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="updateProduct" method="post">
                            <div class="modal-header">						
                                <h4 class="modal-title">Edit product</h4>
                                <a href="productManager"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button></a>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>ID</label>
                                    <input type="text" name="id" value="${product.getId()}" readonly="" class="form-control" placeholder="Product Name" required>
                                </div>
                                <div class="form-group">
                                    <label>Name</label>
                                    <input type="text" name="name" value="${product.getName()}" class="form-control" placeholder="Product Name" required>
                                </div>
                                <div class="form-group">
                                    <label>Price</label>
                                    <input type="number" name="price" value="${product.getPrice()}" class="form-control" placeholder="$" required>
                                </div>
                                <div class="form-group">
                                    <label>Quantity</label>
                                    <input type="number" name="quantity" value="${product.getQuantity()}" class="form-control" placeholder="123" required>
                                </div>
                                <div class="form-group">
                                    <label>Image</label>
                                    <input type="text" name="image" value="${product.getImage()}" class="form-control" placeholder="Image Address" required>
                                </div>
                                <div class="form-group">
                                    <label>Specification (Use semicolon to separate information)</label>
                                    <textarea class="form-control" name="specifications" required rows="10">${product.getSpecifications()}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea class="form-control" name="description" required rows="10">${product.getDescription()}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Category</label>
                                    <select name="category">
                                        <c:forEach var="category" items="${categories}">
                                            <option value="${category.getCategoryID()}" ${category.getCategoryID()==product.getCategory().getCategoryID()?"selected":""}>${category.getCategoryName()}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Brand</label>
                                    <select name="brand">
                                        <c:forEach var="brand" items="${brands}">
                                            <option value="${brand.getBrandID()}" ${brand.getBrandID()==product.getBrand().getBrandID()?"selected":""}>${brand.getBrandName()}</option>
                                        </c:forEach>  
                                    </select>
                                </div>
                                <div class="form-group">
                                    <input type="hidden" name="id" value="${product.getId()}" />
                                </div>
                            </div>
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-success" value="Update">
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>


        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>