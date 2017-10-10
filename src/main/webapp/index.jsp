<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <meta charset="utf-8">
    <title>Welcome</title>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="<c:url value='/common/js/common.js'/> "></script>


</head>
<script>
//    function getMessage() {
//        $.ajax({
//            url : "/study/getMessage.html",
//            method : "POST",
//            dataType : "JSON",
//            data : null,
//            error : function() {alert('않돼')},
//            success : result
//        });
//    }

    function result(data) {
        alert(data.result);
    }
</script>
<body>
<c:url value="/study/showMessage.html" var="messageUrl"/>
1. <a href="${messageUrl}">Click to enter</a>
<br>
2. <input type="button" value="getMessage" onClick="
        javascript:util.requestSync('<c:url value='/study/getMessage.html'/> '
        ,null, 'POST',result)" />
</body>
</html>

