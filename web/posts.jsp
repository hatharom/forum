<%@page import="entities.*"%>
<%@page import="java.util.*"%>
<%@page import="base.*"%>
<h1>posts</h1>
<% String pageParam = request.getParameter("id");
    out.println(pageParam);%>