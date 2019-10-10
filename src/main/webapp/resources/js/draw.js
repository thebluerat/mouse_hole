
function drawinit(){
var points=new Array(),
    colorInput = document.getElementById("color");

		function start(e){
		  var mouseX = e.pageX - canvas.offsetLeft - 25;
		  var mouseY = e.pageY - canvas.offsetTop - 25;
		  var dot = 1;
		  $('#dot').bind('change', function(){dot = $('#dot').val();});
		  paint = true;
		  ctx.beginPath();
		  ctx.moveTo(mouseX,mouseY);
		  points[points.length]=[mouseX,mouseY];
		};

		function draw(e){
			ctx.lineWidth = dot.value;
			cnvs.onmousedown = function(e){
                if(e.button === 0){
                    isDraw = true;
                    draw(e);
                }
            }

		  if(paint){
			 var mouseX = e.pageX - canvas.offsetLeft - 25;
			 var mouseY = e.pageY - canvas.offsetTop - 25; 
			 ctx.lineTo(mouseX,mouseY);
			 
			 ctx.strokeStyle = colorInput.value;
			 ctx.lineJoin = join.value;
			 ctx.lineCap = cap.value;
			 ctx.stroke();	
			 
			 ctx.fillRect(e.offsetX, e.offsetY, dot, dot);
			 
			 points[points.length]=[mouseX,mouseY];
		  }
		}
		function stop(e){
		  paint=false;
		 var s=JSON.stringify(points);
			localStorage['lines']=s;
		}  
		
		function clearCanvas(canvas,ctx) {
	        event.preventDefault();
	        ctx.clearRect(0, 0, canvas.width, canvas.height);
	    }
		
		//이미지 다른 캔버스에 출력하려고 했었음
//		function image(){
//			var aimg = new Image();
//			aimg.addEventListener('load', function(){
//				var imaged = document.getElementById('masterpiece').getContext("2d");
//				imaged.drawImage(aimg, 0, 0, 200, 200);
//			}, false);
//			aimg.src="myimage";
//		}
		
		document.getElementById('clear').addEventListener('click', function() {
	        ctx.clearRect(0, 0, canvas.width, canvas.height);
	      }, false);
		
		document.getElementById('erase').addEventListener('click', function() {
			 ctx.globalCompositeOperation = "destination-out";
             ctx.arc(x2, y2,10/2,0,Math.PI*2,false);
             ctx.fillStyle = color;
             ctx.fill();
	      }, false);
		
		document.getElementById('color').addEventListener('click', function() {
			ctx.globalCompositeOperation = "source-over";
	      }, false);
		
		download_img = function(el) {
			var image = canvas.toDataURL("image/png, 1");
			el.href = image;
		}

		// 작업 이미지 로컬 다운로드(.PNG) 
//		function downloadCanvas(link, canvasId, filename) { 
//		link.href = document.getElementById(canvasId).toDataURL();
//		 link.download = filename; 
//		}

		
		var paint=false;
		var canvas = document.getElementById('cnvs');
		var ctx=canvas.getContext("2d");
	
		canvas.addEventListener('mousedown',start);
		canvas.addEventListener('mousemove',draw);
		canvas.addEventListener('mouseup',stop);
}
	
		