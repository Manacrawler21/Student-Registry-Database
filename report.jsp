<%-- 
    Document   : report
    Created on : 02 3, 21, 8:03:11 PM
    Author     : SALAZAR, ENRICO SEBASTIAN
                 CCINFOM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report generator</title>
    </head>
    <body>
        <h1>Enter data to monitor</h1>
        <form name="modproduct" action="generateReport.jsp" method="POST">
            Term - <input type="text" name="term" id="term"><br>
            School year - <input type="text" name="schoolyear" id="schoolyear"><br>
            <input type="submit" value="Search..." name="search" />
        </form>
    </body>
</html>
