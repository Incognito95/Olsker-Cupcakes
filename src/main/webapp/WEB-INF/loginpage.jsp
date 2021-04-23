<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Login page
    </jsp:attribute>

    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>

        <main class="form-login">

            <h1 class="text-center fw-bold">Login</h1>

            <form class="mt-5" name="login" action="${pageContext.request.contextPath}/fc/logincommand" method="POST">

                <input type="email" class="form-control mt-2" name="email" value="${param.email}" placeholder="Enter email">
                <input type="password" class="form-control mt-3" name="password"  value="${param.password1}" placeholder="Enter password">

                <button class="w-100 btn btn-lg mt-3 btn-login text-white" type="submit">Login</button>

                <p class="link-secondary mt-3 text-center">Don't have an account? <a href="${pageContext.request.contextPath}/fc/registerpage" class="mt-3 text-dark fw-bold" style="text-decoration: none;">Sign Up</a></p>

            </form>

            <c:if test="${requestScope.error != null }">
                <p style="color:red">
                        ${requestScope.error}
                </p>
            </c:if>

        </main>







    </jsp:body>
</t:genericpage>
