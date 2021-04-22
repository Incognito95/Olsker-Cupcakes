<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<t:genericpage>
    <jsp:attribute name="header">
         Demo Page for Employee view all customers
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>
        <h1>Hello ${sessionScope.email} </h1>
        view all customers:

        <h3 class="mt-3">Customers</h3>
        <table class="table table-striped">
            <thead>
            <th>user_id</th>
            <th>user_email</th>
            <th>user_password</th>
            <th>user_role</th>
            <th>user_credit</th>
            </thead>
            <c:forEach var="users" items="${applicationScope.users}">
                <tr>
                    <td>${users.user_id}</td>
                    <td>${users.user_email}</td>
                    <td>${users.user_password}</td>
                    <td>${users.user_role}</td>
                    <td>${users.user_credit}</td>
                </tr>
            </c:forEach>
        </table>


        <div class="d-flex justify-content-center mt-5">
            <br>
            <a href="viewallcustomers" type="button" class="btn btn-primary btn-lg">edit</a>
            <br>
            <a href="viewallcustomers" type="button" class="btn btn-primary btn-lg ms-5">insert credit</a>
            <br>
        </div>

        <div class="d-flex justify-content-center mt-5">
            <br>
            <a href="employeepage" type="button" class="btn btn-primary btn-lg ms-5">back</a>
            <br>
        </div>

    </jsp:body>
</t:genericpage>
