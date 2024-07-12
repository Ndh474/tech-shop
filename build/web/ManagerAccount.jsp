<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Manager Account</title>
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
                                <h2>Manage <b>Account</b></h2>
                            </div>
                            <div class="col-sm-6">
                                <a href="#addAccountModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Account</span></a>
                            </div>
                        </div>
                    </div>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>Account ID</th>
                                <th>Username</th>
                                <th>Password</th>
                                <th>Role</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="account" items="${accounts}">
                                <tr>
                                    <td>${account.getUserID()}</td>
                                    <td>${account.getUsername()}</td>
                                    <td>${account.getPassword()}</td>
                                    <c:choose>
                                        <c:when test="${account.getRole().getRoleID()==1}">
                                            <td>Admin</td>
                                        </c:when>
                                        <c:when test="${account.getRole().getRoleID()==2}">
                                            <td>Seller</td>
                                        </c:when>
                                        <c:otherwise>
                                            <td>Normal User</td>
                                        </c:otherwise>
                                    </c:choose>

                                    <td>
                                        <a href="updateAccount?id=${account.getUserID()}" class="edit"><i class="material-icons" title="Edit">&#xE254;</i></a>
                                        <a href="deleteAccount?id=${account.getUserID()}" class="delete"><i class="material-icons" title="Delete">&#xE872;</i></a>
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
        <div id="addAccountModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="insertAccount" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add Account</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Username</label>
                                <input type="text" name="username" class="form-control" placeholder="Username" required>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="text" name="password" class="form-control" placeholder="Password" required>
                            </div>
                            <div class="form-group">
                                <label>Role: </label>
                                <select name="role">
                                    <option value="1" selected>Admin</option>
                                    <option value="2">Seller</option>
                                    <option value="3">Normal User</option>
                                </select>
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