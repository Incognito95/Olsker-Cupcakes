<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<t:genericpage>
    <jsp:attribute name="header">
         Demo Page for Customer Roles
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>

        <h3 class="mt-3">Checkout:</h3>
        <table class="table table-striped">
            <thead>
            <th>Id</th>
            <th>Name</th>
            <th>Price</th>
            </thead>
            <c:forEach var="bottoms" items="${applicationScope.bottoms} ${applicationScope.toppings}" >

            </c:forEach>
        </table>

        <div class="d-flex justify-content-center mt-5">
            <br>
            <a href="orderconfirmation" type="button" class="btn btn-success btn-lg">Confirm</a>
            <br>
            <a href="placeorder" type="button" class="btn btn-danger btn-lg ms-5">Go back</a>
        </div>



    </jsp:body>
</t:genericpage>

