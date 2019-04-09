
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>SignUp</title>
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
                <li><i class='ion-ios-list-outline small-icons'></i><a href='#'>Sign Up</a></li>
                <li><i class='ion-ios-chatboxes-outline small-icons'></i><a href='#'>Main</a></li>
            </ul>
        </div>
    </nav>
</header>
<p class="main-text">Login Form</p>
<div class="conteiner">
    <form>
        <i class="ion-android-person"></i>
        <div class="note">
            <input type="text" name="username" placeholder="Enter your Login:">
        </div>
        <br>
        <div class="note">
            <input type="password" name="password" placeholder="Enter your Password:">
        </div>
        <br>
        <i class="ion-ios-unlocked"></i>

        <input class="click" type="submit" name="submit" value="Send" >

    </form>
</div>

</body>
</html>
