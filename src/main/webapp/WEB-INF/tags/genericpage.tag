<%@tag description="Overall Page template" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><jsp:invoke fragment="header"/></title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/styles.css">
    <meta name="theme-color" content="#7952b3">
</head>
<body>
    <!--
        This header is inspired by this bootstrap
        example: https://getbootstrap.com/docs/5.0/examples/pricing/
    -->

    <div class="image-background">
        <img src="${pageContext.request.contextPath}/images/hero-image.png" class="img-fluid rounded mx-auto d-block">
    </div>

<header class="d-flex flex-column flex-md-row align-items-center p-3 pb-0 px-md-4 mb-4 bg-menu border-bottom shadow-sm">
    <div class="h5 my-0 me-md-auto fw-normal">

        <!-- dropdown start -->
        <div class="dropdown mb-3">
            <button class="btn" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                <img src="${pageContext.request.contextPath}/images/burger-icon.png">
            </button>

            <c:choose>
                <c:when test="${sessionScope.user != null }">
                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/fc/profile">Profile</a></li>
                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/fc/viewallorders">View All Orders</a></li>
                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/fc/placeorder">View All Customers</a></li>
                </ul>
                </c:when>
                <c:otherwise>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/fc/profile">Profile</a></li>
                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/fc/viewallorders">View Orders</a></li>
                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/fc/placeorder">Place Order</a></li>
                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/fc/changedata">Change Data</a></li>
                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/fc/">FAQ</a></li>
                </ul>
                </c:otherwise>
            </c:choose>
        </div>
        <!-- dropdown ending -->

    </div>


    <c:choose>
        <c:when test="${sessionScope.user != null }">
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                <a class="p-2 text-dark" href="${pageContext.request.contextPath}/fc/viewallorders">View All Orders</a>
                <a class="p-2 text-dark" href="${pageContext.request.contextPath}/fc/viewallcustomers">View All Customers</a>
            </ul>
        </c:when>
        <c:otherwise>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                <a class="p-2 text-dark" href="${pageContext.request.contextPath}/fc/vieworders">Orders</a>
                <a class="p-2 text-dark" href="${pageContext.request.contextPath}/fc/customerpage">Profile</a>
                <a class="p-2 text-dark" href="${pageContext.request.contextPath}/fc/about">About</a>
            </ul>
            <a class="p-2 text-dark" href="${pageContext.request.contextPath}/fc/loginpage">Login</a>
            /
            <a class="p-2 text-dark" href="${pageContext.request.contextPath}/fc/registerpage">Create Account</a>
            <a href="${pageContext.request.contextPath}/fc/customerpage"><img src="${pageContext.request.contextPath}/images/profile-icon.png" width="40" class="profile-icon"></a>
            <a href="${pageContext.request.contextPath}/fc/yourcart"><img src="${pageContext.request.contextPath}/images/basket-icon.png" width="40" class="basket-icon"></a>
        </c:otherwise>
    </c:choose>



    <nav class="my-2 my-md-0 me-md-3">
        <a class="p-2 text-dark" href="#">Orders</a>
        <a class="p-2 text-dark" href="#">Profile</a>
        <a class="p-2 text-dark" href="${pageContext.request.contextPath}/fc/about">About</a>
        <a class="p-2 text-dark" href="#">Login</a>
        /
        <a class="p-2 text-dark" href="#">Create Account</a>
    </nav>

    <div>

        <c:if test="${sessionScope.user != null }">
            ${sessionScope.user.email}
        </c:if>

        <c:set var="thisPage" value="${pageContext.request.servletPath}"/>
        <c:set var="isNotLoginPage" value="${!fn:endsWith(thisPage,'loginpage.jsp')}"/>
        <c:set var="isNotRegisterPage" value="${!fn:endsWith(thisPage,'registerpage.jsp')}"/>

        <c:if test="${isNotLoginPage && isNotRegisterPage}">
            <c:if test="${sessionScope.user != null }">
                <a type="button" class="btn btn-sm  btn-outline-secondary"
                href="${pageContext.request.contextPath}/fc/logoutcommand">Logout</a>
            </c:if>
        </c:if>
    </div>

</header>



<div id="body" class="container" style="min-height: 20vh;">
    <jsp:doBody/>
</div>

<!-- Footer -->
<div class="container">
    <br>
    <hr>
    <br>
    <jsp:invoke fragment="footer"/>
</div>


    <footer class="footer mt-auto py-3 bg-light">
        <div class="container">
            <span class="text-muted">Place sticky footer content here.</span>
        </div>
    </footer>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

</body>
</html>