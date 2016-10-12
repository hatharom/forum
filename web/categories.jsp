<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="entities.*"%>
<%@page import="java.util.*"%>
<%@page import="base.*"%>

<h2>Categories</h2>
                                
<jsp:useBean id="entity" class="base.EntityHandler"/>
<c:set var="categoryList" scope="page" value='${entity.getList("Category")}'/>

<c:forEach var="category" items="${categoryList}">
    <%%>
    <div class='category'>
        <a href="/Forum/index.jsp?page=topics&id=<c:out value='${category.getC_ID()}'/>"><c:out value='${category.getName()}'/> </a>
    </div>  
</c:forEach>  

