<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Vector" %>
<%@ page import="entities.Order" %>
<%@ page import="action.Action" %>
<%@ page import="entities.Dish" %>
<%@ page import="actions.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: Serug
  Date: 21.05.2017
  Time: 20:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="properties.text" />
<!DOCTYPE html>
<html lang="${language}">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="http://www.bootstrap-3.ru/assets/ico/favicon.ico">

    <title>Web</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/template.css" rel="stylesheet">
    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]>
    <script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style></style>
    <style type="text/css"></style>
</head>

<body>
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.jsp"><fmt:message key="index.restaurant" /></a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="index.jsp"><fmt:message key="index.home" /></a></li>
                <li class="active"><a href="TestServlet?action=SHOW_MENU"><fmt:message key="index.menu" /></a></li>
                <li><a href="TestServlet?action=MAKE_ORDER"><fmt:message key="index.make_order" /></a></li>
                <li><a href="TestServlet?action=SHOW_ACCEPTED_ORDERS"><fmt:message key="index.accepted_orders" /></a></li>
                <li><a href="TestServlet?action=SHOW_ORDERS_BY_CLIENT&client_id=1"><fmt:message key="index.order" /></a></li>
                <li><a href="TestServlet?action=LOG_OUT"><fmt:message key="index.log_out" /></a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</div>

<div class="container">

    <div class="starter-template">

        <div class="container">
            <h2><fmt:message key="edit_menu.change_dish" /></h2>
            <%
                String name = (String) session.getAttribute(EditMenuAction.DISH_NAME_PARAM);
                String cost = String.valueOf(session.getAttribute(EditMenuAction.DISH_COST_PARAM));
            %>
            <form action="TestServlet">
                <input type="hidden" name="action" value="UPDATE_MENU_ITEM"/>
                <p><fmt:message key="menu.name" />:
                    <input name="<%= EditMenuAction.DISH_NAME_PARAM%>" value="<%=name%>"/>
                <p><fmt:message key="menu.cost" />:
                    <input name="<%= EditMenuAction.DISH_COST_PARAM%>" value="<%=cost%>"/>
                <P>
                  <input type="submit" value="<fmt:message key="edit_menu.save" />">
            </form>
        </div>
    </div>
</div>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</body>
</html>




