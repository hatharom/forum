<%@page import="entities.*"%>
<%@page import="java.util.*"%>
<%@page import="base.*"%>
<%
    List list = EntityHandler.getList("Category");
    out.println("<table>");
    out.println("<tr>");
    out.println("<th>Categories</th>");
    out.println("</tr>");
    for (int i = 0; i < list.size(); i++) {
        Category c = ((Category) list.get(i));
        out.println("<tr>");
        out.println("<td>");
        out.println("<a href=/Forum/index.jsp?page=topics&id=" + c.getC_ID() + ">"
                + c.getName() + "</a>");
        out.println("</td>");
        out.println("</tr>");
    }
    out.println("</table>");
%>
