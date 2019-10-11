<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko"></html>
<html>
    <head>
        <meta charset = "utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>그림 게시판</title>
        <link rel="stylesheet" href = "./resources/css/main.css">
        <link href="https://fonts.googleapis.com/css?family=Mansalva&display=swap" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="./resources/js/snow.js"></script>

        <script>
            $(document).ready(function() {
                snowinit();
            });
        </script>
        <style>

        </style>
    </head>
    
    <body>
        <div class = "subject"></div>
        <canvas id="canvas"></canvas>
            <div class = "login">
                <img src = "./resources/img/bluemouse2.png" alt = "mouseimage" class = "bluemouse">
                <button type = "button" class = "loginbutton" onclick = "location.href = 'login'">LOGIN</button>
            </div>
        
        <div class = "footer">Come In</div>
        
    </body>
</html>