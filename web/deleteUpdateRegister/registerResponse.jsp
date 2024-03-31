<%-- 
    Document   : registerResponse
    Created on : Mar 28, 2024, 12:26:17 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <title>Passenger Update Response</title>
        <script type="text/javascript">
            window.onload = function () {
                // Check the attribute set by the servlet
                var success = <%=request.getAttribute("registerSuccess")%>;
                if (success) {
                    alert("Register has been successful!");

                } else {
                    alert("Register failed!");
                }
                window.location.href = '/FlightTicketingSystem/pages/adminDashboard.jsp';
            };
        </script>
    </body>
</html>
