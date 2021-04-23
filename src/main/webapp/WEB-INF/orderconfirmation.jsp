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

        <div class="container py-4">
        <header class="pb-1 mb-1 border-bottom">

                <path fill-rule="evenodd" clip-rule="evenodd" d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z" fill="currentColor"></path></svg>
            </a>
        </header>
            <span class="border-3 order-confirmation-border">
            <div class="p-3 mb-2 order-confirmation-background rounded-3">
            <div class="container-fluid py-1 d-flex justify-content-center mt-2">
                <h1 class="display-5 order-confirmation-title">ORDER CONFIRMATION</h1><br>
            </div>
            <p class="text-center order-confirmation-paragraph">${sessionScope.email}, thank you for your order!<br> We've received your order and</p>
        </div>
        </span>
        </div>

        <div class="d-flex justify-content-center mt-2">
        Order Summary
        </div>

        <table class="table table-striped">
            <thead>
            <th>Id</th>
            <th>Name</th>
            <th>Price</th>
            </thead>
            <c:forEach var="bottoms" items="${applicationScope.bottoms} ${applicationScope.toppings}">

            </c:forEach>
        </table>

        <div class="d-flex justify-content-center mt-5">
            <br>
            <a href="placeorder" type="button" class="btn btn-info btn-lg">Go Back</a>
        </div>

        <div class="d-flex justify-content mt-5">
        <h2>Contact</h2>
        </div>
        <h5>Olsker Cupcakes</h5>
        <h5>Nørgaardsvej 30</h5>
        <h5>2800 Kongens Lyngby</h5>
        <h5>36154504</h5>
        <h5>evu@cphbusiness.dk</h5>








    </jsp:body>
</t:genericpage>

