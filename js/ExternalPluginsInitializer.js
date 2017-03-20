define(function (require) {

    var Marionette = require('marionette');
    var PluginBroker = require('lib/plugin/PluginBroker');
    var PluginAbstract = require('lib/plugin/PluginAbstract');
    var Slick = require('third-party-libs/slick.min');
	
	var messagesChannel = Backbone.Wreqr.radio.channel('page');
	
	messagesChannel.vent.on('shown', function (options) {
		customs();
	});
	
	
	
    return Marionette.Object.extend({

        initialize: function () {
            /**
             * please add your plugins and external libraries here here e.g.:
             *
             * var pluginBroker = PluginBroker.getInstance();
             * pluginBroker.addPlugin(new MyPlugin());
             *
             * but do not forget to define it before use.
             * You can use 'ext' alias path to require your files
             */
            this.listenTo(PluginBroker.getInstance(), 'group:render', this.addSliders);

            this.popups();
            this.preloader();
            this.closeNavPopups();
        },

        addSliders: function (view) {
            var input = jQuery('.input', view.$el);
            var slider = jQuery('.slider', view.$el);

            slider.slider({
                animate: true,
                max: input.data('max'),
                min: 1,
                value: input.val(),
                slide: function (event, ui) {
                    input.val(ui.value);
                    jQuery(ui.handle).text(ui.value);
                }
            });

            slider.slider('instance').handle.text(input.val());
        },

        popups: function () {

            var instance = this;

            //CART POPUP
            instance.handlePopup({
                trigger: '#header #sb_multiple_book_cart .cart',
                component: '#header #sb_multiple_book_cart .full-info',
                modal: false,
                // close_btn: '#header .link'
            });

            // AVATAR INFO
            instance.handlePopup({
                trigger: '#header #sb_client_info .avatar',
                component: '#header #sb_client_info .full-info',
                modal: false,
                // close_btn: '#header .link'
            });

            // TIMELINE TAB FULL INFO
            instance.handlePopup({
                trigger: '.tab.tab-with-popup .full-info-trigger',
                component: '.tab.tab-with-popup .full-info',
                modal: true,
                close_btn: '.tab.tab-with-popup .close-full-info'
            });

            // MOBILE NAV TRIGGER
            instance.handlePopup({
                trigger: '#header .nav-trigger',
                component: '#header .nav-wrapper',
                modal: true,
                // close_btn: '#header .link'
            });
        },

        handlePopup: function (settings) {

            var popupTrigger = settings.trigger;
            var popupComponent = settings.component;
            var popupModal = settings.modal;
            var popupClose = settings.close_btn;

            $(document).on('click', popupTrigger, function (e) {
                var x = $(this).closest(':has(' + popupComponent + ')').find(popupComponent);
                x.toggleClass('active');
                if (popupModal) {
                    $('body').toggleClass('hasModal');
                }
            });
            $(document).on("click", function (e) {
                var isTrigger = $(e.target).closest(popupTrigger).length;
                var isComponent = $(e.target).closest(popupComponent).length;
                var isPopupClose = $(e.target).closest(popupClose).length;

                if (!isComponent && !isTrigger || isPopupClose) {
                    if ($(popupComponent).hasClass('active')) {
                        $(popupComponent).removeClass('active');
                        if (popupModal) {
                            $('body').removeClass('hasModal');
                        }
                    }
                }
            });

        },

        closeNavPopups: function() {
            $(document).on("click", '.nav-popup-hide', function () {
                $('body').removeClass('hasModal');
                $('#header .nav-wrapper').removeClass('active');
            });
        },

        preloader: function () {
            jQuery(document).ajaxStart(function () {
                jQuery('#preloader').fadeIn();
            }).ajaxStop(function () {
                jQuery('#preloader').fadeOut();
            });
        }
    });

});

function customs(){
	setTimeout(function () {
		
		  jQuery('a[href*="#"]:not([href="#"])').click(function() {
			if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
			  var target = jQuery(this.hash);
			  target = target.length ? target : jQuery('[name=' + this.hash.slice(1) +']');
			  if (target.length) {
				jQuery('html, body').animate({
				  scrollTop: target.offset().top
				}, 1000);
				return false;
			  } 
			}
		  });
		
		jQuery("#sb_gallery_module_list_container").slick({
			dots: false,
			infinite: true,
			centerMode: true,
			slidesToShow: 5,
			slidesToScroll: 5,
			focusOnSelect: true,
			appendArrows: $('.gallery-info'),
			prevArrow: '<i class="fa fa-angle-left slide-prev"></i>',
			nextArrow: '<i class="fa fa-angle-right slide-next"></i>',
			arrows: true,
			responsive: [
				{
				  breakpoint: 1200,
				  settings: {
					slidesToShow: 4,
					slidesToScroll: 4
				  }
				},
				{
				  breakpoint: 991,
				  settings: {
					slidesToShow: 3,
					slidesToScroll: 3
				  }
				},
				{
				  breakpoint: 600,
				  settings: {
					slidesToShow: 2,
					slidesToScroll: 2
				  }
				}
			  ]
		});
		jQuery('#sb_gallery_module_list_container').on('afterChange', function(event, slick, currentSlide){
			var bg_image = $('.slick-center a').attr('data-img');
			$('#main #main-content #gallery-view').css('background-image', 'url("'+bg_image+'")');
		});
		jQuery("#gallery-view .img-list li a").click(function() {
			// var bg_image = $(this).attr('href');
			// $('#main #main-content #gallery-view').css('background-image', 'url("'+bg_image+'")');
		});
		
		$('#sb_gallery_module_list_container .slick-center').trigger('click');
		
		jQuery(".news-slider").slick({
			slidesToShow: 1,
			slidesToScroll: 1,
			dots: true,
			prevArrow: '<i class="fa fa-angle-left news-prev"></i>',
			nextArrow: '<i class="fa fa-angle-right news-next"></i>',
			arrows: true
		});
		jQuery(".review-slider").slick({
			slidesToShow: 1,
			slidesToScroll: 1,
			dots: true,
			prevArrow: '<i class="fa fa-angle-left review-prev"></i>',
			nextArrow: '<i class="fa fa-angle-right review-next"></i>',
			arrows: true
		});
		$( "#sb_category_step_container .tab-link" ).click(function(e) {
			$(".tab-link").removeClass("active");
			var ind = $( this ).addClass( "active" ).index();
			$(".tab-link:lt("+ind+")").addClass("active");
			e.preventDefault();
		});
		$(".btn-more").click(function(e){
			$(this).parents('.article').find('.txt-long').show('slow', 'linear');
			e.preventDefault();
			$('.btn-more').hide();
			$('.hide-btn').css('display', 'inline-block');
		});
		$(".hide-btn").click(function(e){
			$(this).parents('.article').find('.txt-long').hide('slow', 'linear');
			e.preventDefault();
			$('.hide-btn').hide();
			$('.btn-more').css('display', 'inline-block');
		});
		$(".news-slider .slick-arrow").click(function(){
			$('.txt-long').hide('slow', 'linear');
			$('.hide-btn').hide();
			$('.btn-more').css('display', 'inline-block');
		});
		$(".add-btn").click(function(e){
			$('#sb_reviews_list_items_module_container').hide();
			$('#sb_reviews_form_module').show();
			
		});
		$(".close-btn").click(function(e){
			$('#sb_reviews_form_module').hide();
			$('#sb_reviews_list_items_module_container').show();
			
		});
		var logID = 'log',
		log = $('<div id="'+logID+'"></div>');
		$('body').append(log);
		 $('[type*="radio"]').change(function () {
			var me = $(this);
			log.html(me.attr('value'));
		 });
	}, 2000);
}