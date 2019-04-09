
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="javax.sql.PooledConnection" %>
<%@ page import="com.mysql.cj.jdbc.MysqlConnectionPoolDataSource" %>
<%@ page import="java.sql.*" %>
<%@ page import="jspClasses.UserInfo" %>

<html>
  <head>
    <title>HomePage</title>
    <link rel="stylesheet" type ='text/css' href='vendors/css/normalize.css'>
    <link rel="stylesheet" type ='text/css' href='vendors/css/grid.css'>
    <link rel="stylesheet" type ='text/css' href='vendors/css/ioniconsmin.css'>
    <link rel="stylesheet" type ='text/css' href='resources/css/style.css'>
      <link href="https://fonts.googleapis.com/css?family=Montserrat:500i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Catamaran|Mina" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Indie+Flower" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
  </head>
  <body>

  <%
      String name = session.getAttribute("user") != null ? session.getAttribute("user").toString() : null;
      String message = name != null ? "Здравствуйте, " + name : "Пожалуйста, авторизуйтесь ";
  %>
  <header>

    <nav class="main-row">
      <div class='row '>
        <ul class='main-nav'>

          <%=message%>

          <li><i class='ion-power small-icons'></i><a href='signUp.jsp'>Вход</a></li>
          <li><i class='ion-person-add small-icons'></i><a href='signIn.jsp'>Регистрация</a></li>

        </ul>
      </div>
    </nav>


    <div class ='main-text' >
      <h2>Логистическая Компания</h2>
      <div class='btn'>

        <%if(name != null) {%>
        <a href='task.jsp' class="task-btn" id="elem">Решить задачу!</a>

        <% }%>
      </div>
    </div>


  </header>

  </body>
</html>
