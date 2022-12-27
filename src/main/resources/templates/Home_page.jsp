<%@ page import="java.util.List" %>
<%@ page import="com.example.project.services.UserService" %>
<%@ page import="com.example.project.model.User" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>Proiect</title>
</head>
<body>
<div>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">No.</th>
            <th scope="col">Name</th>
            <th scope="col">Email</th>
        </tr>
        </thead>
        <tbody>
        <%
            UserService userSe = new UserService();
            List<User> allUser = userSe.getAll();
            for (int i = 0; i < allUser.size(); i++) { %>
        <tr>
            <th scope="row"><% out.print(i); %></th>
            <td><%=allUser.get(i).getName()%></td>
            <td><%=allUser.get(i).getEmail()%></td>
        </tr>
        <% } %>
        </tbody>
    </table>
</div>
</body>
</html>