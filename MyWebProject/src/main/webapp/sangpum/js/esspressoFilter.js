$(function() {
		
	
	$(".btn1").click(function() {
		$(this).css("background-color","#036635")
		$(this).siblings().css("background-color","#eaeaea")

})
	$(".btn2").click(function() {
			$(this).css("background-color","#036635")
			$(this).siblings().css("background-color","#eaeaea")

	})
	
	/* 체크박스 필터 */
	
	function hide()
	{
		$(".esspressotb").hide()
	    $(".americanotb").hide()
	    $(".cappuccinotb").hide()
	    $(".lattetb").hide()
	    $(".mochatb").hide()
	}
	
	function show()
	{
		$(".esspressotb").show()
	    $(".americanotb").show()
	    $(".cappuccinotb").show()
	    $(".lattetb").show()
	    $(".mochatb").show()
	}
	
	function checked() {
		$("input:checkbox[name='all']").prop("checked",true)
		$("input:checkbox[name='chk2']").prop("checked",false)
		$("input:checkbox[name='chk3']").prop("checked",false)
		$("input:checkbox[name='chk4']").prop("checked",false)
		$("input:checkbox[name='chk5']").prop("checked",false)
		$("input:checkbox[name='chk6']").prop("checked",false)
	}
	
	$(document).on('change', '#cbox', function()
			{

				hide()
				
				if ($(this).attr("class")=='cbx1')
				{
					if($(this).is(":checked"))
					{
						checked()
						show()
					}
				}
				
				/* 에스프레소 체크박스 */
				else if ($(this).attr("class")=='cbx2')
				{
					if($(this).is(":checked"))
					{
						$("input:checkbox[name='all']").prop("checked",false)
						$(".esspressotb").show()
						
						if ($(".cbx3").is(":checked") && $(".cbx4").is(":checked") && $(".cbx5").is(":checked") && $(".cbx6").is(":checked")) 
						{
							checked()
							show()
						}else if ($(".cbx3").is(":checked") && $(".cbx4").is(":checked") && $(".cbx5").is(":checked")) {
							$(".esspressotb").show()
							$(".americanotb").show()
						    $(".cappuccinotb").show()
						    $(".lattetb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx4").is(":checked") && $(".cbx6").is(":checked")) {
							$(".esspressotb").show()
							$(".americanotb").show()
						    $(".cappuccinotb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx5").is(":checked") && $(".cbx6").is(":checked")) {
							$(".esspressotb").show()
							$(".americanotb").show()
						    $(".lattetb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx4").is(":checked") && $(".cbx5").is(":checked") && $(".cbx6").is(":checked")) {
							$(".esspressotb").show()
							$(".cappuccinotb").show()
						    $(".lattetb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx4").is(":checked")) {
							$(".esspressotb").show()
							$(".americanotb").show()
						    $(".cappuccinotb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx5").is(":checked")) {
							$(".esspressotb").show()
							$(".americanotb").show()
						    $(".lattetb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx6").is(":checked")) {
							$(".esspressotb").show()
							$(".americanotb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx4").is(":checked") && $(".cbx5").is(":checked")) {
							$(".esspressotb").show()
							$(".cappuccinotb").show()
						    $(".lattetb").show()
						}
						else if ($(".cbx4").is(":checked") && $(".cbx6").is(":checked")) {
							$(".esspressotb").show()
							$(".cappuccinotb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx5").is(":checked") && $(".cbx6").is(":checked")) {
							$(".esspressotb").show()
							$(".lattetb").show()
						    $(".mochatb").show()
						}
						else if($(".cbx3").is(":checked"))
						{
							$(".esspressotb").show()
							$(".americanotb").show()
						}else if ($(".cbx4").is(":checked"))
						{
							$(".esspressotb").show()
						    $(".cappuccinotb").show()
						}else if($(".cbx5").is(":checked"))
						{
							$(".esspressotb").show()
							$(".lattetb").show()
						}else if ($(".cbx6").is(":checked"))
						{
							$(".esspressotb").show()
						    $(".mochatb").show()
						}  
						
					}
					else
					{
						$(".esspressotb").hide()
						
						if ($(".cbx3").is(":checked") && $(".cbx4").is(":checked") && $(".cbx5").is(":checked") && $(".cbx6").is(":checked")) 
						{
						    $(".americanotb").show()
						    $(".cappuccinotb").show()
						    $(".lattetb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx4").is(":checked") && $(".cbx5").is(":checked")) {
							$(".americanotb").show()
						    $(".cappuccinotb").show()
						    $(".lattetb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx4").is(":checked") && $(".cbx6").is(":checked")) {
							$(".americanotb").show()
						    $(".cappuccinotb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx5").is(":checked") && $(".cbx6").is(":checked")) {
							$(".americanotb").show()
						    $(".lattetb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx4").is(":checked") && $(".cbx5").is(":checked") && $(".cbx6").is(":checked")) {
							$(".cappuccinotb").show()
						    $(".lattetb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx4").is(":checked")) {
							$(".americanotb").show()
						    $(".cappuccinotb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx5").is(":checked")) {
							$(".americanotb").show()
						    $(".lattetb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx6").is(":checked")) {
							$(".americanotb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx4").is(":checked") && $(".cbx5").is(":checked")) {
							$(".cappuccinotb").show()
						    $(".lattetb").show()
						}
						else if ($(".cbx4").is(":checked") && $(".cbx6").is(":checked")) {
							$(".cappuccinotb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx5").is(":checked") && $(".cbx6").is(":checked")) {
							$(".lattetb").show()
						    $(".mochatb").show()
						}
						else if($(".cbx3").is(":checked"))
						{
							$(".americanotb").show()
						}else if ($(".cbx4").is(":checked"))
						{
						    $(".cappuccinotb").show()
						}else if($(".cbx5").is(":checked"))
						{
							$(".lattetb").show()
						}else if ($(".cbx6").is(":checked"))
						{
						    $(".mochatb").show()
						}  
						
					}
				}
				/* 아메리카노 체크박스 */
				else if ($(this).attr("class")=='cbx3')
				{
					if($(this).is(":checked"))
					{
						$("input:checkbox[name='all']").prop("checked",false)
						$(".americanotb").show()
						
						if ($(".cbx2").is(":checked") && $(".cbx4").is(":checked") && $(".cbx5").is(":checked") && $(".cbx6").is(":checked")) 
						{
							checked()
							show()
						}else if ($(".cbx2").is(":checked") && $(".cbx4").is(":checked") && $(".cbx5").is(":checked")) {
							$(".esspressotb").show()
							$(".americanotb").show()
						    $(".cappuccinotb").show()
						    $(".lattetb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx4").is(":checked") && $(".cbx6").is(":checked")) {
							$(".esspressotb").show()
							$(".americanotb").show()
						    $(".cappuccinotb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx5").is(":checked") && $(".cbx6").is(":checked")) {
							$(".esspressotb").show()
							$(".americanotb").show()
						    $(".lattetb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx4").is(":checked") && $(".cbx5").is(":checked") && $(".cbx6").is(":checked")) {
							$(".americanotb").show()
							$(".cappuccinotb").show()
						    $(".lattetb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx4").is(":checked")) {
							$(".esspressotb").show()
							$(".americanotb").show()
						    $(".cappuccinotb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx5").is(":checked")) {
							$(".esspressotb").show()
							$(".americanotb").show()
						    $(".lattetb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx6").is(":checked")) {
							$(".esspressotb").show()
							$(".americanotb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx4").is(":checked") && $(".cbx5").is(":checked")) {
							$(".americanotb").show()
							$(".cappuccinotb").show()
						    $(".lattetb").show()
						}
						else if ($(".cbx4").is(":checked") && $(".cbx6").is(":checked")) {
							$(".americanotb").show()
							$(".cappuccinotb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx5").is(":checked") && $(".cbx6").is(":checked")) {
							$(".americanotb").show()
							$(".lattetb").show()
						    $(".mochatb").show()
						}
						else if($(".cbx2").is(":checked"))
						{
							$(".esspressotb").show()
							$(".americanotb").show()
						}else if ($(".cbx4").is(":checked"))
						{
							$(".americanotb").show()
						    $(".cappuccinotb").show()
						}else if($(".cbx5").is(":checked"))
						{
							$(".americanotb").show()
							$(".lattetb").show()
						}else if ($(".cbx6").is(":checked"))
						{
							$(".americanotb").show()
						    $(".mochatb").show()
						}  
						
					}
					else
					{
						$(".americanotb").hide()
						
						if ($(".cbx2").is(":checked") && $(".cbx4").is(":checked") && $(".cbx5").is(":checked") && $(".cbx6").is(":checked")) 
						{
						    $(".esspressotb").show()
						    $(".cappuccinotb").show()
						    $(".lattetb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx4").is(":checked") && $(".cbx5").is(":checked")) {
							$(".esspressotb").show()
						    $(".cappuccinotb").show()
						    $(".lattetb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx4").is(":checked") && $(".cbx6").is(":checked")) {
							$(".esspressotb").show()
						    $(".cappuccinotb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx5").is(":checked") && $(".cbx6").is(":checked")) {
							$(".esspressotb").show()
						    $(".lattetb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx4").is(":checked") && $(".cbx5").is(":checked") && $(".cbx6").is(":checked")) {
							$(".cappuccinotb").show()
						    $(".lattetb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx4").is(":checked")) {
							$(".esspressotb").show()
						    $(".cappuccinotb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx5").is(":checked")) {
							$(".esspressotb").show()
						    $(".lattetb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx6").is(":checked")) {
							$(".esspressotb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx4").is(":checked") && $(".cbx5").is(":checked")) {
							$(".cappuccinotb").show()
						    $(".lattetb").show()
						}
						else if ($(".cbx4").is(":checked") && $(".cbx6").is(":checked")) {
							$(".cappuccinotb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx5").is(":checked") && $(".cbx6").is(":checked")) {
							$(".lattetb").show()
						    $(".mochatb").show()
						}
						else if($(".cbx2").is(":checked"))
						{
							$(".esspressotb").show()
						}else if ($(".cbx4").is(":checked"))
						{
						    $(".cappuccinotb").show()
						}else if($(".cbx5").is(":checked"))
						{
							$(".lattetb").show()
						}else if ($(".cbx6").is(":checked"))
						{
						    $(".mochatb").show()
						}  
						
					}
				}
				/* 카푸치노 체크박스 */
				else if ($(this).attr("class")=='cbx4')
				{
					if($(this).is(":checked"))
					{
						$("input:checkbox[name='all']").prop("checked",false)
						$(".cappuccinotb").show()
						
						if ($(".cbx2").is(":checked") && $(".cbx3").is(":checked") && $(".cbx5").is(":checked") && $(".cbx6").is(":checked")) 
						{
							checked()
							show()
						}else if ($(".cbx2").is(":checked") && $(".cbx3").is(":checked") && $(".cbx5").is(":checked")) {
							$(".esspressotb").show()
							$(".americanotb").show()
						    $(".cappuccinotb").show()
						    $(".lattetb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx3").is(":checked") && $(".cbx6").is(":checked")) {
							$(".esspressotb").show()
							$(".americanotb").show()
						    $(".cappuccinotb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx5").is(":checked") && $(".cbx6").is(":checked")) {
							$(".esspressotb").show()
							$(".cappuccinotb").show()
						    $(".lattetb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx5").is(":checked") && $(".cbx6").is(":checked")) {
							$(".americanotb").show()
							$(".cappuccinotb").show()
						    $(".lattetb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx3").is(":checked")) {
							$(".esspressotb").show()
							$(".americanotb").show()
						    $(".cappuccinotb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx5").is(":checked")) {
							$(".esspressotb").show()
							$(".cappuccinotb").show()
						    $(".lattetb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx6").is(":checked")) {
							$(".esspressotb").show()
							$(".cappuccinotb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx5").is(":checked")) {
							$(".americanotb").show()
							$(".cappuccinotb").show()
						    $(".lattetb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx6").is(":checked")) {
							$(".americanotb").show()
							$(".cappuccinotb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx5").is(":checked") && $(".cbx6").is(":checked")) {
							$(".cappuccinotb").show()
							$(".lattetb").show()
						    $(".mochatb").show()
						}
						else if($(".cbx2").is(":checked"))
						{
							$(".esspressotb").show()
							$(".cappuccinotb").show()
						}else if ($(".cbx3").is(":checked"))
						{
							$(".americanotb").show()
						    $(".cappuccinotb").show()
						}else if($(".cbx5").is(":checked"))
						{
							$(".cappuccinotb").show()
							$(".lattetb").show()
						}else if ($(".cbx6").is(":checked"))
						{
							$(".cappuccinotb").show()
						    $(".mochatb").show()
						}  
						
					}
					else
					{
						$(".cappuccinotb").hide()
						
						if ($(".cbx2").is(":checked") && $(".cbx3").is(":checked") && $(".cbx5").is(":checked") && $(".cbx6").is(":checked")) 
						{
						    $(".esspressotb").show()
						    $(".americanotb").show()
						    $(".lattetb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx3").is(":checked") && $(".cbx5").is(":checked")) {
							$(".esspressotb").show()
						    $(".americanotb").show()
						    $(".lattetb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx3").is(":checked") && $(".cbx6").is(":checked")) {
							$(".esspressotb").show()
						    $(".americanotb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx5").is(":checked") && $(".cbx6").is(":checked")) {
							$(".esspressotb").show()
						    $(".lattetb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx5").is(":checked") && $(".cbx6").is(":checked")) {
							$(".americanotb").show()
						    $(".lattetb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx3").is(":checked")) {
							$(".esspressotb").show()
						    $(".americanotb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx5").is(":checked")) {
							$(".esspressotb").show()
						    $(".lattetb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx6").is(":checked")) {
							$(".esspressotb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx5").is(":checked")) {
							$(".americanotb").show()
						    $(".lattetb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx6").is(":checked")) {
							$(".americanotb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx5").is(":checked") && $(".cbx6").is(":checked")) {
							$(".lattetb").show()
						    $(".mochatb").show()
						}
						else if($(".cbx2").is(":checked"))
						{
							$(".esspressotb").show()
						}else if ($(".cbx3").is(":checked"))
						{
						    $(".americanotb").show()
						}else if($(".cbx5").is(":checked"))
						{
							$(".lattetb").show()
						}else if ($(".cbx6").is(":checked"))
						{
						    $(".mochatb").show()
						}  
						
					}
				}
				
				/* 라떼 체크박스 */
				else if ($(this).attr("class")=='cbx5')
				{
					if($(this).is(":checked"))
					{
						$("input:checkbox[name='all']").prop("checked",false)
						$(".lattetb").show()
						
						if ($(".cbx2").is(":checked") && $(".cbx3").is(":checked") && $(".cbx4").is(":checked") && $(".cbx6").is(":checked")) 
						{
							checked()
							show()
						}else if ($(".cbx2").is(":checked") && $(".cbx3").is(":checked") && $(".cbx4").is(":checked")) {
							$(".esspressotb").show()
							$(".americanotb").show()
						    $(".cappuccinotb").show()
						    $(".lattetb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx3").is(":checked") && $(".cbx6").is(":checked")) {
							$(".esspressotb").show()
							$(".americanotb").show()
						    $(".lattetb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx4").is(":checked") && $(".cbx6").is(":checked")) {
							$(".esspressotb").show()
							$(".cappuccinotb").show()
						    $(".lattetb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx4").is(":checked") && $(".cbx6").is(":checked")) {
							$(".americanotb").show()
							$(".cappuccinotb").show()
						    $(".lattetb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx3").is(":checked")) {
							$(".esspressotb").show()
							$(".americanotb").show()
						    $(".cappuccinotb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx4").is(":checked")) {
							$(".esspressotb").show()
							$(".cappuccinotb").show()
						    $(".lattetb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx6").is(":checked")) {
							$(".esspressotb").show()
							$(".lattetb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx4").is(":checked")) {
							$(".americanotb").show()
							$(".cappuccinotb").show()
						    $(".lattetb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx6").is(":checked")) {
							$(".americanotb").show()
							$(".lattetb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx4").is(":checked") && $(".cbx6").is(":checked")) {
							$(".cappuccinotb").show()
							$(".lattetb").show()
						    $(".mochatb").show()
						}
						else if($(".cbx2").is(":checked"))
						{
							$(".esspressotb").show()
							$(".lattetb").show()
						}else if ($(".cbx3").is(":checked"))
						{
							$(".americanotb").show()
						    $(".lattetb").show()
						}else if($(".cbx4").is(":checked"))
						{
							$(".cappuccinotb").show()
							$(".lattetb").show()
						}else if ($(".cbx6").is(":checked"))
						{
							$(".lattetb").show()
						    $(".mochatb").show()
						}  
						
					}
					else
					{
						$(".lattetb").hide()
						
						if ($(".cbx2").is(":checked") && $(".cbx3").is(":checked") && $(".cbx5").is(":checked") && $(".cbx6").is(":checked")) 
						{
						    $(".esspressotb").show()
						    $(".americanotb").show()
						    $(".lattetb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx3").is(":checked") && $(".cbx4").is(":checked")) {
							$(".esspressotb").show()
						    $(".americanotb").show()
						    $(".cappuccinotb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx3").is(":checked") && $(".cbx6").is(":checked")) {
							$(".esspressotb").show()
						    $(".americanotb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx4").is(":checked") && $(".cbx6").is(":checked")) {
							$(".esspressotb").show()
							$(".cappuccinotb").show()
						    $(".lattetb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx5").is(":checked") && $(".cbx6").is(":checked")) {
							$(".americanotb").show()
						    $(".lattetb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx3").is(":checked")) {
							$(".esspressotb").show()
						    $(".americanotb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx4").is(":checked")) {
							$(".esspressotb").show()
						    $(".cappuccinotb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx6").is(":checked")) {
							$(".esspressotb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx4").is(":checked")) {
							$(".americanotb").show()
						    $(".cappuccinotb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx6").is(":checked")) {
							$(".americanotb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx4").is(":checked") && $(".cbx6").is(":checked")) {
							$(".cappuccinotb").show()
						    $(".mochatb").show()
						}
						else if($(".cbx2").is(":checked"))
						{
							$(".esspressotb").show()
						}else if ($(".cbx3").is(":checked"))
						{
						    $(".americanotb").show()
						}else if($(".cbx5").is(":checked"))
						{
							$(".lattetb").show()
						}else if ($(".cbx6").is(":checked"))
						{
						    $(".mochatb").show()
						}  
						
					}
				}
				/* 모카 체크박스 */
				else if ($(this).attr("class")=='cbx6')
				{
					
					if($(this).is(":checked"))
					{
						$("input:checkbox[name='all']").prop("checked",false)
						$(".mochatb").show()
						
						if ($(".cbx2").is(":checked") && $(".cbx3").is(":checked") && $(".cbx4").is(":checked") && $(".cbx5").is(":checked")) 
						{
							checked()
							show()
						}else if ($(".cbx2").is(":checked") && $(".cbx3").is(":checked") && $(".cbx4").is(":checked")) {
							$(".esspressotb").show()
							$(".americanotb").show()
						    $(".cappuccinotb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx3").is(":checked") && $(".cbx5").is(":checked")) {
							$(".esspressotb").show()
							$(".americanotb").show()
						    $(".lattetb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx4").is(":checked") && $(".cbx5").is(":checked")) {
							$(".esspressotb").show()
							$(".cappuccinotb").show()
						    $(".lattetb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx4").is(":checked") && $(".cbx5").is(":checked")) {
							$(".americanotb").show()
							$(".cappuccinotb").show()
						    $(".lattetb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx3").is(":checked")) {
							$(".esspressotb").show()
							$(".americanotb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx4").is(":checked")) {
							$(".esspressotb").show()
							$(".cappuccinotb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx5").is(":checked")) {
							$(".esspressotb").show()
							$(".lattetb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx4").is(":checked")) {
							$(".americanotb").show()
							$(".cappuccinotb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx5").is(":checked")) {
							$(".americanotb").show()
							$(".lattetb").show()
						    $(".mochatb").show()
						}
						else if ($(".cbx4").is(":checked") && $(".cbx5").is(":checked")) {
							$(".cappuccinotb").show()
							$(".lattetb").show()
						    $(".mochatb").show()
						}
						else if($(".cbx2").is(":checked"))
						{
							$(".esspressotb").show()
							$(".mochatb").show()
						}else if ($(".cbx3").is(":checked"))
						{
							$(".americanotb").show()
						    $(".mochatb").show()
						}else if($(".cbx4").is(":checked"))
						{
							$(".cappuccinotb").show()
							$(".mochatb").show()
						}else if ($(".cbx5").is(":checked"))
						{
							$(".lattetb").show()
						    $(".mochatb").show()
						}  
						
					}
					else
					{
						$(".mochatb").hide()
						
						if ($(".cbx2").is(":checked") && $(".cbx3").is(":checked") && $(".cbx4").is(":checked") && $(".cbx5").is(":checked")) 
						{
							checked()
							show()
						}else if ($(".cbx2").is(":checked") && $(".cbx3").is(":checked") && $(".cbx4").is(":checked")) {
							$(".esspressotb").show()
							$(".americanotb").show()
						    $(".cappuccinotb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx3").is(":checked") && $(".cbx5").is(":checked")) {
							$(".esspressotb").show()
							$(".americanotb").show()
						    $(".lattetb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx4").is(":checked") && $(".cbx5").is(":checked")) {
							$(".esspressotb").show()
							$(".cappuccinotb").show()
						    $(".lattetb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx4").is(":checked") && $(".cbx5").is(":checked")) {
							$(".americanotb").show()
							$(".cappuccinotb").show()
						    $(".lattetb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx3").is(":checked")) {
							$(".esspressotb").show()
							$(".americanotb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx4").is(":checked")) {
							$(".esspressotb").show()
							$(".cappuccinotb").show()
						}
						else if ($(".cbx2").is(":checked") && $(".cbx5").is(":checked")) {
							$(".esspressotb").show()
							$(".lattetb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx4").is(":checked")) {
							$(".americanotb").show()
							$(".cappuccinotb").show()
						}
						else if ($(".cbx3").is(":checked") && $(".cbx5").is(":checked")) {
							$(".americanotb").show()
							$(".lattetb").show()
						}
						else if ($(".cbx4").is(":checked") && $(".cbx5").is(":checked")) {
							$(".cappuccinotb").show()
							$(".lattetb").show()
						}
						else if($(".cbx2").is(":checked"))
						{
							$(".esspressotb").show()
						}else if ($(".cbx3").is(":checked"))
						{
							$(".americanotb").show()
						}else if($(".cbx4").is(":checked"))
						{
							$(".cappuccinotb").show()
						}else if ($(".cbx5").is(":checked"))
						{
							$(".lattetb").show()
						}  
					}
					
				}
				
				
				
				
				 /* 체크박스 필터 end */			
	})
	

})