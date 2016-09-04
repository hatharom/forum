<% String username= (String)session.getAttribute("name");
        String currentPath=request.getRequestURL()+"?"+request.getQueryString();%>
        Greetings <%out.print(username);         %> !
     <form action='AuthServlet' method='POST' >
    <input type='submit' name='logout' value='Logout'>
     <input type="hidden" name="currentPath" value="<%= currentPath %>" />
  </form>
