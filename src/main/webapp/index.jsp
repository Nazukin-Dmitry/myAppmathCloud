<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 12.12.2015
  Time: 19:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="html" lang="ru-RU">
<head>

  <meta http-equiv="Content-type" content="text/html;charset=UTF-8"/>
  <title>Распознавание дорожных знаков</title>
  <!-- CSS -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/site_global.css"/>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css" id="pagesheet"/>
  <!-- Other scripts -->

</head>
<body>

<div class="clearfix" id="page"><!-- column -->
  <div class="position_content" id="page_position_content">
    <div class="browser_width colelem" id="u75-6-bw">
      <div class="clearfix" id="u75-6"><!-- content -->
        <p>Сервис просмотра результатов обучения нейронной сети</p>
        <p>для распознавания дорожных знаков</p>
      </div>
    </div>
    <div class="clearfix colelem" id="pu86"><!-- group -->
      <div class="grpelem" id="u86"><!-- custom html -->
        <form name="result1" method="get" action="${pageContext.request.contextPath}/result" id="form1">
          <input type=hidden name="type" value="1">
          <input type="submit" name="submit" value="1 сеть">
        </form>
        <form name="result2" method="get" action="${pageContext.request.contextPath}/result" id="form2">
          <input type=hidden name="type" value="2">
          <input type="submit" name="submit" value="2 сеть">
        </form>
        <form name="result3" method="get" action="${pageContext.request.contextPath}/result" id="form3">
          <input type=hidden name="type" value="3">
          <input type="submit" name="submit" value="3 сеть">
        </form>

      </div>

    </div>

  </div>
</div>

</body>
</html>
