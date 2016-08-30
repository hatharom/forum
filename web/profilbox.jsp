<% String username= (String)session.getAttribute("name");
    out.print("Greetings "+username+" !");
    out.println(" <form action='AuthServlet' method='POST' >");
    out.println("<input type='submit' name='logout' value='Logout'>");
   out.println("</form>");
%>