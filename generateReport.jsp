<%-- 
    Document   : generateReport
    Created on : 02 3, 21, 8:07:43 PM
    Author     : SALAZAR, ENRICO SEBASTIAN
                 CCINFOM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, enrollmentpackage.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Generating report</title>
    </head>
    <body>
        <jsp:useBean id="productsBean" class="enrollmentpackage.report" scope="session"/>
        <%
            productsBean.term   = Integer.parseInt(request.getParameter("term"));
            productsBean.schoolyear   = Integer.parseInt(request.getParameter("schoolyear"));
            productsBean.generateReport();
        %>
        Student enrollment records<br>
        <table style="width:75%" border="1">
            <tr>
                <td>STUDENTS ENROLLED</td>
                <td>COURSE NAME</td>
            </tr>
            <tr>
                <%  productsBean.generateReport();
                for (int i=0; i<productsBean.classlist.size(); i++) {
                %>
                <jsp:useBean id="productsTemp" class="enrollmentpackage.enrollment" scope="session"/>
                <%
                    productsTemp = productsBean.classlist.get(i);
                %>
                <tr>
                    <td><%=productsTemp.studentcount%></td>
                    <td><%=productsTemp.courseid%></td>
                </tr>
                <% } %>
        </table>
        
        
        <br>
        <a href="index.html">Main menu</a>
    </body>
</html>
