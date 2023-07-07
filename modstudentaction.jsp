<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, enrollmentpackage.*" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modify Student Action</title>
    </head>
    <body>
        <h1>Modifying Student in Database</h1>
        <jsp:useBean id="studentBean" class="enrollmentpackage.students" scope="page" />
        <%
            studentBean.studentid = Integer.parseInt(request.getParameter("studentid"));
            studentBean.completename = request.getParameter("studentname");
            studentBean.degreeid = request.getParameter("studentdegree");
            studentBean.modRecord();
        %>
        Student in database has been modified.<br>
        <br>
        <a href="studentmaintenance.jsp">Back to student maintenance</a><br>
    </body>
</html>
