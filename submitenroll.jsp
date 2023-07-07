<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, enrollmentpackage.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Submit Enrollment</title>
    </head>

    <body>
        <h1>Submit Enrollment</h1>
        <jsp:useBean id="enrollBean" class="enrollmentpackage.enroll" scope="session" />
        <%
            enrollBean.confirmEnrollment();
            enrollBean.clearEnrollment();
        %>
        Your enrollment has been added to the database.<br>
        <a href="index.jsp">Go back to main menu</a><br>
    </body>
</html>
