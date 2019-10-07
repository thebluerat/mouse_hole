
function drawinit(){
var points=new Array(),
    colorInput = document.getElementById("color");

		function start(e){
		  var mouseX = e.pageX - canvas.offsetLeft;
		  var mouseY = e.pageY - canvas.offsetTop;
		  var dot = 1;
		  $('#dot').bind('change', function(){dot = $('#dot').val();});
		  paint = true;
		  ctx.beginPath();
		  ctx.moveTo(mouseX,mouseY);
		  points[points.length]=[mouseX,mouseY];
		};

		function draw(e){

		  if(paint){
			 var mouseX = e.pageX - canvas.offsetLeft;
			 var mouseY = e.pageY - canvas.offsetTop; 
			 ctx.lineTo(mouseX,mouseY);
			 ctx.stroke();	
			 ctx.strokeStyle = colorInput.value;
			 ctx.lineJoin = join.value;
			 ctx.lineCap = cap.value;
			 
			 
			 ctx.lineWidth = dot.value;
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
		
		document.getElementById('clear').addEventListener('click', function() {
	        ctx.clearRect(0, 0, canvas.width, canvas.height);
	      }, false);
		
		var paint=false;
		var canvas = document.getElementById('cnvs');
		var ctx=canvas.getContext("2d");
		canvas.addEventListener('mousedown',start);
		canvas.addEventListener('mousemove',draw);
		canvas.addEventListener('mouseup',stop);
		
		

}
	
		