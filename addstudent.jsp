<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, enrollmentpackage.*" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student</title>
    </head>
    <body>
        <h1>Add Student</h1>
        <jsp:useBean id="degreeBean" class="enrollmentpackage.degree" scope="session" />
        <% degreeBean.loadDegrees(); %>
        <form name="addstudent" action="addstudentaction.jsp" method="POST">
            Enter student name - <input type="text" name="studentname" id="studentname"><br>
            Select degree -
            <select name="studentdegree" id="studentdegree">
                <% for (int i=0; i < degreeBean.degreeList.size(); i++)
                {
                    degree d = new degree();
                    d = degreeBean.degreeList.get(i); %>
                    <option value="<%=d.degreeid%>"><%=d.degreename%></option>
                <% } %>
            </select><br>
            <input type="submit" value="addstudent" name="addstudent" />
        </form>
    </body>
<html>
