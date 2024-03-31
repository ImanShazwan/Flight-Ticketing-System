<%-- 
    Document   : deleteResponse
    Created on : Mar 24, 2024, 3:14:41 PM
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
        <title>Deletion Response</title>
        <script type="text/javascript">
            window.onload = function () {
                // Check the attribute set by the servlet
                var success = <%=request.getAttribute("deleteSuccess")%>;
                if (success) {
                    alert("Deletion successful!");

                } else {
                    alert("Deletion failed!");
                }
                window.location.href = 'adminDashboard.jsp';
            };
        </script>
    </body>
</html>
