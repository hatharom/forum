<%@page import="entities.*"%>
<%@page import="java.util.*"%>
<%@page import="base.*"%>
<%
    List list = EntityHandler.getFilteredList("Topic",Integer.parseInt(request.getParameter("id")));
    for (int i = 0; i < list.size(); i++) {
        Topic c = ((Topic) list.get(i));
        out.println("<a href=/Forum/index.jsp?page=posts&id=" + c.getT_ID() + ">"
                + c.getName() + "</a>");
    }

%>
