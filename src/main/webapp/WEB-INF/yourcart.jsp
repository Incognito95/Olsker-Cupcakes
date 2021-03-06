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

        <table class="table table-striped">
            <tead>
                <tr>
                    <td>Antal</td>
                    <td>Topping</td>
                    <td>Bottom</td>
                    <td>Pris</td>
                </tr>
            </tead>

            <c:forEach var="basketItem" items="${sessionScope.basket.basketItemList}">
                <tr>
                    <td>${basketItem.quantity}</td>
                    <td>${basketItem.toppings.name}</td>
                    <td>${basketItem.bottoms.name}</td>
                    <td>${basketItem.price}</td>
                </tr>
            </c:forEach>
            <tr>
                <td></td>
                <td></td>
                <td>Pris i alt</td>
                <td>${sessionScope.basket.totalSum()}</td>
            </tr>
        </table>

        <form action="${pageContext.request.contextPath}/fc/checkout">

        <div class="d-flex justify-content-center mt-5">
            <br>
            <button type="submit" class="btn btn-success btn-lg">Procced</button>
        </div>
        </form>

        <div class="d-flex justify-content-center mt-5">
            <br>
            <a href="placeorder" type="button" class="btn btn-danger btn-lg">Cancel</a>
        </div>


    </jsp:body>
</t:genericpage>