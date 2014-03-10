<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8" isELIgnored="false" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<base href=" <%=basePath%>">
<html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title><spring:message code="label.sign.in"/></title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
</head>
<body>

<div style="margin-top:100px;margin-bottom:200px;max-width: 400px" class="container">

    <form role="form" action="account/login.do" method="post">
        <input type="hidden" name="token" value="/common/getFormToken.do">
        <h2 class="form-signin-heading"><spring:message code="label.please.sign.in"/></h2>
        <c:if test="${not empty errorMessage}">
        <div class="alert alert-danger  fade in">
            <button id='alert1' type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            ${errorMessage}
        </div>
        </c:if>
        <div class="form-group">
            <%--<label class="control-label" for="username"><spring:message code="label.username"/></label>--%>
            <input type="text" class="form-control" id="username" placeholder="<spring:message code="label.username"/>" name="username" required>
        </div>
        <div class="form-group">
            <%--<label class="control-label" for="password"><spring:message code="label.password"/></label>--%>
            <input type="password" class="form-control" id="password" placeholder="<spring:message code="label.password"/>" name="password" required>
        </div>
<%--        <div class="form-group">
            <input type="password" class="form-group" placeholder="" name="verifyCode" required>
            <img id="verifyCodeImage" onclick="reloadVerifyCode()" src="common/getVerifyCodeImage.do"/><br/>
        </div>--%>
        <div class="checkbox">
            <label>
                <input type="checkbox" name="rememberMe" value="1"> <spring:message code="label.remember.username"/>
            </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit"><spring:message code="label.sign.in"/></button>
    </form>


</div>
<!-- /container -->
<script type="text/javascript">
    var errorMessage =  "${errorMessage}";
    if(errorMessage == undefined || errorMessage == null || errorMessage ==""){
        $("#alert1").alert('close');
    }

    function Test()
    {
        $("#alert1").alert('close');
    }
</script>
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery-1.10.2.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>