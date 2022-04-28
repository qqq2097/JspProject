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
		$(".blondtb").hide()
	    $(".mediumtb").hide()
	    $(".darktb").hide()
	}
	
	function show()
	{
		$(".blondtb").show()
		$(".mediumtb").show()
    	$(".darktb").show()
	}
	
	function checked() {
		$("input:checkbox[name='all']").prop("checked",true)
		$("input:checkbox[name='chk2']").prop("checked",false)
		$("input:checkbox[name='chk3']").prop("checked",false)
		$("input:checkbox[name='chk4']").prop("checked",false)
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
		
		/* 블론드 로스트 체크박스 */
		else if ($(this).attr("class")=='cbx2')
		{
			if($(this).is(":checked"))
			{
				$("input:checkbox[name='all']").prop("checked",false)
				$(".blondtb").show()
				
				if ($(".cbx3").is(":checked") && $(".cbx4").is(":checked")) 
				{
					checked()
					show()
				}
				else if($(".cbx3").is(":checked"))
				{
					$(".blondtb").show()
					$(".mediumtb").show()
				}
				else if ($(".cbx4").is(":checked"))
				{
					$(".blondtb").show()
				    $(".darktb").show()
				} 
				
			}
			else
			{
				$(".blondtb").hide()
				
				if ($(".cbx3").is(":checked") && $(".cbx4").is(":checked")) 
				{
					$(".mediumtb").show()
				    $(".darktb").show()
				}
				else if($(".cbx3").is(":checked"))
				{
					$(".mediumtb").show()
				}else if ($(".cbx4").is(":checked"))
				{
				    $(".darktb").show()
				} 
				
			}
		}
		/* 미디엄 로스트 체크박스 */
		else if ($(this).attr("class")=='cbx3')
		{
			if($(this).is(":checked"))
			{
				$("input:checkbox[name='all']").prop("checked",false)
				$(".mediumtb").show()
				
				if ($(".cbx2").is(":checked") && $(".cbx4").is(":checked")) 
				{
					checked()
					show()
				}
				else if($(".cbx2").is(":checked"))
				{
					$(".blondtb").show()
					$(".mediumtb").show()
				}
				else if ($(".cbx4").is(":checked")) 
				{
					$(".mediumtb").show()
				    $(".darktb").show()
				} 
			}
			else 
			{
				$(".mediumtb").hide()
				
				if ($(".cbx2").is(":checked") && $(".cbx4").is(":checked")) 
				{
					$(".blondtb").show()
				    $(".darktb").show()
				}
				else if($(".cbx2").is(":checked"))
				{
					$(".blondtb").show()
				}
				else if ($(".cbx4").is(":checked"))
				{
				    $(".darktb").show()
				} 
			}
		}
		/* 다크 로스트 체크박스 */
		else if ($(this).attr("class")=='cbx4')
		{
			if($(this).is(":checked"))
			{
				$("input:checkbox[name='all']").prop("checked",false)
				$(".darktb").show()
				
				if ($(".cbx2").is(":checked") && $(".cbx3").is(":checked")) 
				{
					checked()
					show()
				}
				else if($(".cbx2").is(":checked"))
				{
					$(".blondtb").show()
					$(".darktb").show()
				}
				else if ($(".cbx3").is(":checked")) 
				{
					$(".mediumtb").show()
				    $(".darktb").show()
				} 
			}
			else 
			{
				$(".darktb").hide()

				if ($(".cbx2").is(":checked") && $(".cbx3").is(":checked")) 
				{
					$(".blondtb").show()
				    $(".mediumtb").show()
				}
				else if($(".cbx2").is(":checked"))
				{
					$(".blondtb").show()
				}
				else if ($(".cbx3").is(":checked")) 
				{
				    $(".mediumtb").show()
				} 
			}
		}
	}) /* 체크박스 필터 end */
	

})
