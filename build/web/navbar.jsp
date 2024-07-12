<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="home">Top Tech</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <c:set var="currentURL" value="${pageContext.request.requestURI}" />

        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            <ul class="navbar-nav m-auto">
                <li class="nav-item ${currentURL.contains("Home")?"active":"" }">
                    <a class="nav-link" href="home">Home</a>
                </li>
                <li class="nav-item ${currentURL.contains("ListProduct")?"active":""}">
                    <a class="nav-link" href="listProduct">Categories</a>
                </li>
                <c:if test="${sessionScope.account!=null && (sessionScope.account.getRole().getRoleID()==1 || sessionScope.account.getRole().getRoleID()==2)}">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Manager
                        </a>
                        <c:choose>
                            <c:when test="${sessionScope.account.getRole().getRoleID()==1}">
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="productManager?id=${sessionScope.account.getUserID()}">Manager Product</a>
                                    <a class="dropdown-item" href="accountManager">Manager Account</a>
                                    <a class="dropdown-item" href="categoryManager">Manager Category</a>
                                    <a class="dropdown-item" href="brandManager">Manager Brand</a>
                                    <a class="dropdown-item" href="orderManager">Manager Order</a>
                                </div>
                            </c:when>
                            <c:when test="${sessionScope.account.getRole().getRoleID()==2}">
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="productManager?id=${sessionScope.account.getUserID()}">Manager Product</a>
                                </div>
                            </c:when>
                        </c:choose>
                    </li>
                </c:if>

            </ul>

            <form action="search" method="get" class="form-inline my-2 my-lg-0">
                <div class="input-group input-group-sm">
                    <input type="text" value="${name}" name="name" class="form-control" placeholder="Search...">
                    <div class="input-group-append">
                        <button type="submit" class="btn btn-secondary btn-number">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </div>
                <a class="btn btn-success btn-sm ml-3" href="showCart">
                    <i class="fa fa-shopping-cart"></i> Cart
                    <span class="badge badge-light">${sessionScope.idQuantity.size()}</span>
                </a>
            </form>
            <ul class="navbar-nav m-auto">
                <c:choose>
                    <c:when test="${sessionScope.account == null}">
                        <li class="nav-item">
                            <a class="nav-link" href="LoginSignup.jsp">Login</a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li>
                            <span class="nav-link">Hello ${sessionScope.account.getUsername()} <a href="logout">Logout</a></span>
                        </li>
                    </c:otherwise>
                </c:choose>


            </ul>
        </div>
    </div>
</nav>

<section class="jumbotron text-center">
    <div class="container">
        <h1 class="jumbotron-heading">EMPOWER YOUR ELECTRONICS EXPERIENCE</h1>
        <p class="lead text-muted mb-0">FAST - SECURE - CONVENIENT</p>
    </div>
</section>
