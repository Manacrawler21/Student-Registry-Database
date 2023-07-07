<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, enrollmentpackage.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student Action</title>
    </head>
    <body>
        <h1>Adding Student to Database</h1>
        <jsp:useBean id="studentBean" class="enrollmentpackage.students" scope="page" />
        <%
            studentBean.studentid = studentBean.generateNewID(); // generate a new unique student ID
            studentBean.completename = request.getParameter("studentname");
            studentBean.degreeid = request.getParameter("studentdegree");
            if (studentBean.addRecord() != 0)
            {
        %>
        Adding of new student with ID no. <%=studentBean.studentid%> was successful<br>
        <%
        }
        else
        {
        %>
        Adding of new student was not successful<br>
        <%
        }
        %>
        <br>
        <a href="studentmaintenance.jsp">Back to student maintenance</a><br>
    </body>
</html>
