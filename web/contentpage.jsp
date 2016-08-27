<%@page import="entities.*"%>
<%@page import="java.util.*"%>
<%@page import="base.*"%>

<div id="contentpage">
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
        }

    %>
</div>

