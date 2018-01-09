(function($){
	if(!$)$={};
	$.tab = function(item,index){
		
		var _index = (index)?index:1;
			$this = $(item),
			tab = $this.find(".tab-tip");
			tab.on("mouseover",function(){
				var me = $(this),
					parent = me.parents(".tab"),
					i  = me.attr("tabindex");
					selectTab(parent,i);		
			});
			function selectTab(tab,i){
				var me = $(tab),
					tip    = me.find(".tab-tip[tabindex="+i+"]"),
					bd     = me.find(".tab-body[tabindex="+i+"]"),
					tabs   = me.find(".tab-tip"),
					bds    = me.find(".tab-body");
					tabs.removeClass("activity");
					bds.hide();
					tip.addClass("activity");
					bd.show();
			};
			
			$.each($this,function(i,tab){
				selectTab(tab,_index);				  
			});
	}
})(jQuery);