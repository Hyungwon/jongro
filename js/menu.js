	$(document).ready(function(){
		
		//$(".menu_sub").css("display","none");

		$(".menu_sub").hide(); 
	
		if($.cookie("strMenu1").length){
			$("#top_"+$.cookie("strMenu1")).show();

			$("#top_menu_"+$.cookie("strMenu1")).attr("src",($("#top_menu_"+$.cookie("strMenu1")).attr("src")).replace(/_off.png/,"_on.png"));		
		}


		if($.cookie("strMenu2").length){

	//		$("#top_smenu_"+$.cookie("strMenu1")+"_"+$.cookie("strMenu2")).attr("src",($("#top_smenu_"+$.cookie("strMenu1")+"_"+$.cookie("strMenu2")).attr("src")).replace(/_off.png/,"_on.png"));		

	//		$("#mImg_"+$.cookie("strMenu2")).attr("src",($("#mImg_"+$.cookie("strMenu2")).attr("src")).replace(/_off.jpg/,"_on.jpg"));		
		}


		if($.cookie("strMenu3").length){

			$("#sMenuBox_"+$.cookie("strMenu2")).show();
		

			if ($("#msImg_"+$.cookie("strMenu2")+"-"+$.cookie("strMenu3")).length)
			{

			$("#msImg_"+$.cookie("strMenu2")+"-"+$.cookie("strMenu3")).attr("src",($("#msImg_"+$.cookie("strMenu2")+"-"+$.cookie("strMenu3")).attr("src")).replace(/_off.jpg/,"_on.jpg"));		

			}

		}

		


		$("#top_m1 > li").css("cursor","pointer"); 

		$("#top_m1 > li").hover( 
			
			function() { 
				$(".menu_sub").hide(); 
				var main_id = $(this).attr("id"); 
				$("#top_"+main_id).show();
			},
			

			function() { 
				var main_id = $(this).attr("id"); 
			
				$("#top_"+main_id).hover( 
				
					function() { 
					//���꿡 ���� �Ǿ��� ��� �״�� ��. 
					
					}, 
					
					function() { 
						
						$(".menu_sub").hide(); 

						if($.cookie("strMenu1").length){
							$("#top_"+$.cookie("strMenu1")).show();

						}

					}
				); 
			}
			
		); 





		$("#top_m1 li a").each(function(){
	  
			var image = $(this).children("img");
			var imgsrc = $(image).attr("src");     //attr �Ӽ��� ���� �����´�.
	  
			//add mouseOver
			$(this).mouseover(function(){
				var on = imgsrc.replace(/_off.png/,"_on.png");   //�տ� ���ڿ��� �ڿ� ���ڿ��� ��ȯ 
				$(image).attr("src",on);                 //attr �Ӽ��� ���� ����
			});
	  
			//add mouseOut
			$(this).mouseout(function(){
				var off = imgsrc.replace(/_on.png/,"_off.png");
				$(image).attr("src",off);
			
			
				if($.cookie("strMenu1").length){
					$("#top_menu_"+$.cookie("strMenu1")).attr("src",($("#top_menu_"+$.cookie("strMenu1")).attr("src")).replace(/_off.png/,"_on.png"));	
				}
			
			});
	  




			//add mouseDown
			//$(this).mousedown(function(){
			// var dn = imgsrc.replace(/_off.png/,"_on.png");
			// $(image).attr("src",dn);
			//});

		});



		$(".menu_sub li a").each(function(){
	  
			var image = $(this).children("img");
			var imgsrc = $(image).attr("src");     //attr �Ӽ��� ���� �����´�.
	  
			//add mouseOver
			$(this).mouseover(function(){
				var on = imgsrc.replace(/_off.png/,"_on.png");   //�տ� ���ڿ��� �ڿ� ���ڿ��� ��ȯ 
				$(image).attr("src",on);                 //attr �Ӽ��� ���� ����
			});
	  
			//add mouseOut
			$(this).mouseout(function(){
				var off = imgsrc.replace(/_on.png/,"_off.png");
				$(image).attr("src",off);


				if($.cookie("strMenu2").length){
					$("#top_smenu_"+$.cookie("strMenu1")+"_"+$.cookie("strMenu2")).attr("src",($("#top_smenu_"+$.cookie("strMenu1")+"_"+$.cookie("strMenu2")).attr("src")).replace(/_off.png/,"_on.png"));		
				}


			});
	  
			//add mouseDown
			//$(this).mousedown(function(){
			// var dn = imgsrc.replace(/_off.gif/,"_b.gif");
			// $(image).attr("src",dn);
			//});

		});




		$("#left_m1 li a").each(function(){
	  
			var image = $(this).children("img");
			var imgsrc = $(image).attr("src");     //attr �Ӽ��� ���� �����´�.
	  
			//add mouseOver
			$(this).mouseover(function(){
				var on = imgsrc.replace(/_off.jpg/,"_on.jpg");   //�տ� ���ڿ��� �ڿ� ���ڿ��� ��ȯ 
				$(image).attr("src",on);                 //attr �Ӽ��� ���� ����
			});
	  
			//add mouseOut
			$(this).mouseout(function(){
				var off = imgsrc.replace(/_on.jpg/,"_off.jpg");
				$(image).attr("src",off);

				if($.cookie("strMenu2").length){
					
					$("#mImg_"+$.cookie("strMenu2")).attr("src",($("#mImg_"+$.cookie("strMenu2")).attr("src")).replace(/_off.jpg/,"_on.jpg"));		

				}


				if($.cookie("strMenu3").length){

					if ($("#msImg_"+$.cookie("strMenu2")+"-"+$.cookie("strMenu3")).length){
			
					$("#msImg_"+$.cookie("strMenu2")+"-"+$.cookie("strMenu3")).attr("src",($("#msImg_"+$.cookie("strMenu2")+"-"+$.cookie("strMenu3")).attr("src")).replace(/_off.jpg/,"_on.jpg"));		
					}
		
				}


			});
	  
			//add mouseDown
			//$(this).mousedown(function(){
			// var dn = imgsrc.replace(/_off.gif/,"_b.gif");
			// $(image).attr("src",dn);
			//});

		});		


	});
