<%-- 
    Document   : updatePassenger
    Created on : Mar 23, 2024, 9:04:24 PM
    Author     : Dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="db.dbcon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Passenger</title>
    </head>
    <body>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> 
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <%
            String u = request.getParameter("passengerID").trim();
            dbcon query1 = new dbcon();
            ResultSet rs = null;
            String sql = "SELECT * \n"
                    + "FROM\n"
                    + "\"Passenger\"\n"
                    + "WHERE\n"
                    + "\"passengerID\" = '" + u + "'";
            rs = query1.sqlquery(sql);
            int i = 1;
            rs.next();
        %>
        <form action="/FlightTicketingSystem/updateuser" method="post" >
            <div class="form-group row">
                <label for="passengerID" class="col-4 col-form-label">Passenger ID</label> 
                <div class="col-8">
                    <input id="passengerName" name="passengerID" placeholder="Enter your full name" type="text" 
                           value="<% out.println(rs.getString("passengerID"));  %>"
                           readonly="true"
                           class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label for="passengerName" class="col-4 col-form-label">Full Name</label> 
                <div class="col-8">
                    <input id="passengerName" name="passengerName" placeholder="Enter your full name" type="text" 
                           value="<% out.println(rs.getString("passengerName"));  %>"
                           class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label for="passengerEmail" class="col-4 col-form-label">Email Address</label> 
                <div class="col-8">
                    <input id="passengerEmail" name="passengerEmail" placeholder="Enter your email" type="text" required="required"
                           value="<% out.println(rs.getString("passengerEmail"));  %>"
                           class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label for="passengerPassword" class="col-4 col-form-label">Password</label> 
                <div class="col-8">
                    <input id="passengerPassword" name="passengerPassword" placeholder="Enter your password" type="text" required="required" 
                           value="<% out.println(rs.getString("passengerPassword"));  %>"
                           class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label for="passportNumber" class="col-4 col-form-label">Passport Number</label> 
                <div class="col-8">
                    <input id="passportNumber" name="passportNumber" placeholder="Enter your passport" type="text" 
                           value="<% out.println(rs.getString("passportNumber"));  %>"
                           class="form-control">
                </div>
            </div> 
            <div class="form-group row">
                <div class="offset-4 col-8">
                    <button name="submit" type="submit" class="btn btn-primary">Submit</button>
                </div>
            </div>
        </form>
    </body>
</html>
