<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko"></html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src=http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js></script>
    <script type="text/javascript" src="./resources/js/draw.js"></script> 
    <link rel="stylesheet" href = "./resources/css/draw.css">
    
        
        <title>Let's Draw</title>
        <script>
            $(document).ready(function(){
            	drawinit();
            });
        </script>
        
    </head>
    
    <body>
        <div class = "wholeframe">
            <canvas id = "cnvs" class = "mousecanvas" oncontextmenu="return false" width ="800" height = "800">마음의 창이 더러워서 캔버스가 보이지 않네요..</canvas>
            
            <div>
            		두께
                <select id = "dot" class = "thickness">
                    <option value = "1">1px</option>
                    <option value = "2">2px</option>
                    <option value = "3">3px</option>
                    <option value = "4">4px</option>
                    <option value = "5">5px</option>
                    <option value = "6">6px</option>
                    <option value = "7">7px</option>
                    <option value = "8">8px</option>
                    <option value = "9">9px</option>
                    <option value = "10">10px</option>
                    <option value = "11">11px</option>
                    <option value = "12">12px</option>
                    <option value = "13">13px</option>
                    <option value = "14">14px</option>
                    <option value = "15">15px</option>
                    <option value = "16">16px</option>
                    <option value = "17">17px</option>
                    <option value = "18">18px</option>
                    <option value = "19">19px</option>
                    <option value = "20">20px</option>
                    <option value = "21">21px</option>
                    <option value = "30">30px</option>
                    <option value = "40">40px</option>
                    <option value = "50">50px</option>
                    <option value = "70">70px</option>
                    <option value = "100">100px</option>
                </select>
                &nbsp;
                
                	선 끝
                <select id = "cap">
                    <option value = "round">둥글게</option>
                    <option value = "square">각지게</option>
                    <option value = "butt">각지고 짧게</option>
                </select>
                &nbsp;
                
                	꺾기
                <select id = "join">
                	<option value = "round">둥글게</option>
                    <option value = "bevel">무디게</option>
                    <option value = "miter">뾰족하게</option>
                </select>
                &nbsp;
                
                <div id="erasebutton">
			      <input type="button" id="erase" value="지우개">
			    </div>  
                &nbsp;
                 
				<input type="color" id="color" value="Color">
				&nbsp;
				 
				<div id="buttons">
			      <input type="button" id="clear" value="전체지우기">
			    </div>
			    
			    <a id="downloadlink" download="myimage.jpg" href="" onclick="download_img(this);">Download as image</a>
			    
			    
			<!-- <ul class="contextmenu">
			  <li><a href="#">Simple link</a></li>
			  <li><a href="#">Link to somewhere</a></li>
			  <li><a href="#">Another link</a></li>
			  <li><a href="#">Link to nowhere</a></li>
			  <li><a href="#">Random link</a></li>
			</ul> -->
        </div>
    </div>
        
</body>
</html>