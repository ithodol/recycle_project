console.log('index.js open');

jQuery(function($){
	$(".gnb>ul>li>a").on("mouseover focus", function(){
    $(this).parent().addClass("active").siblings().removeClass('active');
	});

  $(".gnb li li>a").on("mouseover focus", function(){
    $(this).parent().addClass("active_sub").siblings().removeClass('active_sub');
    });
}); 
