<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
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

            <h1 class="text-center fw-bold">Change Data</h1>

            <form class="mt-5" action="${pageContext.request.contextPath}/fc/settings" method="post">

                <label>Email</label>
                <input type="email" class="form-control mt-2" name="user_email" value="${param.email}">

                <label class="mt-3">Password</label>
                <input type="text" class="form-control mt-2" name="user_password"  value="${param.password}">


                <button type="submit" name="update" class="btn btn-success mt-3">Change</button>

            </form>

            <c:if test="${requestScope.error != null }">
                <p style="color:red">
                        ${requestScope.error}
                </p>
            </c:if>

        </main>

    </jsp:body>
</t:genericpage>


<%
        try {
            // create a java mysql database connection
            String myDriver = "com.mysql.jdbc.Driver";
            String myUrl = "jdbc:mysql://localhost:3306/cupcake?serverTimezone=CET";
            Class.forName(myDriver);
            Connection conn = DriverManager.getConnection(myUrl, "root", "root1995");

            // create the java mysql update preparedstatement
            String query = "UPDATE users SET user_email = ?, user_password = ? WHERE user_id = ?";
            PreparedStatement preparedStmt = conn.prepareStatement(query);
            preparedStmt.setString(1, request.getParameter("user_email"));
            preparedStmt.setString(2, request.getParameter("user_password"));

            // execute the java preparedstatement
            preparedStmt.executeUpdate();

            conn.close();
        } catch (Exception e) {
            e.getMessage();
        }

%>