<%@page import="entities.*"%>
<%@page import="java.util.*"%>
<%@page import="base.*"%>

<%
    List list = EntityHandler.getList("Category");
%>

<h2>Categories</h2>

<%for (int i = 0; i < list.size(); i++) {
        Category c = ((Category) list.get(i));%>
<div class='category'>
    <a href="/Forum/index.jsp?page=topics&id=<%=c.getC_ID()%>"><%=c.getName()%> </a>

</div>
<%}%>

