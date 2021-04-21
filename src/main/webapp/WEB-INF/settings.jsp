<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
        Edit Profile Settings
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>




        <main class="form-signin">

            <h1 class="text-center fw-bold">Settings</h1>

            <form class="mt-5" name="login" action="${pageContext.request.contextPath}/fc/settingscommand" method="POST">

                <label>Email</label>
                <input type="email" class="form-control mt-2" name="text" value="${param.email}">

                <label class="mt-3">Password</label>
                <input type="text" class="form-control mt-2" name="text"  value="${param.password1}">

                <label class="mt-3">Role</label>
                <input type="role" class="form-control mt-2" type="text" name="role" value="${param.role}">

                <label class="mt-3">Credit</label>
                <input type="credit" class="form-control mt-2" type="credit" name="credit" value="${param.credit}">

                <button type="submit" name="update" value="${param.user_id}" class="btn btn-success mt-3">Change</button>

            </form>

            <c:if test="${requestScope.error != null }">
                <p style="color:red">
                        ${requestScope.error}
                </p>
            </c:if>

        </main>

    </jsp:body>
</t:genericpage>


