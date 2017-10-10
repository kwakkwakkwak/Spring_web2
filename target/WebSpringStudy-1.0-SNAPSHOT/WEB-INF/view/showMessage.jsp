<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
    <meta charset="utf-8">
    <title>Welcome</title>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="<c:url value='/common/js/common.js'/>"></script>
</head>
</bod>
<script>
    util.initSelectBox('type', 'maseter', '','Y',"/common/getCodeList.html");
</script>
<h2>${message}</h2>
<h1>${combo}</h1>
<select id="type" style="width:140px;"></select>
</body>
</html>
