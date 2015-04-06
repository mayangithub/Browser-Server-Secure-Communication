<%-- 
    Document   : listMessages
    Created on : Apr 5, 2015, 9:59:50 PM
    Author     : yanma
--%>

<%@page import="java.util.List"%>
<%@page import="models.user.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/admin_style.css" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Messages</title>
    </head>
    <body>
        <% 
           String senderName = request.getAttribute("sender").toString();
        %>
        <% if (senderName != null) { %>
            <div class="div_system_title">
                <h1><b>List of messages you sent:</b></h1>
            </div>
            
            <div id="div_users_list">
                <table id="table_messagelist" class="table table-hover">
                    <tr>  
                        <th>#</th>
                        <th>Receiver</th>
                        <th>Time</th>
                        <th>Content</th>
                        <th>Status</th>
                        <th colspan="2">Operations</th>
                    </tr>  
                    <%  
                        List<Message> allMessagesList = (List<Message>)request.getAttribute("allMessageList");     
                        if(allMessagesList.size() > 0) {  
                            int id = 1;
                            for(Message message : allMessagesList) {
                                String status = "";
                                if (message.getIs_read() == 0) {
                                    status = "Unread";
                                } else {
                                    status = "Read";
                                }
                    %>  
                                <tr>
                                    <td><%=id%></td>
                                    <td><%=message.getReceiver()%></td>  
                                    <td><%=message.getTime()%></td>
                                    <td><%=message.getContent()%></td>  
                                    <td><%=status%></td>
                                    <td style="padding-left: 15px; padding-right: 15px;">  
                                        <form action="UserList" method="post">
                                            <input type="hidden" name="mid" value="<%=message.getMid()%>"/>
                                            <!--<input type="submit" name="editUser" value="Edit" class="submit" />-->   
                                            <input type="submit" name="editMessage" value="Edit" class="btn btn-xs btn-default" />  
                                        </form> 
                                    </td>  
                                    <td style="padding-left: 5px; padding-right: 5px;">
                                        <form action="UserList" method="post">
                                            <input type="hidden" name="mid" value="<%=message.getMid()%>"/>
                                            <!--<input type="submit" name="removeUser" value="Remove" class="submit"/>-->      
                                            <input type="submit" name="removeMessage" value="Remove" class="btn btn-xs btn-danger" />     
                                        </form>
                                    </td> 
                                </tr>  
                    <%          id++;
                            }//end of for
                        }//end of if  
                    %>  
                </table>  
            </div>
            
            <div id="two-buttons">
                <form action="MessageList" method="post" >
                    <!--<input type="submit" name="addUser" value="Add User" class="submit_list_users_add"/>-->
                    <input type="submit" name="listUser" value="List Users" class="btn btn-primary"/>
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
