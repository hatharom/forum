<%@page import="entities.*"%>
<%@page import="java.util.*"%>
<%@page import="base.*"%>

<%    List list = EntityHandler.getFilteredList("Post", Integer.parseInt(request.getParameter("id")));
    Topic currentTopic=(Topic) EntityHandler.getItem("Topic", Integer.parseInt(request.getParameter("id")));
    out.println("<table>");
    out.println("<tr>");
    out.println("<th>"+currentTopic.getName()+"</th>");
    out.println("</tr>");
    for (int i = 0; i < list.size(); i++) {
        Post c = ((Post) list.get(i));
        User user = (User) EntityHandler.getItem("User", c.getU_ID());
        out.println("<tr>");
        out.println("<td>");
        out.println(c.getContent() + " létrehozás dátuma " + c.getDate()+" felhasználó: "+user.getName());
           out.println("</td>");
        out.println("</tr>");
    }
     out.println("</table>");
%>