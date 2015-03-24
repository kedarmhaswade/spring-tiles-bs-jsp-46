<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<!-- a very basic tiles template -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><tiles:getAsString name="title"/></title>
</head>
<body>
    <tiles:insertAttribute name="body"/>
    <br>
    <br>
    <center>
        <tiles:insertAttribute name="footer"/>
    </center>
</body>
</html>