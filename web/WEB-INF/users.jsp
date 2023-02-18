<%-- 
    Document   : users
    Created on : 16-Feb-2023, 9:10:43 PM
    Author     : Renee
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Users</title>
    </head>
    <body>
<!-- First table for viewing the users-->
        <h1>Manage Users</h1>
        <table border="1">
            <tr>
                <th>Email</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Role</th>
                <th></th
                <th></th> 
            </tr>
            <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.email}</td>
                <td>${user.firstName}</td>
                <td>${user.lastName}</td>
                <td>${user.role}</td>
                <td><input type="submit" value="edit"</td>
                    <input type="hidden" name="action" value="edit">
                    <input type="submit" value="delete"</td>
                    <input type="hidden" name="action" value="delete">                    
            </tr>
            </c:forEach>
            
        </table>
<!-- Section to add a new user-->
        <c:if test="${action == 'add'}">
            <h2>Add User</h2>
            <form action="user" method="post">
                Email: <input type="text" name="email" required> <br>
                First Name: <input type="text" name="firstName" required> <br>
                Last Name: <input type="text" name="lastName" required> <br>
                Password: <input type="text" name="password" required> <br>
                Role: <select name="role" required>
                        <option value="systemAdmin">System Admin</option>
                        <option value="regularUser">Regular User</option>
                      </select> <br>
                <input type="submit"value="Add User">
                <input type="hidden" name="action" value="add">
            </form>
            ${errorMessage}
        </c:if> 
            
<!-- Section to edit the user-->

        <c:if test="${action == 'edit'}">
            
            <h2>Edit Users</h2>
            <form action="user" method="post">
                Email: ${user.email} <br>
                First Name: <input type="text" name="firstName" required value="${user.firstName}"> <br>
                Last Name: <input type="text" name="lastName" required value="${user.lastName}"> <br>
                Password: <input type="text" name="password" required> <br>
                Role: <select name="role" required>
                        <option value="systemAdmin">System Admin</option>
                        <option value="regularUser">Regular User</option>
                      </select> <br>
                      <input type="submit" value="Update User">
                      <input type="hidden" name="action" value="update">
                      <input type="submit" name="action" value="Cancel">
            </form>
          ${errorMessage}
        </c:if>
      
    </body>
</html>
