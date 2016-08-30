
<div id="userbox">
    <h1>userbox</h1>
    <% if (session.getAttribute("name")==null){ %>
 <jsp:include page="loginbox.jsp" flush="true" />
 <%} else {%>
  <jsp:include page="profilbox.jsp" flush="true" />
  <%} %>
    

</div>

