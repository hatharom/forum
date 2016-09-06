
<div id="userbox">   
    <% if (session.getAttribute("name")==null){ %>
 <jsp:include page="loginbox.jsp" flush="true" />
 <%} else {%>
  <jsp:include page="profilbox.jsp" flush="true" />
  <%} %>
    

</div>

