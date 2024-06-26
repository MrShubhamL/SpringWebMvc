<%@ page import="webapp.models.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Home</title>
    <%@include file="assets/custom-css.jsp"%>
</head>
<body class="d-flex flex-column h-100">
<%@include file="header.jsp"%>
<%
    User loggedUser = (User) session.getAttribute("user");
    if(loggedUser==null){
        session.removeAttribute("user");
        response.sendRedirect("/SpringWeb_war/");
    }
%>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-8 offset-lg-2">
            <%if(loggedUser!=null){%>

            <div class="card mb-3 mt-4" style="border-radius: .5rem;">
                <div class="row g-0">
                    <div class="col-md-4 gradient-custom text-center text-white"
                         style="border-top-left-radius: .5rem; border-bottom-left-radius: .5rem;">
                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava1-bg.webp"
                             alt="Avatar" class="img-fluid my-5" style="width: 80px;" />
                        <h5><%=loggedUser.getFullName()%></h5>
                        <p>Java Developer</p>
                        <i class="far fa-edit mb-5"></i>
                        <a href="logout" class="nav-link">Logout</a>
                    </div>
                    <div class="col-md-8">
                        <div class="card-body p-4">
                            <h6>Information</h6>
                            <hr class="mt-0 mb-4">
                            <div class="row pt-1">
                                <div class="col-6 mb-3">
                                    <h6>Email</h6>
                                    <p class="text-muted"><%=loggedUser.getEmail()%></p>
                                </div>
                                <div class="col-6 mb-3">
                                    <h6>Phone</h6>
                                    <p class="text-muted"><%=loggedUser.getContact()%></p>
                                </div>
                            </div>
                            <h6>Projects</h6>
                            <hr class="mt-0 mb-4">
                            <div class="row pt-1">
                                <div class="col-6 mb-3">
                                    <h6>Recent</h6>
                                    <p class="text-muted">Lorem ipsum</p>
                                </div>
                                <div class="col-6 mb-3">
                                    <h6>Most Viewed</h6>
                                    <p class="text-muted">Dolor sit amet</p>
                                </div>
                            </div>
                            <div class="d-flex justify-content-start">
                                <a href="#!"><i class="fab fa-facebook-f fa-lg me-3"></i></a>
                                <a href="#!"><i class="fab fa-twitter fa-lg me-3"></i></a>
                                <a href="#!"><i class="fab fa-instagram fa-lg"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%}%>
        </div>
    </div>
</div>
<%@include file="footer.jsp"%>
<%@include file="assets/custom-js.jsp"%>
</body>
</html>
