	function handleImageView(files){		
	 		var file = files[0];
	 
	 		if(!file.type.match(/image.*/)){
	 			alert("not image file!");
	 		}			
	 		var reader = new FileReader();
	 		
			reader.onload = function(e){
	 			
	 			var img = new Image();
	 			img.onload = function(){
	 				var ctx = document.getElementById("masterpiece").getContext("2d");
	 				ctx.drawImage(img,0,0,200,200);
	 			}
	 			img.src = e.target.result;
	 		}
	 		
	 		reader.readAsDataURL(file);
	 	}
	
	function Logout(){
		Kakao.Auth.logout();
		location.href = "logout.php"
	}