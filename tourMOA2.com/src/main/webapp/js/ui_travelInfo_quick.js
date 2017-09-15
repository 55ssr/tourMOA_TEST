$(window).load(function(){
	
	if (!!$('.right_travel_quick').offset()) {
		var asideFixFnc = {
			varNames : {
				asideTop : $('.right_travel_quick').offset().top,
				asideElement : $('.right_travel_quick'),
				asideBottom :  parseInt($('body').height() - ( $('footer').height() + $('.right_travel_quick').height() + $('header').height())),  
				scrollTopPnt : $('.travel_left_sec').offset().top
			},
			scrollChk : function(){ 
				
				var windowTop = $(window).scrollTop();
				
				if (windowTop > (this.varNames.scrollTopPnt) &&  windowTop < this.varNames.asideBottom) {  
					this.varNames.asideElement.css({ 'position' : 'fixed', 'top' : 10, 'marginLeft' : '0'}).removeClass('widAddFix');
					if ($(window).width() < 1100){
						this.varNames.asideElement.css({'position':'absolute', 'top' : windowTop - this.varNames.asideTop+10 , 'marginLeft' : '0'}).addClass('widAddFix');
					}
				}
				else if (windowTop > (this.varNames.scrollTopPnt) && windowTop > this.varNames.asideBottom-332) {
					this.varNames.asideElement.css({ 'position' : 'absolute' , 'top' : this.varNames.asideBottom-332, 'marginLeft' : '0'}).removeClass('widAddFix');
				}
				else {
					this.varNames.asideElement.css({ 'position' : 'absolute' , 'top' : 0 , 'marginLeft' : '0'}).removeClass('widAddFix');
				}
			},
			initialize : function(){
				$(window).scroll(function(){
					asideFixFnc.scrollChk();
				});
			}
		}
		
		asideFixFnc.initialize();
	};
});