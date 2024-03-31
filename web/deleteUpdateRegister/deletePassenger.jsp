<%-- 
    Document   : deletePassenger
    Created on : Mar 23, 2024, 10:38:15 PM
    Author     : Dell
--%>

<%@page import="db.dbcon"%>
<%@page import="java.sql.ResultSet"%>

<%
    dbcon query1 = new dbcon();
    ResultSet rs = null;
    String a = request.getParameter("passengerID").trim();
    String sql = "DELETE\n"
            + "FROM\n"
            + "\"public\".\"Passenger\"\n"
            + "WHERE\n"
            + "\"passengerID\" = '" + a + "'";

    boolean result = query1.deletedata(sql);
    request.setAttribute("deleteSuccess", result);
    RequestDispatcher dispatcher = request.getRequestDispatcher("deleteResponse.jsp");
    dispatcher.forward(request, response); //utk keluarkan popup

%>

Passenger Has Been Deleted!