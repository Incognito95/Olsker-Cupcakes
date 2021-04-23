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
        Lav din Cupcake og vælg:

        <div class="d-flex justify-content-center mt-2">
            <select class="form-select " aria-label="Default select example">
                <option selected>Select your bottom</option>
                <c:forEach var="bottoms" items="${applicationScope.bottoms}">
                    <option value="1" name="order">${bottoms.name} (Price: ${bottoms.price})</option>
                </c:forEach>
            </select>

            <select class="form-select" aria-label="Default select example">
                <option selected>Select your toppings</option>
                <c:forEach var="toppings" items="${applicationScope.toppings}">
                    <option value="1" name="orders">${toppings.name} (Price: ${toppings.price})</option>
                </c:forEach>
            </select>
        </div>

        <div class="d-flex justify-content-center mt-5">
        <br>
        <a href="" type="button" class="btn btn-primary btn-lg">Add to basket</a>
        <br>
        <a href="checkout" type="button" class="btn btn-success btn-lg ms-5">Go to payment</a>
        </div>

        <div class="d-flex justify-content-center mt-5">
        <br>
        <a href="yourcart" type="button" class="btn btn-primary btn-lg">Go to basket</a>
        <br>
        <a href="customerpage" type="button" class="btn btn-danger btn-lg ms-5">Cancel</a>
        </div>




    </jsp:body>
</t:genericpage>

