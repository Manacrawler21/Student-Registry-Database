<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, enrollmentpackage.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enroll Existing Student</title>
    </head>
    <body>
        <h1>Enroll Existing Student</h1>
        <jsp:useBean id="enrollBean" class="enrollmentpackage.enroll" scope="session" /> 
        <%
        enrollBean.clearEnrollment();
        %>
        <form name="submitid" action="selectenrollcourse.jsp" method="POST">
            Enter student ID - <input type="text" name="studentid" id="studentid"><br>
            Enter term - <input type="text" name="term" id="term"><br>
            Enter academic year - <input type="text" name="ayear" id="ayear"><br>
            <input type="submit" value="enrollstudent" name="enrollstudent" />
        </form><br>
        <a href="index.jsp">Back to main menu</a><br>
    </body>
</html>
