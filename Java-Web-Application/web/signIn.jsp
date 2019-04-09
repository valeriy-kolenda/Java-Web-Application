
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="jspClasses.DatabaseHandler" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="com.sun.org.apache.xerces.internal.impl.io.UTF8Reader" %>

<html>
<head>
    <title>Registration</title>
    <link rel="stylesheet" type ='text/css' href='registration/registration.css'>
    <link rel="stylesheet" type ='text/css' href='vendors/css/grid.css'>
    <link rel="stylesheet" type ='text/css' href='vendors/css/ioniconsmin.css'>
    <link rel="stylesheet" type ='text/css' href='vendors/css/normalize.css'>
    <link href="https://fonts.googleapis.com/css?family=Indie+Flower" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Catamaran|Mina" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
</head>
<body>

<header>
    <nav class="main-row">
        <div class='row'>
            <ul class='main-nav'>
               <li><i class='ion-power small-icons'></i><a href='signUp.jsp'>Вход</a></li>
                <li><i class='ion-social-windows small-icons'></i><a href='index.jsp'>Главная</a></li>

            </ul>
        </div>
    </nav>
</header>

<div class="conteiner">
    <%
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("username");
        String pass = request.getParameter("password");
        String passConfirm = request.getParameter("passwordConfirmation");

    %>
    <form method="post"   >

        <p class="main-text">Регистрация</p>
            <div>
             <i class="ion-android-person ic"></i>
            <input type="text" name="username" required placeholder="Введите логин:">

            </div>

            <div>
            <i class="ion-ios-unlocked ic "></i>
            <input type="password" name="password" required placeholder="Введите пароль:">
        <br>
            </div>
            <i class="ion-ios-unlocked lock2 ic"></i>
            <input type="password" name="passwordConfirmation" required placeholder="Подтвердите пароль:">
        <br>

             <div>
        <input class="click" type="submit" name="submit" value="Зарегистрироваться" />
             </div>

    </form>

</div>

</body>
</html>

<script type="text/javascript">
    function okey() {

        alert("ВЫ УСПЕШНО ЗАРЕГИСТРИРОВАЛИСЬ! :)")
    }

    function mistake() {
        alert("постарайтесь корректно вводить данные в форму :)")
    }

</script>



<%
     boolean bool = true;
    try {
         bool = DatabaseHandler.getInstance().signUp(name, pass, passConfirm);

    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
<script type="text/javascript">
    if(<%=bool%>){
        okey();
        setTimeout(function(){
            location.href = "index.jsp";
        }, 500);
    }
    else
        mistake()
</script>
