<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, enrollmentpackage.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Course to Cart</title>
    </head>
    <body>
        <h1>Add Course to Cart</h1>
        <jsp:useBean id="enrollBean" class="enrollmentpackage.enroll" scope="session" />
        <%
            enrollment e = new enrollment();
            e.studentid = enrollBean.Student.studentid;
            e.courseid = request.getParameter("courses");
            e.term = enrollBean.term;
            e.schoolyear = enrollBean.ayear;
            enrollBean.EnrollmentList.add(e);
        %>
        Course has been added to cart.
        <a href="selectenrollcourse.jsp">Go back to course selection</a>
    </body>
</html>
