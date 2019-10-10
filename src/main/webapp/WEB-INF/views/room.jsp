<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko"></html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>쥐집</title>
    <link rel="stylesheet" href = "./resources/css/room.css">
    <link href="https://fonts.googleapis.com/css?family=Mansalva&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="./resources/js/snow2.js"></script>
    <script src="./resources/js/room.js"></script>
    
    
    
        
        <script>
            $(document).ready(function() {
                snowinit();
            });
            $(document).ready(function() {
                snowinit2();
            });

        
        </script>
</head>
<body>

    <div class = "wall">
    	
    	<input type = "file" class = "filebutton" id = "inputfile" onchange = "handleImageView(this.files)">
    	<img src="./resources/img/standingmouse.png" class = "standingmouse">
    	<canvas id="masterpiece" class="mp" height="200" width="200"><img src="myimage" alt="완성작"></canvas>
    	<div id = "parallelogram2"></div>  
        <div id = "parallelogram"></div>

        <div class = "front">
            <div onclick="openNav()" class = "triangle-down">
                <div class="dot"></div>
                <div class="dot2"></div>
                <div class="dot"></div>
                <div class="dot2"></div>
            </div>
            <div onclick="openNav()" class = "triangle-up">
                <div class="dot"></div>
                <div class="dot2"></div>
                <div class="dot"></div>
                <div class="dot2"></div>
            </div>
            
                
                <div class = "frame" style="opacity: 0;"></div>
                <div class = "frame">
                    
                    <div class = "outside">
                      
                        <canvas id="canvas2">
                                
                        </canvas>
                    </div>
                </div>
                <div class = "frame">
                    <div class = "outside"><canvas id="canvas3"></canvas></div>
                </div>

                <img src = "./resources/img/sleepingmouse.png" alt = "sleepingmouse" class = "mouse">

        </div>
        
    </div>

    <!DOCTYPE html>
    <html>
    <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    body {
      font-family: 'Lato', sans-serif;
    }

    .overlay {
    height: 40%;
    width: 0;
    position: fixed;
    z-index: 2;
    top: 16%;
    left: 30%;
    opacity: 0.5;
    background-color: rgb(0,0,0);
    background-color: rgb(199, 219, 128);
    overflow-x: hidden;
    transition: 0.5s;
  }
  
  .overlay-content {
    position: relative;
    top: 25%;
    width: 20ch;
    text-align: center;
    margin-top: 30px;
    margin: auto;
    
  }
  
  .overlay a {
    padding: 8px;
    text-decoration: none;
    font-size: 2rem;
    margin: auto;
    color: #818181;
    display: block;
    transition: 0.3s;
  }
  
  .overlay a:hover, .overlay a:focus {
    color: #f1f1f1;
  }
  
  .overlay .closebtn {
    position: absolute;
    top: 3%;
    right: 4%;
    font-size: 3rem;
  }
  
  

    </style>
    </head>
    <body>
    
    <div id="myNav" class="overlay">
      <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
      <div class="overlay-content">
        <a href="#">그리기</a>
        <a href="#">로그아웃</a>
        
      </div>
    </div>
    
    
    
    
    <script>
    function openNav() {
      document.getElementById("myNav").style.width = "40%";
    }
    
    function closeNav() {
      document.getElementById("myNav").style.width = "0%";
    }
    </script>
         
    </body>
    </html>


    

    <div class = "floor">


    </div>
</body>
</html>