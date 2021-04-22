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
        <h1>Hello ${sessionScope.email} </h1>
        You are now logged in as a Customer of our wonderful site.
        Role: ${sessionScope.role}

        <br>
        <a href="placeorder" type="button" class="btn btn-primary btn-lg mt-2">Place order</a>
        <br>
        <button type="button" class="btn btn-primary btn-lg mt-2">View order</button>
        <br>
        <a href="settings" type="button" class="btn btn-primary btn-lg mt-2">view settings</a>

        <h3 class="mt-3">Bottoms</h3>
        <table class="table table-striped">
        <thead>
            <th>Id</th>
            <th>Name</th>
            <th>Price</th>
        </thead>
        <c:forEach var="bottoms" items="${applicationScope.bottoms}">
        <tr>
            <td>${bottoms.bottom_id}</td>
            <td>${bottoms.name}</td>
            <td>${bottoms.price}</td>
        </tr>
        </c:forEach>
        </table>


        <h3 class="mt-5">Toppings</h3>
        <table class="table mt-3 table-striped">
            <thead>
            <th>Id</th>
            <th>Name</th>
            <th>Price</th>
            </thead>
            <c:forEach var="toppings" items="${applicationScope.toppings}">
                <tr>
                    <td>${toppings.topping_id}</td>
                    <td>${toppings.name}</td>
                    <td>${toppings.price}</td>
                </tr>
            </c:forEach>
        </table>





    </jsp:body>
</t:genericpage>

