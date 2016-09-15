<%@page import="entities.User"%>
<%@page import="base.EntityHandler"%>
<%String username = (String) request.getParameter("name");%>
<% int id = EntityHandler.getId("User", "name", username);%>
<% User user = (User)EntityHandler.getItem("User", id);%>
<div id="profile">
    <h2> Member's page</h2> 
    <table>
 
  <tr>
    <td>Name: </td>
    <td><%=user.getName()%></td>
  </tr>
  <tr>
    <td>email: </td>
    <td><%=user.getEmail()%></td>
  </tr>
   <tr>
    <td>location: </td>
    <td><%=user.getLocation()%></td>
  </tr>
   <tr>
    <td>registration date:  </td>
    <td><%=user.getRegistration()%></td>
  </tr>

</table>
 
</div>
