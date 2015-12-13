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
  <script type="text/javascript" src="https://www.google.com/jsapi"></script>
  <script type="text/javascript">
    google.load('visualization', '1', {packages: ['corechart', 'bar']});
    google.setOnLoadCallback(drawBasic);

    function drawBasic() {

      var data = new google.visualization.DataTable();
      data.addColumn('string', 'Time of Day');
      data.addColumn('number', 'Количество ошибок');

      data.addRows([
        ["80 км/ч", ${Network_1}],
        ["извилистая дорога", ${Network_2}],
        ["обгон запрещен", ${Network_3}],
        ["60 км/ч", ${Network_4}],
        ["светофорное регулирование", ${Network_5}],
        ["движение направо", ${Network_6}]
      ]);

      var options = {
        width: 900,
        height: 300,
        hAxis: {
          viewWindowMode :  'pretty',
        },
        vAxis: {
          title: 'Количество ошибок',
          maxValue: 45,
          minValue: 10,
        }
      };

      var chart = new google.visualization.ColumnChart(
              document.getElementById('u85'));

      chart.draw(data, options);
    }

  </script>
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
      <div class="clearfix grpelem" id="u82-13"><!-- content -->
        <p>Архитектура сети: ${Network_type}</p>
        <p>&nbsp;</p>
        <p>Общее количество изображений: 12569</p>
        <p>&nbsp;</p>
        <p>Верно классифицировано: ${Network_true}</p>
        <p>&nbsp;</p>
        <p>Точность: ${Network_toch}</p>
      </div>
    </div>
    <div class="clearfix colelem" id="u84-4"><!-- content -->
      <p>Основные ошибки</p>
    </div>
    <div class="colelem" id="u85"><!-- simple frame --></div>
    <div class="clearfix colelem" id="pu88"><!-- group -->
      <div class="clip_frame grpelem" id="u88"><!-- image -->
        <img class="block" id="u88_img" src="${pageContext.request.contextPath}/images/80.jpg" alt="" width="78" height="78"/>
      </div>
      <div class="clip_frame grpelem" id="u94"><!-- image -->
        <img class="block" id="u94_img" src="${pageContext.request.contextPath}/images/%d0%b8%d0%b7%d0%b2.jpg" alt="" width="68" height="58"/>
      </div>
      <div class="clip_frame grpelem" id="u100"><!-- image -->
        <img class="block" id="u100_img" src="${pageContext.request.contextPath}/images/obgon.jpg" alt="" width="56" height="56"/>
      </div>
      <div class="clip_frame grpelem" id="u106"><!-- image -->
        <img class="block" id="u106_img" src="${pageContext.request.contextPath}/images/60.png" alt="" width="77" height="77"/>
      </div>
      <div class="clip_frame grpelem" id="u112"><!-- image -->
        <img class="block" id="u112_img" src="${pageContext.request.contextPath}/images/svet.jpg" alt="" width="68" height="61"/>
      </div>
      <div class="clip_frame grpelem" id="u118"><!-- image -->
        <img class="block" id="u118_img" src="${pageContext.request.contextPath}/images/pravo.png" alt="" width="59" height="59"/>
      </div>
    </div>
    <div class="verticalspacer"></div>
  </div>
</div>

</body>
</html>
