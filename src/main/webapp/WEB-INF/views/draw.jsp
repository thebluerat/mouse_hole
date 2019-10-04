<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko"></html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src=http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js></script>
    <script>
            $(document).ready(function(){
                var cnvs = document.getElementById('cnvs');
                if(cnvs.getContext){
                    var ctx = cnvs.getContext('2d');
                    var isDraw = false;
                    
                    var dot = 1;
                    var color = 'rgb(0, 0, 0)';
                    
                    $('#dot').bind('change', function(){dot = $('#dot').val();});
                    $('#color').bind('change', function(){color = $('#color').val();});
                    
                    cnvs.onmousemove = function(e){
                        if(isDraw) draw(e);
                    }
                    cnvs.onmousedown = function(e){
                        if(e.button === 0){
                            isDraw = true;
                            draw(e);
                        }
                    }
                    cnvs.onmouseup = function(e){
                        isDraw = false;
                    }
                    
                    function draw(e){
                        ctx.fillStyle = color;
                        ctx.fillRect(e.offsetX, e.offsetY, dot, dot);
                    }
                    
                }else {
                    alert('canvas가 지원되지 않는 브라우저입니다. 구글 크롬을 권장합니다.');
                    return;
                }
                
                var strDataURI = oCanvas.toDataURL();  

var oCanvas = document.getElementById("thecanvas");  
  
Canvas2Image.saveAsPNG(oCanvas);
  
Canvas2Image.saveAsJPEG(oCanvas);
  
  
Canvas2Image.saveAsBMP(oCanvas);
  
  

var oImgPNG = Canvas2Image.saveAsPNG(oCanvas, true);   
  
  
var oImgJPEG = Canvas2Image.saveAsJPEG(oCanvas, true);   
  

var oImgBMP = Canvas2Image.saveAsBMP(oCanvas, true);   



                
                
            });
        </script>
    
    <title>그리기</title>
</head>
<body>

	<div>
            <canvas id = "cnvs" width = "800" height = "800" style = "border: 1px solid #56e5ff;"></canvas>
            
            <div>
                <select id = "dot">
                    <option value = "1">1px</option>
                    <option value = "2">2px</option>
                    <option value = "5">5px</option>
                    <option value = "10">10px</option>
                </select>
                &nbsp;
                
            <select id = "color">
                <option value = "rgb(0, 0, 0)">black</option>
                <option value = "rgb(255, 0, 0)">red</option>
                <option value = "rgb(0, 255, 0)">green</option>
                <option value = "rgb(0, 0, 255)">blue</option>
                <option value = "rgb(255, 255, 0)">yellow</option>
                <option value = "rgb(255, 255, 255)">white</option>
                <option value = "rgb(214, 110, 110)">�쁾�� �뙠�깋</option>
                <option value = "rgb(44, 21, 21)">遺됱� 寃��젙�깋</option>
                <option value = "rgb(250, 194, 146)">�궡援ъ깋</option>
                <option value = "rgb(5, 85, 165)">遺��뱶�윭�슫 �궓�깋</option>
                <option value = "rgb(30, 83, 196)">遺��뱶�읇怨좊룄 吏꾪븳 �궓�깋</option>
                <option value = "rgb(42, 157, 86)">遺��뱶�윭�슫 �끃�깋</option>
                <option value = "rgb(95, 144, 193)">泥�諛붿��깋</option>
                <option value = "rgb(20, 47, 74)">泥�諛붿� 洹몃┝�옄�깋</option>
                <option value = "rgb(193, 163, 0)">梨� �몴吏��깋</option>
                <option value = "rgb(187, 190, 175)">梨� 洹몃┝�옄�깋</option>
                <option value = "rgb(86, 229, 255)">�뀒�몢由ъ깋</option>
                
                <form> 
				  <input type='color' id='myBestColor' value='#0000ff'>
				  <input type="submit">
				</form>
            </select>        
            
        </div>
    </div>

</body>
</html>