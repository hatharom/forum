<% String username = (String) session.getAttribute("name");
    String currentPath = request.getRequestURL() + "?" + request.getQueryString();%>

<div class="welcomemessage">   Greetings <%out.print(username);%>!</div> 
<div id="usermenu">
    <a href="">my profile</a></br>
    <a href="/Forum/index.jsp?page=privatemessage">my messages</a></br>
</div>
<form action='AuthServlet' method='POST' >
    <input type='submit' name='logout' value='Logout'>
    <input type="hidden" name="currentPath" value="<%= currentPath%>" />
</form>
