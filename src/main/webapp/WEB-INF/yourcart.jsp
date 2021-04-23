<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>

    <jsp:attribute name="header">
         Home
    </jsp:attribute>

    <jsp:attribute name="footer">
        <c:set var="addHomeLink" value="${false}" scope="request"/>
    </jsp:attribute>

    <jsp:body>

        <h3 class="mt-3">Your Cart:</h3>
        <table class="table table-striped">
            <thead>
            <th>Id</th>
            <th>Name</th>
            <th>Price</th>
            </thead>
            <c:forEach var="bottoms" items="${sessionScope.}">

            </c:forEach>
        </table>

        <div class="d-flex justify-content-center mt-5">
            <br>
            <a href="checkout" type="button" class="btn btn-success btn-lg">Procced</a>
            <br>
            <a href="editcart" type="button" class="btn btn-danger btn-lg ms-5">Edit</a>
        </div>

        <div class="d-flex justify-content-center mt-5">
            <br>
            <a href="placeorder" type="button" class="btn btn-danger btn-lg">Cancel</a>
        </div>


    </jsp:body>
</t:genericpage>