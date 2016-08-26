

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>jsp index!</h1>
        <jsp:include page="contentpage.jsp" flush="true" />
        <jsp:include page="loginbox.jsp" flush="true" />
    </body>
</html>
