<%-- 
Document : student
Created on : Sep 19, 2017, 7:13:39 PM
Author : WIN 7
--%>
<%@page import="Model.StudentDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <h1>Student manager</h1>
            <form action="StudentServlet">
                <div class="form-group">
                    <label for="email">ID:</label>
                    <input type="text" class="form-control" placeholder="Enter id" name="id" value="${STUDENT.id}">
                </div>
                <div class="form-group">
                    <label for="pwd">Name:</label>
                    <input type="text" class="form-control" placeholder="Enter name" name="name" value="${STUDENT.name}">
                </div>
                <div class="form-group">
                    <label for="pwd">Phone:</label>
                    <input type="text" class="form-control" placeholder="Enter phone" name="phone" value="${STUDENT.phone}">
                </div>
                <div class="form-group">
                    <label for="pwd">Address</label>
                    <input type="text" class="form-control" placeholder="Enter address" name="address" value="${STUDENT.address}">
                </div>
                <button type="submit" class="btn btn-default" name="action" value="add">Add</button>
                <button type="submit" class="btn btn-default" name="action" value="update">Update</button>
            </form>
        </div>
        <div class="container">
            <h2>Table</h2>
            <p>The .table-bordered class adds border on all sides of the table and cells:</p> 
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Phone</th>
                        <th>Address</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (int i = 0; i < StudentDAO.lsStudent.size(); i++) {

                    %>                                     
                    <tr>
                        <td><%=StudentDAO.lsStudent.get(i).getId()%></td>
                        <td><%=StudentDAO.lsStudent.get(i).getName()%></td>
                        <td><%=StudentDAO.lsStudent.get(i).getPhone()%></td>
                        <td><%=StudentDAO.lsStudent.get(i).getAddress()%></td>
                        <td><a href='<%="StudentServlet?action=edit&id=" + StudentDAO.lsStudent.get(i).getId()%>' >Edit</a>|
                            <a href='<%="StudentServlet?action=del&id=" + StudentDAO.lsStudent.get(i).getId()%>' >Del</a></td>
                    </tr>
                    <%
                        }
                    %>

                    <tr>
                        <td>1</td>
                        <td>Anna</td>
                        <td>0905</td>
                        <td>Da Nang</td>
                        <td><a href="#">Edit</a>|<a href="#">Del</a></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Anna</td>
                        <td>0905</td>
                        <td>Da Nang</td>
                        <td><a href="#">Edit</a>|<a href="#">Del</a></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Anna</td>
                        <td>0905</td>
                        <td>Da Nang</td>
                        <td><a href="#">Edit</a>|<a href="#">Del</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>