<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, enrollmentpackage.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete existing Student</title>
    </head>
    <body>
        <h1>Deleting Student from Database</h1>
        <jsp:useBean id="studentBean" class="enrollmentpackage.students" scope="page" />
        <%
            studentBean.studentid = Integer.parseInt(request.getParameter("studentid"));
            if (studentBean.delRecord() != 0)
            {
        %>
        Deletion of student with ID number <%=studentBean.studentid%> was successful.<br>
        <%
        }
        else
        {
        %>
        Deletion of student was not successful. <br>
        <%
        }
        %>
        <br>
        <a href="studentmaintenance.jsp">Back to student maintenance</a><br>
    </body>
</html>
