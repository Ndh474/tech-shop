<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Manager Brand</title>
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
                                <h2>Manage <b>Brand</b></h2>
                            </div>
                            <div class="col-sm-6">
                                <a href="#addBrandModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Brand</span></a>
                            </div>
                        </div>
                    </div>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>Brand ID</th>
                                <th>Brand Name</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="brand" items="${brands}">
                                <tr>
                                    <td>${brand.getBrandID()}</td>
                                    <td>${brand.getBrandName()}</td>
                                    <td>
                                        <a href="updateBrand?id=${brand.getBrandID()}" class="edit"><i class="material-icons" title="Edit">&#xE254;</i></a>
                                        <a href="deleteBrand?id=${brand.getBrandID()}" class="delete"><i class="material-icons" title="Delete">&#xE872;</i></a>
                                    </td>
                                </tr> 
                            </c:forEach>
                        </tbody>
                    </table>
                </div><br>
                <a href="home"><button type="button" class="btn btn-primary">Back to home</button></a>
            </div>        
        </div>
        <!-- Edit Modal HTML -->
        <div id="addBrandModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="insertBrand" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add Brand</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Brand Name</label>
                                <input type="text" name="brandname" class="form-control" placeholder="Brand Name" required>
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