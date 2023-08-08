<%-- 
    Document   : top2
    Created on : Jul 13, 2023, 3:56:15 PM
    Author     : Cicca
--%>

<%@page import="sample.user.UserDTO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Top 2 Page</title>
    </head>
    
    
    
    
    <body>
        <%
            List<UserDTO> listUser = (List<UserDTO>) request.getAttribute("LIST_USER");
            if (listUser != null) {
                if (listUser.size() > 0) {
                    for (UserDTO user : listUser) {
        %>

        User ID: <%=user.getUserID()%> </br>
        
        Full Name: <%=user.getFullName()%>  </br>
        Role ID:  <%= user.getRoleID()%> </br

        </br>
        
        
        <%
                    }
                }
            }
        %>

    </body>
</html>