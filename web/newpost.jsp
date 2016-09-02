<div id="newpost">
    <% String topicId=request.getParameter("id"); %>
    <form action='PostOperator' method='POST' >
       Write new post: </br>
    <textarea rows="4" cols="50" name="comment" >
    Enter text here...</textarea> 
       <input type="hidden" name="T_ID" value="<%= topicId %>" />
    <input type='submit' name='newpost' value='Send!'>
</form>
 
</div>