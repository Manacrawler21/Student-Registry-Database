<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, enrollmentpackage.*" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modify Student</title>
    </head>
    <body>
        <h1>Modify Student</h1>
        <jsp:useBean id="degreeBean" class="enrollmentpackage.degree" scope="page" />
        <% degreeBean.loadDegrees(); %>
        <form name="modstudent" action="modstudentaction.jsp" method="POST">
            Enter student ID - <input type="text" name="studentid" id="studentid"><br>
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
            <input type="submit" value="modstudent" name="modstudent" />
        </form>
    </body>
<html>
