<%--
  Created by IntelliJ IDEA.
  User: Nikita
  Date: 6/26/2024
  Time: 7:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
    <%@include file="assets/custom-css.jsp"%>
</head>
<body class="d-flex flex-column h-100">
<%@include file="header.jsp"%>
<div class="container-fluid">
    <div class="row mt-5">
        <div class="col-lg-6 offset-lg-3">
            <div class="card">
                <div class="card-header bg-dark">
                    <h5 class="card-title text-white">REGISTRATION</h5>
                </div>
                <div class="card-body p-4">
                    <form action="user/addUser" method="post">
                        <div class="form-group">
                            <label for="fullName" class="form-label">Full Name</label>
                            <input name="fullName" type="text" id="fullName" class="form-control" placeholder="Enter your full name">
                        </div>
                        <div class="form-group">
                            <label for="contact" class="form-label">Contact</label>
                            <input name="contact" type="tel" id="contact" class="form-control" placeholder="Enter your contact">
                        </div>
                        <div class="form-group">
                            <label for="email" class="form-label">Email</label>
                            <input name="email" type="email" id="email" class="form-control" placeholder="Enter your email">
                        </div>
                        <div class="form-group">
                            <label for="password" class="form-label">Password</label>
                            <input name="password" type="password" id="password" class="form-control" placeholder="Enter your password">
                        </div>
                        <div class="form-group mt-3">
                            <div class="col">
                                <button class="btn btn-dark">SUBMIT</button>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row mt-3">
                                <div class="col">
                                    <a href="/SpringWeb_war/" class="nav-link">Already have account? <span class="text-bold">Login</span></a>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="footer.jsp"%>
<%@include file="assets/custom-js.jsp"%>
</body>
</html>
