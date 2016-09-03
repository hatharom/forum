<div id="newtopic">
    <% String categoryId = request.getParameter("id");%>
    <form action='TopicOperator' method='POST' >
        Create new topic: </br>
        <input type='text' name='topicname'>
        <input type="hidden" name="C_ID" value="<%= categoryId%>" />
        <input type='submit' name='newpost' value='Create!'>
    </form>

</div>