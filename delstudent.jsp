<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete an existing Student</title>
    </head>
    <body>
        <h1>Delete Student</h1>
        <form name="delstudent" action="delstudentaction.jsp" method="POST">
            Student ID- <input type="text" name="studentid" id="studentid"><br>
            <input type="submit" value="delstudent" name="delstudent" />
        </form>
    </body>
</html>
