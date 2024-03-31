<%-- 
    Document   : updateResponse
    Created on : Mar 25, 2024, 8:56:01 PM
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
                var success = <%=request.getAttribute("updateSuccess")%>;
                if (success) {
                    alert("Update successful!");

                } else {
                    alert("Update failed!");
                }
                window.location.href = '/FlightTicketingSystem/pages/adminDashboard.jsp';
            };
        </script>
    </body>
</html>