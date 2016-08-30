<%@page import="entities.*"%>
<%@page import="java.util.*"%>
<%@page import="base.*"%>

<%    List list = EntityHandler.getFilteredList("Post", Integer.parseInt(request.getParameter("id")));
    Topic currentTopic = (Topic) EntityHandler.getItem("Topic", Integer.parseInt(request.getParameter("id")));

    out.println("<h2>" + currentTopic.getName() + "</h2>");

    for (int i = 0; i < list.size(); i++) {
        Post c = ((Post) list.get(i));
        User user = (User) EntityHandler.getItem("User", c.getU_ID());
        out.println("<div class='post'>");
        out.println("<div class='posthead'>");
        out.println(user.getName());
        out.println("</div>");
        out.println("<div class='postcontent'>");
        out.println(c.getContent());
        out.println("</div>");
        out.println("</div>");
    }

%>