<%@page import="entities.*"%>
<%@page import="java.util.*"%>
<%@page import="base.*"%>
<%
    List list = EntityHandler.getFilteredList("Topic", Integer.parseInt(request.getParameter("id")));
    Category c = (Category) EntityHandler.getItem("Category", Integer.parseInt(request.getParameter("id")));
    out.println("<h2><a href='index.jsp'>Category</a>->" + c.getName() + "</h2>");
    for (int i = 0; i < list.size(); i++) {
        Topic t = ((Topic) list.get(i));
        out.println("<div class='topic'>");
        out.println("<a href=/Forum/index.jsp?page=posts&id=" + t.getT_ID() + ">"
                + t.getName() + "</a>");
        out.print("</div>");
    }
    
     if (session.getAttribute("name")!=null){%>
  <jsp:include page="newtopic.jsp" flush="true" />
  <%}

%>
