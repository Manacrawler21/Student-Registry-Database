<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, enrollmentpackage.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Select Course to Enroll</title>
    </head>
    <body>
        <h1>Select Course to Enroll</h1>
        <jsp:useBean id="enrollBean" class="enrollmentpackage.enroll" scope="session" />
        <%
            if (enrollBean.term == 0 || enrollBean.ayear == 0 || enrollBean.Student.studentid == 0)
            {
                enrollBean.Student.studentid = Integer.parseInt(request.getParameter("studentid"));
                enrollBean.term = Integer.parseInt(request.getParameter("term"));
                enrollBean.ayear = Integer.parseInt(request.getParameter("ayear"));
            }
            
            enrollBean.loadCourses();
        %>
        <%=enrollBean.Student.studentid%><%=enrollBean.term%><%=enrollBean.ayear%>
        <form name="addcourse" action="addtoenroll.jsp" method="POST">
            Select course -
            <select name="courses" id="courses">
                <%
                for (int i = 0; i < enrollBean.CourseList.size(); i++)
                {
                    coursedegree cd = new coursedegree();
                    cd = enrollBean.CourseList.get(i);
                %>
                <option value="<%=cd.courseid%>"><%=cd.courseid%></option>
                <% } %>
            </select><br>
            <input type="submit" value="addcourse" name="addcourse"><br>
        </form>
        <form name="submitenroll" action="submitenroll.jsp" method="POST">
            <input type="submit" value="submitenroll" name="submitenroll"><br>
        </form>
    </body>
</html>
