/**
 * ImagePlayer jQuery Plugin
 *
 *
 * 
 * 
 * 
 * 
 */
(function (factory) {
	if (typeof define === 'function' && define.amd) {
		// AMD. Register as an anonymous module.
		define(['jquery'], factory);
	} else if (typeof exports === 'object') {
		// Node/CommonJS
		factory(require('jquery'));
	} else {
		// Browser globals
		factory(jQuery);
	}
}(function ($) {

	/**
	 * Plugin :
	 */
	function ImagePlayer(item, options) {
		
		// vars :
		this.settings = {

			/**
			 * Some classes applied on different elements
			 */
			classes : {
				cls                     : 'image-player'
				
			},					

		};
		this.$refs = {
			content					: null,						
			tip				    	: null		
			
		};
		this.current_timeout_time = 0;									
		this.previous_index = 0;									
		this.current_index = 0;									
		this.next_index = 0; 										
		this._previous_active_index = 0; 							
		this.total = 0;												
		this.$this = $(item);										
		this.clickEvent = navigator.userAgent.match(/mobile/gi) ? 'touchend' : 'click'; 		
		this.viewModel  = null;
		// init :
		this.init($(item), options); 
		
	}
	
	/**
	 * Init : 
	 *
	 * @param	
	 * @param	
	 */
	ImagePlayer.prototype.init = function(item, options) {
		
		// vars :
		var _this = this,
			$this = item;
		
		if (!$this.hasClass(_this.settings.classes.cls)) $this.addClass(_this.settings.classes.cls);

		_this._extendSettings(options);

		_this.$refs.player = $this;
		
		_this.$refs.content = $this.find('.image-player-content').hide();
		_this.$refs.tip = $this.find('.image-tip').hide();
	
		
		if (_this.settings.data) {
				
			var list,data = _this.settings.data;
			_this._image_list = data.list;
			list = _this._image_list;
						
			if(list&&list.length>0){
				_this.total = list.length;
				_this.current_index = 0;
			}
	
			
			if(_this._initViewModel()){
				_this._showPlayer();
			}

		} else {

			if (_this.settings.onInit) _this.settings.onInit(_this);
			$this.trigger('player.init', [_this]);

		}
		
	}
	ImagePlayer.prototype._initViewModel = function(){
		var _this = this,
			$this = _this.$this,
			viewModeEvent = {
				previousClick : function(){
					_this.previous();
				},
				nextClick     : function(){
					_this.next();
				},
				replayClick   : function(){
					_this.replay();
				}
			},
			data    = _this.settings.data;
			
		if(ko){
			ko.bindingHandlers.backgroundImage = {
				update: function(element, valueAccessor, allBindings, viewModel, bindingContext) {
					if(viewModel.imgURL()){
						$(element).css("background-image","url("+viewModel.imgURL()+")");
					}
					
				}
			};
		}else{
			$.error('You have to include KnockoutJS library!' );
			return false;
		}
			
		if(_this.current_index<_this._image_list.length){
			
			_this.viewModel = $.extend(viewModeEvent,data,{
				total   : _this.total,
				index   : ko.observable(),
				imgURL  : ko.observable(),
				explain : ko.observable()
			});
			
			ko.applyBindings(_this.viewModel);
			
		}else{
			return false;
		}
		
		return true;
		
	};
	ImagePlayer.prototype._updateViewModel = function(){
		var _this = this,
			$this = _this.$this,
		    imgData = _this._image_list[_this.current_index];
		if(imgData){
			_this.viewModel.imgURL(imgData.imgURL);
			_this.viewModel.index(_this.current_index+1);
			_this.viewModel.explain(imgData.explain);
		}
	}
	
	ImagePlayer.prototype._updateUI = function() {
		var _this  = this,
			vModel = _this.viewModel;
		if(_this.viewModel){
			
		}
	}
	

	/**
	 * Init keyboard navigation :
	 */
	ImagePlayer.prototype._initKeyboardNavigation = function()
	{
		// vars :
		var _this = this,
			$this = _this.$this;

		$(document).bind('keyup', function(e) {

			// check the pressed key :
			switch (e.keyCode)
			{
				case 39:
					_this.next();
				break;
				case 37:
					_this.previous();
				break;
			}

		});
	}

	ImagePlayer.prototype._showTip = function(){
		var _this = this;
		_this.$refs.content.hide();
		_this.$refs.tip.show();
	}
	ImagePlayer.prototype._showPlayer = function(){
		var _this = this;
		_this.$refs.content.show();
		_this.$refs.tip.hide();
		_this._updateViewModel();
	}
	
	/**
	 * Replay image :
	 */
	ImagePlayer.prototype.replay = function(){
		var _this = this;
		 _this.current_index = 0;
		 
		if(_this.current_index < _this.total){
			_this._showPlayer();
		}
	}
	/**
	 * Next image :
	 */
	ImagePlayer.prototype.next = function()
	{
		var _this = this,
			$this = _this.$this;

		_this._previous_active_index = _this.current_index;

		if(_this.current_index+1 >= _this.total){
			_this._showTip();
		}else{
			_this.current_index = _this.current_index+1;
			_this._showPlayer();
		}
	}
			
	/**
	 * Previous image :
	 */
	ImagePlayer.prototype.previous = function()
	{
		
		var _this = this,
			$this = _this.$this;
		
		_this._previous_active_index = _this.current_index;

		_this.current_index = (_this.current_index-1 < 0) ? _this.total-1 : _this.current_index-1;
		
		_this._showPlayer();
			
	}



	
	ImagePlayer.prototype._extendSettings = function(options) {

		// vars :
		var _this = this,
			$this = _this.$this;

		// extend with options :
		_this.settings = $.extend(_this.settings, options, true);

		// flatten an object with parent.child.child pattern :
		var flattenObject = function(ob) {
			var toReturn = {};
			for (var i in ob) {
				
				if (!ob.hasOwnProperty(i)) continue;
				if ((typeof ob[i]) == 'object' && ob[i] != null) {
					var flatObject = flattenObject(ob[i]);
					for (var x in flatObject) {
						if (!flatObject.hasOwnProperty(x)) continue;
						toReturn[i + '.' + x] = flatObject[x];
					}
				} else {
					toReturn[i] = ob[i];	
				}
			}
			return toReturn;
		};

		// flatten the settings
		var flatSettings = flattenObject(_this.settings);

		// loop on each settings to get value on the DOM element
		for (var name in flatSettings)
		{
			// split the setting name :
			var inline_setting = 'player-' + name.replace('.','-').replace(/([a-z])([A-Z])/g, '$1-$2').toLowerCase(),
				inline_attr = $this.data(inline_setting);

			// check if element has inline setting :
			if (typeof inline_attr !== 'undefined') {
				// set the setting :
				if (typeof inline_attr == 'number' || typeof inline_attr == 'boolean')
					eval('_this.settings.'+name+' = '+inline_attr);
				else 
					eval('_this.settings.'+name+' = "'+inline_attr+'"');
			}
		}

	};
	 
	/**
	 * jQuery bb_counter controller :
	 */
	$.fn.imagePlayer = function(method) {

		// check what to do :
		if (ImagePlayer.prototype[method]) {

			// store args to use later :
			var args = Array.prototype.slice.call(arguments, 1);

			// apply on each elements :
			this.each(function() {
				// get the plugin :
				var plugin = $(this).data('player_api');
				// call the method on api :
				plugin[method].apply(plugin, args);
			});
		} else if (typeof method == 'object' || ! method) {

			// store args to use later :
			var args = Array.prototype.slice.call(arguments);

			// apply on each :
			this.each(function() {
				$this = $(this);

				// stop if already inited :
				if ($this.data('player_api') != null && $this.data('player_api') != '') return;

				// make a new instance :
				var api = new ImagePlayer($this, args[0]);

				// save api in element :
				$this.data('player_api', api);
			});
		} else {
			// error :
			$.error( 'Method ' +  method + ' does not exist on jQuery.imagePlayer' );
		}

		// return this :
		return this;
	}

	// return plugin :
	return ImagePlayer;

}));