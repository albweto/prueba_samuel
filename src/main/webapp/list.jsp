<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
            <div class="row">
                <div class="col-sm-10 col-sm-offset-1">
                    <div class="panel panel-default">
                        <!-- Default panel contents -->
                        <div class="panel-heading">Contacts <a th:href="@{/contacts/add}" class="btn btn-primary"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></a></div>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Last Name</th>
                                    <th>First Name</th>
                                    <th>Mobile No.</th>
                                    <th>Address</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                            <div th:if="!${#lists.isEmpty(persons)}">
                                <tr th:each = "person : ${persons}">
                                    <td th:text = "${person.id}"></td>
                                    <td th:text = "${person.nombre}"></td>
                                    <td th:text = "${person.apellido}"></td>
                                    <td th:text = "${person.status}"></td>
                                    <td>
                                        <div class="btn-group" role="group" aria-label="...">
                                            <a th:href="${'/contacts/view/' + person.id}" class="btn btn-info"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                            <a th:href="${'/contacts/edit/' + person.id}" class="btn btn-success"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
                                            <a th:href="${'/contacts/delete/' + contact.id}" class="btn btn-danger"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>
                                        </div>
                                    </td>
                                </tr>
                            </div>
                            <div th:if="${#lists.isEmpty(persons)}">
                                <tr>
                                    <td>No contact exists!</td>
                                </tr>
                            </div>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>