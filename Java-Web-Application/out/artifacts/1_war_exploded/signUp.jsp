
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="jspClasses.UserInfo" %>
<%@ page import="jspClasses.DatabaseHandler" %>
<%@ page import="java.sql.SQLException" %>
<html>
<head>
    <title>SignIp</title>
    <link rel="stylesheet" type ='text/css' href='sign/styleSignUp.css'>
    <link rel="stylesheet" type ='text/css' href='vendors/css/grid.css'>
    <link rel="stylesheet" type ='text/css' href='vendors/css/ioniconsmin.css'>
    <link rel="stylesheet" type ='text/css' href='vendors/css/normalize.css'>
    <link href="https://fonts.googleapis.com/css?family=Indie+Flower" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Catamaran|Mina" rel="stylesheet">
</head>
<body>

<header>
    <nav class="main-row">
        <div class='row'>
            <ul class='main-nav'>
                <li><i class='ion-person-add small-icons'></i><a href='signIn.jsp'>Регистрация</a></li>
                <li><i class='ion-social-windows small-icons'></i><a href='index.jsp'>Главная</a></li>
            </ul>
        </div>
    </nav>
</header>

    <div class="conteiner">
        <form >
            <p class="main-text">Войдите в аккаунт</p>

            <div class="note">
                <i class="ion-android-person ic1"></i>
          <input type="text" name="username" placeholder="Введите логин:" required>
            </div>
          <br>
            <div class="note">
                <i class="ion-ios-unlocked ic2"></i>
          <input type="password" name="password" placeholder="Введите пароль:" required>
            </div>
            <br>


         <input class="click" type="submit" name="submit" value="Войти"  >

        </form>
    </div>

</body>
</html>

<%
    response.setCharacterEncoding("UTF-8");
    String name = request.getParameter("username");
    String pass = request.getParameter("password");

    UserInfo user = new UserInfo();
    boolean bool = user.compare(name, pass);
    if(bool){
        session.setAttribute("user", name);
        response.sendRedirect("index.jsp");

    }


%>
<!--
    <script type="text/javascript">



    </script>

<script type="text/javascript">
    function okey() {
        alert("ВЫ УСПЕШНО АВТОРИЗОВАЛИСЬ! :)")
    }
    function mistake() {
        alert("постарайтесь корректно вводить данные в форму :)")
    }

</script>


