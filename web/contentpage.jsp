<%@page import="entities.*"%>
<%@page import="java.util.*"%>
<%@page import="base.*"%>

<div id='contentpage'>
    <% String pageParam = request.getParameter("page");
        if (pageParam == null) {%>
    <jsp:include page="categories.jsp" flush="true" />
    <%    } else if (pageParam.equalsIgnoreCase("Topics")) {
    %>
    <jsp:include page="topics.jsp" flush="true" />
    <%
    } else if (pageParam.equalsIgnoreCase("Posts")) {
    %>
    <jsp:include page="posts.jsp" flush="true" />
    <%
    } else if (pageParam.equalsIgnoreCase("registration")) {
    %>
    <jsp:include page="registration.jsp" flush="true" />
    <%
    } else if (pageParam.equalsIgnoreCase("privatemessage")) {
    %>
    <jsp:include page="privatemessage.jsp" flush="true" />
    <%
        }else if (pageParam.equalsIgnoreCase("profile")) {
    %>
    <jsp:include page="profile.jsp" flush="true" />
    <%
        }

    %>
</div>

