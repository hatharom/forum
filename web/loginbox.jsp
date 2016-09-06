<div class="welcomemessage">Please login!</div>
<form action='AuthServlet' method='POST' >
    <% String currentPath = request.getRequestURL() + "?" + request.getQueryString();%>
    username:</br>
    <input type='text' name='username'> </br>
    password:</br>
    <input type='text' name='password'> </br>
    <input type='submit' value='Login'>
    <input type="hidden" name="currentPath" value="<%= currentPath%>" />
</form>
<a href="/Forum/index.jsp?page=registration"><span style="color:#cc3300">registration</span></a>