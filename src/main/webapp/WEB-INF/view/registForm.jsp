<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: kwak
  Date: 2017. 10. 11.
  Time: PM 5:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="<c:url value='/common/js/common.js'/>"></script>
    <script>
        function doReg() {
            alert($('input[name=sex]:checked').val());
            alert($('form').serialize());
            $('#form').submit();

        }
    </script>
</head>
<body>
    <div style="border: 1px solid;width: 100%;height: 50px;text-align: right; ">${sserver}</div>
        <form id = "form" name="form" method="post" action="/study/doReg.html">

            <label>Name
            </label>
            <input type="text" name="name" id="name">

            <label>Email
            </label>
            <input type="text" name="Email" id="Email">

            <label>Password
            </label>
            <input type="text" name="Password" id="Password">

            <label>성별
            </label>
            <span>
                <input type="radio" name="sex" id="man" value="M"/><label for="man">남</label>
                <input type="radio" name="sex" id="woman" value="W"/><label for="woman">여</label>
            </span>

            <label>취미</label>
            <input type="checkbox" id="hobby1" value="1"/><label for="hobby1">독서</label>
            <input type="checkbox" id="hobby2" value="1"/><label for="hobby2">운동</label>

            <input type="button" value="등록" onclick="javascript:doReg();">
        </form>
</body>
</html>
