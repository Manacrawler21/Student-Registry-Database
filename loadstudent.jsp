<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Load Student Information</title>
    </head>
    <body>
        <h1>Load Student Information</h1>
        <form name="loadstudent" action="loadstudentaction.jsp" method="POST">
            Enter student ID - <input type="text" name="studentid" id="studentid"><br>
            <input type="submit" value="loadstudent" name="loadstudent"/>
        </form>
    </body>
</html>
