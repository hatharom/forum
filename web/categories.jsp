<%@page import="entities.*"%>
<%@page import="java.util.*"%>
<%@page import="base.*"%>
<%
    List list = EntityHandler.getList("Category");

    out.println("<h2>Categories</h2>");

    for (int i = 0; i < list.size(); i++) {
        Category c = ((Category) list.get(i));
        out.println("<div class='category'>");
        out.println("<a href=/Forum/index.jsp?page=topics&id=" + c.getC_ID() + ">"
                + c.getName() + "</a>");
        out.print("</div>");
    }

%>
