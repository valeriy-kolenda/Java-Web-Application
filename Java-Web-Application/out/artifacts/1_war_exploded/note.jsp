<%@ page import="jspClasses.Note" %>
<%@ page import="java.util.List" %>
<%@ page import="jspClasses.DatabaseHandler" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Note</title>
    <link rel="stylesheet" type ='text/css' href='note/note.css'>
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
        <table border="1", align="center" width="800px"  class="tab">


            <tr>
                <td>№</td>
                <td>Вес №1</td>
                <td>Вес №2</td>
                <td>Вес №3</td>
                <td>Вес №4</td>
            </tr>
           <%
                List<Note> notesList = DatabaseHandler.getInstance().getNotes();
                int counter = 1;
                for (Note note : notesList) {
                    out.println(
                       "<tr>" +
                               "<td>" + counter +"</td>" +
                               "<td>" + note.getFirstWeight() + "</td>" +
                               "<td>" + note.getSecondWeight() + "</td>" +
                               "<td>" + note.getThirdWeight() + "</td>" +
                               "<td>" + note.getFourthWeight() + "</td>" +
                       "</tr>"
                    );
                    counter++;
               }
           %>
        </table>
</body>
</html>
