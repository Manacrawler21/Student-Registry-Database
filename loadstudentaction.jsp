<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, enrollmentpackage.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Load Student Result</title>
    </head>
    <body>
        <h1>Loaded Student from Database</h1>
        <jsp:useBean id="studentBean" class="enrollmentpackage.students" scope="page" />
        <%
            studentBean.studentid = Integer.parseInt(request.getParameter("studentid"));
            studentBean.viewRecord();
        %>
        <table style="width:75%" border="1">
            <tr>
                <td>Student ID</td>
                <td>Student Name</td>
                <td>Student Degree</td>
            </tr>
            <tr>
                <td><%=studentBean.studentid%></td>
                <td><%=studentBean.completename%></td>
                <td><%=studentBean.degreeid%></td>
            </tr>
        </table><br>
        <a href="studentmaintenance.jsp">Back to student maintenance</a><br>
    </body>
</html>
