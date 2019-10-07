<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String imgUrl = request.getParameter("imgUrl");
	
	System.out.println(imgUrl);
	
	

%>
<!DOCTYPE html>
<html lang="ko"></html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src=http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js></script>
    <script type="text/javascript" src="./resources/js/draw.js"></script> 
        
        <title>Let's Draw</title>
        <script>
            $(document).ready(function(){
            	drawinit();
            });
        </script>
        
    </head>
    
    <body>
        <div>
            <canvas id = "cnvs" width = "800" height = "800" style = "border: 1px solid #56e5ff;"></canvas>
            
            <div>
            		두께
                <select id = "dot">
                    <option value = "1">1px</option>
                    <option value = "2">2px</option>
                    <option value = "5">5px</option>
                    <option value = "10">10px</option>
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
                    <option value = "bevel">무디게</option>
                    <option value = "round">둥글게</option>
                    <option value = "miter">뾰족하게</option>
                </select>
                &nbsp;
                
				<input type="color" id="color" value="Color">
				
				<div id="buttons">
			      <input type="button" id="clear" value="전체지우기">
			    </div>  
        </div>
    </div>
        
</body>
</html>