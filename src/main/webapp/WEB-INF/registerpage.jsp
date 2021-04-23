<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Register as new User
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>




        <main class="form-signup">

            <h1 class="text-center fw-bold">Sign Up</h1>

            <form class="mt-5" name="login" action="${pageContext.request.contextPath}/fc/registercommand" method="POST">

                <input type="email" class="form-control mt-2" name="email" value="${param.email}" placeholder="Enter email">
                <input type="password" class="form-control mt-3" name="password1"  value="${param.password1}" placeholder="Enter password">
                <input type="password" class="form-control mt-3" type="password" name="password2" value="${param.password2}" placeholder="Repeat password">

                <button class="w-100 btn btn-lg mt-3 btn-login text-white" type="submit">Sign Up</button>

                <p class="link-secondary mt-3 text-center">Already have an account? <a href="${pageContext.request.contextPath}/fc/loginpage" class="mt-3 text-dark fw-bold" style="text-decoration: none;">Sign In</a></p>

            </form>

            <c:if test="${requestScope.error != null }">
                <p style="color:red">
                        ${requestScope.error}
                </p>
            </c:if>

        </main>

    </jsp:body>
</t:genericpage>


