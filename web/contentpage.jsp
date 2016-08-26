<%@page import="entities.*"%>
<%@page import="java.util.*"%>
<%@page import="base.*"%>

<div id="contentpage">
    <% String pageParam = request.getParameter("page");
        if (pageParam == null) {
            out.print("no param so main");
        } else {
            out.print(pageParam + " is the page");
        }
        if (pageParam!=null && pageParam.equals("Topic")) {
         List list = EntityHandler.getList(pageParam);
          for (int i = 0; i < list.size(); i++) {

                out.println("a kért adat: " + ((Topic) list.get(i)).getName() + "</br>");

            }
       
        }


    %>
</div>

