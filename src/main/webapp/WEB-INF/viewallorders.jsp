<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<t:genericpage>
    <jsp:attribute name="header">
         Demo Page for Employee view all orders
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>
        <h1>Hello ${sessionScope.email} </h1>
        view all orders:

        <h3 class="mt-3">Orders</h3>
        <table class="table table-striped">
            <thead>
            <th>order_id</th>
            <th>order_status</th>
            <th>order_time</th>
            <th>fk_user_id</th>
            </thead>
            <c:forEach var="orders" items="${applicationScope.orders}">
                <tr>
                    <td>${orders.order_id}</td>
                    <td>${orders.order_status}</td>
                    <td>${orders.order_time}</td>
                    <td>${orders.fk_user_id}</td>
                </tr>
            </c:forEach>
        </table>


        <div class="d-flex justify-content-center mt-5">
            <br>
            <a href="viewallorders" type="button" class="btn btn-primary btn-lg">edit</a>
            <br>
            <a href="employeepage" type="button" class="btn btn-primary btn-lg ms-5">back</a>
            <br>
        </div>

    </jsp:body>
</t:genericpage>
