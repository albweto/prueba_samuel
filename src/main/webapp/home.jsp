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
                <div class="col-sm-8 col-sm-offset-2">
                    <!--<div class="container">-->
                    <div class="panel panel-default">
                        <!-- Default panel contents -->
                        <div class="panel-heading">Add Contact</div>
                        <div class="panel-body">
                            <form action="/person/getUSuarios" th:action="@{/person/getUSuarios}" th:object="${person}" method="post">
                                <div class="form-group">
                                    <label for="inputLastName"> Name</label>
                                    <input type="text" class="form-control" id="inputLastName" placeholder="Last Name" th:field="*{nombre}" name="lastName" />
                                    <span  class="help-block" th:if="${#fields.hasErrors('nombre')}" th:errors="*{nombre}">Last Name Error</span>
                                </div>
                                <div class="form-group">
                                    <label for="inputFirstName">last name</label>
                                    <input type="text" class="form-control" id="inputFirstName" placeholder="First Name" th:field="*{apellido}" name="firstName" />
                                    <span  class="help-block" th:if="${#fields.hasErrors('apellido')}" th:errors="*{apellido}">First Name Error</span>
                                </div>
                                <div class="text-right">
                                    <button type="submit" class="btn btn-primary">Save</button>
                                </div>
                            </form>
                        </div>
                        <div class="panel-footer">
                        </div>
                    </div>
                    <!--</div>-->
                </div>
            </div>
        </div>
</body>
</html>