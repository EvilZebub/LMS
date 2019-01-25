<%--
  Created by IntelliJ IDEA.
  User: DUO ZHAO
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/loginScript.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<html>
<head>
    <title>log in</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    if(session.getAttribute("adminname") != null && session.getAttribute("logout") == null){
        response.sendRedirect("/Library/main.jsp");
    }
%>
<div class="welcome">
    <img src="${pageContext.request.contextPath}/image/welcome.jpg" width="1920px" height="945px">
</div>

<div class="Englishword">
      <span>
          Books are the stepping stones <br>to human progress. -Gorky
      </span>
</div>
<div class="loginform">
    <div class="col-md-4 column">
        <span id="labellogin">system log in</span><br>
        <div class="form-group">
            <input type="text" class="form-control" id="usernameinput" name="username" placeholder="uid"/>
        </div>
        <div class="form-group">
            <input type="password" class="form-control" id="passwordinput" name="password" placeholder="password"/>
        </div>
        <button id="loginbutton" class="btn btn-primary" onclick="logincheck()">log in</button>
        <span class="errorsubmit" id="checkinfo"></span>
    </div>
</div>
</body>
</html>
