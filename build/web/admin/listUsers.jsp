<%-- 
    Document   : listUser
    Created on : Mar 29, 2015, 6:01:20 PM
    Author     : hab81
--%>

<%@page import="models.user.UserRole"%>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>  
<%@page import="models.user.UserManager" %>
<%@page import="models.user.User" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/admin_style.css" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users List</title>
    </head>
    <body>
        <% if(request.getAttribute("errorMessage") != null) { %>
        <div class="error_message"><p><b><%=request.getAttribute("errorMessage")%></b></p></div>   
        <% }      
        else if(request.getAttribute("allUsersCount") != null) { %>
            <div class="div_system_title">
                <% int allUsersCount = (Integer)request.getAttribute("allUsersCount"); %>
                <!--<p>There are <%=allUsersCount%> users.</p>-->
                <h1><b>Hello Admin: </b></h1>
                <h3>You have <%=allUsersCount%> clients.</h3>
            </div>
            <div id="div_users_list">
                <!--<table id="table_userslist" border="1" cellpadding="1" >-->
                <table id="table_userslist" class="table table-hover">
                    <tr>  
                        <th>User Name</th>
                        <th>User Email</th>
                        <th>User Rank</th>
                        <th colspan="3">Operations</th>
                    </tr>  
                    <%  
                        List<User> allUsersList = (List<User>)request.getAttribute("allUsersList");     
                        List<UserRole> allUserRoleList = (List<UserRole>)request.getAttribute("allUserRoleList");
                        if(allUsersList.size() > 0) {  
                            for(User user : allUsersList) {
                                String roles = "";
                                for(UserRole item : allUserRoleList) {
                                    if(item.getUserName().equals(user.getUserName()))
                                        roles += item.getRoleName() + " | ";
                                }
                    %>  
                                <tr>
                                    <td><%=user.getUserName()%></td>  
                                    <td><%=user.getEmail()%></td>
                                    <td><%=roles%></td>  
                                    <td style="padding-left: 15px; padding-right: 15px;">  
                                        <form action="UserList" method="post">
                                            <input type="hidden" name="userName" value="<%=user.getUserName()%>"/>
                                            <!--<input type="submit" name="editUser" value="Edit" class="submit" />-->   
                                            <input type="submit" name="editUser" value="Edit" class="btn btn-xs btn-default" />  
                                        </form> 
                                    </td>  
                                    <td style="padding-left: 5px; padding-right: 5px;">
                                        <form action="UserList" method="post">
                                            <input type="hidden" name="userName" value="<%=user.getUserName()%>"/>
                                            <!--<input type="submit" name="removeUser" value="Remove" class="submit"/>-->      
                                            <input type="submit" name="removeUser" value="Remove" class="btn btn-xs btn-danger" />     
                                        </form>
                                    </td> 
                                    <td style="padding-left: 5px; padding-right: 5px;">
                                        <form action="UserList" method="post">
                                            <input type="hidden" name="userName" value="<%=user.getUserName()%>"/>
                                            <!--<input type="submit" name="sendMessage" value="Send Message" class="submit"/>-->     
                                            <input type="submit" name="createMessage" value="Send Message" class="btn btn-xs btn-info"/>     
                                        </form>
                                    </td> 
                                </tr>  
                    <%  
                            }//end of for
                        }//end of if  
                    %>  
                </table>  
            </div>
            
            <div id="two-buttons">
                <form action="UserList" method="post" >
                    <!--<input type="submit" name="addUser" value="Add User" class="submit_list_users_add"/>-->
                    <input type="submit" name="addUser" value="Add User" class="btn btn-primary"/>
                    <input type="submit" name="listMessage" value="List Messages" class="btn btn-info"/>
                    <!--<input type="submit" name="logOut" value="Log Out" class="submit_list_users_log_out"/>-->
                    <input type="submit" name="logOut" value="Log Out" class="btn btn-warning"/>
                </form>
            </div>
        <% } 
        else { %>
            <div class="div_system_title">
                <p><b>There is no valid users to list!</b></p>
            </div>
        <% } %>
    </body>
</html>
