<%@page import="entities.*"%>
<%@page import="java.util.*"%>
<%@page import="base.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="entity" class="base.EntityHandler"/>
<c:set var="pid" scope="request" value='${param.id}'/>
<c:set var="topicList" scope="page" value='${entity.getFilteredList("Topic",pid)}'/>
<c:set var="category" scope="page" value='${entity.getItem("Category",pid)}'/>

<h2><c:out value="${category.getName()}"/></h2>
<c:forEach var="topic" items="${topicList}">
   
    <div class='topic'>
           <a href="/Forum/index.jsp?page=posts&id=<c:out value='${topic.getT_ID()}'/>"><c:out value='${topic.getName()}'/> </a>
      
    </div>  
    
</c:forEach> 
