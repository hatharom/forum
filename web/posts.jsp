<%@page import="entities.*"%>
<%@page import="java.util.*"%>
<%@page import="base.*"%>

<%  List list = EntityHandler.getFilteredList("Post", Integer.parseInt(request.getParameter("id")));
    Topic currentTopic = (Topic) EntityHandler.getItem("Topic", Integer.parseInt(request.getParameter("id")));
    Category c = (Category) EntityHandler.getItem("Category", currentTopic.getC_ID());    
    out.println("<h2><a href='index.jsp'>Category</a>-><a href='index.jsp?page=topics&id="+currentTopic.getC_ID()+"'>" 
            + c.getName() + "</a>->" + currentTopic.getName() + "</h2>");
    for (int i = 0; i < list.size(); i++) {
        Post p = ((Post) list.get(i));
        User user = (User) EntityHandler.getItem("User", p.getU_ID());
        out.println("<div class='post'>");
        out.println("<div class='posthead'>");
        out.println(user.getName());
        out.println("</div>");
        out.println("<div class='postcontent'>");
        out.println(p.getContent());
        out.println("</div>");
        out.println("</div>");
        
    }
     if (session.getAttribute("name")!=null){%>
  <jsp:include page="newpost.jsp" flush="true" />
  <%}

%>