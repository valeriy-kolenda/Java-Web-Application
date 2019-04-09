<%@ page import="jspClasses.Task" %>
<%@ page import="jspClasses.Note" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Solution</title>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
    <link rel="stylesheet" type ='text/css' href='solution/solution.css'>
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
                <li><i class='ion-social-windows small-icons'></i><a href='index.jsp'>Главная</a></li>
            </ul>
        </div>
    </nav>
</header>
<%
    request.setCharacterEncoding("UTF-8");
    String firstOne = request.getParameter("1.1");
    String firstTwo = request.getParameter("1.2");
    String firstThree = request.getParameter("1.3");
    String firstFour = request.getParameter("1.4");

    String secondOne = request.getParameter("2.1");
    String secondTwo = request.getParameter("2.2");
    String secondThree = request.getParameter("2.3");
    String secondFour = request.getParameter("2.4");

    String thirdOne = request.getParameter("3.1");
    String thirdTwo = request.getParameter("3.2");
    String thirdThree = request.getParameter("3.3");
    String thirdFour = request.getParameter("3.4");

    String fourthOne = request.getParameter("4.1");
    String fourthTwo = request.getParameter("4.2");
    String fourthThree = request.getParameter("4.3");
    String fourthFour = request.getParameter("4.4");

    double [][] first = new double[4][4];

    first[0][0] = Double.parseDouble(firstOne);
    first[0][1] = Double.parseDouble(firstTwo);
    first[0][2] = Double.parseDouble(firstThree);
    first[0][3] = Double.parseDouble(firstFour);

    first[1][0] = Double.parseDouble(secondOne);
    first[1][1] = Double.parseDouble(secondTwo);
    first[1][2] = Double.parseDouble(secondThree);
    first[1][3] = Double.parseDouble(secondFour);

    first[2][0] = Double.parseDouble(thirdOne);
    first[2][1] = Double.parseDouble(thirdTwo);
    first[2][2] = Double.parseDouble(thirdThree);
    first[2][3] = Double.parseDouble(thirdFour);

    first[3][0] = Double.parseDouble(fourthOne);
    first[3][1] = Double.parseDouble(fourthTwo);
    first[3][2] = Double.parseDouble(fourthThree);
    first[3][3] = Double.parseDouble(fourthFour);

    Task obj = new Task();
    double [] result = new double[4];
    result = obj.solution(first);

%>

<script type="text/javascript">

    function book() {
        if(<%= result[0] >  result[1] && result[0] >  result[2] && result[0] >  result[3] %>)
             alert("Вам рекомендуется использовать воздушный транспорт :)")
        if (<%= result[1] >  result[0] && result[1] >  result[2] && result[1] >  result[3] %>)
            alert("Вам рекомендуется использовать автомобильный транспорт :)")
        if (<%= result[2] >  result[0] && result[2] >  result[1] && result[2] >  result[3] %>)
            alert("Вам рекомендуется использовать водный транспорт :)")
        if (<%= result[3] >  result[0] && result[3] >  result[1] && result[3] >  result[2] %>)
            alert("Вам рекомендуется использовать железнодорожный транспорт :)")

    }

</script>
<%
String name = session.getAttribute("user") != null ? session.getAttribute("user").toString() : null;
%>
<section class='section-tecnology' id="tecnology">

    <div class='row'>
        <h3>Логистическая компания </h3>
    </div>
    <div clas='row'>
        <div class='tec-box'>
            <p>
                Учитывая заявленные значения, получаем следующий результат:
                <br>
                <%=result[0] %>
                <br>
                <%=result[1] %>
                <br>
                <%=result[2] %>
                <br>
                <%=result[3] %>
            </p>
            <%  Note object = new Note();
                object.addNote(result[0],result[1],result[2],result[3]);
            %>
            <input class="click" type="button" name="button" value="Справка" onclick="book()"/>
            <%if(name.equals("admin")) {%>
            <input class="click" type="button" name="button" value="Блокнот" onclick="foo()"  >

            <% }%>
        </div>
    </div>
</section>


</body>
</html>

<script>
    function foo() {
    setTimeout(function(){
        location.href = "note.jsp";
    }, 100);
    }
</script>

