<%@ page import="jspClasses.Task" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Task</title>
    <link rel="stylesheet" type ='text/css' href='task/task.css'>
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
                <li><i class='ion-social-windows small-icons'></i><a href='index.jsp'>Главная</a></li>
            </ul>
        </div>
    </nav>

</header>

<div class="conteiner">

    <div class='row'>
    <div class='par'>Скорость доставки груза</div>
    <div class='par'>Хрупкость груза</div>
    <div class='par'>Объем <br>груза</div>
    <div class='par'>Уровень опасности груза</div>
    </div>
    <form method="post" action="solution.jsp"  >

        <br>
            <label for="1" class="label">Эксперт 1</label>
            <input id="1" type="number" name="1.1" required min="0" max="10" value="0">
            <input type="number" name="1.2" required min="0" max="10" value="0" >
            <input type="number" name="1.3" required min="0" max="10" value="0">
            <input type="number" name="1.4" required min="0" max="10" value="0">

        <br>
        <label for="2" class="label">Эксперт 2</label>
            <input id="2" type="number" name="2.1" required min="0" max="10" value="0">
            <input type="number" name="2.2" required min="0" max="10" value="0">
            <input type="number" name="2.3" required min="0" max="10" value="0">
            <input type="number" name="2.4" required min="0" max="10" value="0">

        <br>
        <label for="3" class="label">Эксперт 3</label>
            <input id="3" type="number" name="3.1" required min="0" max="10" value="0">
            <input type="number" name="3.2" required min="0" max="10" value="0">
            <input type="number" name="3.3" required min="0" max="10" value="0">
            <input type="number" name="3.4" required min="0" max="10" value="0">
        <br>
        <label for="4" class="label">Эксперт 4</label>
            <input id="4" type="number" name="4.1" required min="0" max="10" value="0">
            <input type="number" name="4.2" required min="0" max="10" value="0">
            <input type="number" name="4.3" required min="0" max="10" value="0">
            <input type="number" name="4.4" required min="0" max="10" value="0">
        <br>


        <br>

            <input class="click" type="submit" name="submit" value="Обработать значения" />
            <input class="click2" type="reset" name="rest" value="Сброс значений" />


    </form>

</div>

</body>
</html>

