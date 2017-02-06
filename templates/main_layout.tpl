123
<div id="sb-main-container">
    <header id="header">
        <div class="container-fluid column">
            <div class="row row-eq-height">
                <div class="col-xs-6 col-md-3">
                    {{!--logo-only company-name-only  both-only--}} {{!-- for brand class --}}
                    <div class="brand {{getThemeImageMode 'sb_logo_image'}}">
                        {{#hasThemeImage 'sb_logo_image'}}
                        <div class="logo">
                            <a href="/">
                                <img src="{{getThemeImage 'sb_logo_image'}}"
                                     alt="{{_ (getConfigParam 'company_data') 'name'}}">
                            </a>
                        </div>
                        {{/hasThemeImage}}
                    </div>
                </div>
                <div class="col-xs-6 col-md-9">
                    <div class="nav-trigger">
                        <i class="fa fa-bars"></i>
                    </div>
                    <div class="nav-wrapper clearfix">
                        <div id="sb_menu">
                            {{! MENU }}
                        </div>
                        <div class="items-wrapper">
                            <div id="book-btn"
                                 class="nav-item {{#ifCond active_menu_item '==' 'book'}}active{{/ifCond}}">
                                <div class="book-btn-container">
                                    <div class="item-container">
                                        <a class="nav-popup-hide" href="#book">
                                            <img src="/v2/themes/assets/img/btn-book.png" alt="">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div id="sb_multiple_book_cart" class="nav-item"></div>
                            <div id="sb_client_info" class="nav-item"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <main id="main">
        <div class="background-logo-column column container-fluid">
            <div class="background-logo  {{getThemeImageMode 'sb_logo_image_header'}}">
                <img src="{{getThemeImage 'sb_logo_image_header'}}" alt=" ">
            </div>
        </div>   
        <section id="main-buttons"
                 style="background-image: url({{#hasThemeImage 'sb_background_image'}}{{getThemeImage 'sb_background_image' size='original'}}{{else}}/v2/themes/default/img/main-image.jpg{{/hasThemeImage}});
                 {{#hasThemeImage 'sb_background_image'}}{{getThemeImageBackgroundMode 'sb_background_image'}}{{/hasThemeImage}}">
            <div class="container-fluid column">
                <div class="wrapper">
                    <div class="inner">
                        <div class="company-name {{getThemeImageMode 'sb_logo_image'}}">
                            {{_ (getConfigParam 'company_data') 'name'}}Real peace is always unshakable...
                        </div>
                        <div class="bar">
                            {{#ifConfigParam 'skip_address' '!=' true}}
                            <div class="btn map btn-with-image custom">
                                <a href="#show-on-map/yes">
                                    {{_t 'show_on_map'}}
                                </a>
                            </div>
                            {{/ifConfigParam}}

                            {{#ifConfigParam 'promo_add_link_to_webpage' '==' true}}
                            <div class="btn promo btn-with-image custom">
                                <a href="{{getConfigParam 'promo_link_webpage_link'}}" target="_blank">
                                    {{getConfigParam 'promo_link_webpage_title'}}
                                </a>
                            </div>
                            {{/ifConfigParam}}
                            <div class="btn book btn-with-icon custom">
                                <a href="#book">
                                    {{_t 'book'}}
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="main-content">
            <div class="main-reviews">
                 <div class="container-fluid column">
                    <div class="wrapper">
                        <div class="section-name">
                            Clients say
                        </div>
                        <div class="subtitle">
                            We support cyrillic languages
                        </div>
                        <div class="loggin-wrapper">
                            <div class="sign-in">
                                <div class="sign-in-buttons">
                                    <button class="sign-in-btn log-in">
                                        <a class="login" href="#"></a>
                                    </button>
                                    <button class="sign-in-btn facebook">
                                        <a class="facebbok" href="#"></a>
                                    </button>
                                    <button class="sign-in-btn twitter">
                                        <a class="twitter" href="#"></a>
                                    </button>
                                    <button class="sign-in-btn google">
                                        <a class="google" href="#"></a>
                                    </button>
                                </div>
                            </div>
                            <div class="back-reviews">
                                <div class="leave-review">please login to leave a review</div>
                                <button class="close-btn"></button>
                            </div>
                        </div>
                        <div class="reviews-wrapper">
                            <div class="review-slider">
                                <div class="review-container">
                                    <div class="review-inner">
                                        <div class="reviewer-photo ">
                                            <img src="http://www.topnews.in/light/files/Nicolas-Cage_14.jpg">
                                        </div>
                                        <div class="review-right-block">
                                            <div class="review-info">
                                                <span class="reviewer-name">Happy client</span>
                                                <div class="rating-container">
            				  				        <div class="rating-value" style="display: none;">5</div>
            				  				        <a class="stars-container">
            				  				            <i class="fa fa-star"></i>
            				  				            <i class="fa fa-star"></i>
            				  				            <i class="fa fa-star"></i>
            				  				            <i class="fa fa-star"></i>
            				  				            <i class="fa fa-star"></i>
            				  				        </a>
            				  		        	</div>
                                            </div>
                                            <div class="review-text">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam blandit odio id tellus 
                                                ultricies, a aliquam nunc varius. Duis ut ipsum sit amet ex dictum bibendum. Interdum 
                                                et malesuada fames ac ante ipsum primis in faucibus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam blandit odio id tellus 
                                                ultricies, a aliquam nunc varius.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="btn-div">
                                        <button class="add-btn"></button>
                                    </div>
                                </div>
                                <div class="review-container">
                                    <div class="review-inner">
                                        <div class="reviewer-photo ">
                                            <img src="https://resizing.flixster.com/B9bzkKG8smNTkX4LN2HWnoEX8_s=/300x300/v1.bjsxMTI5OTE2O2o7MTcyNDg7MTIwMDs2MDA7MjUx">
                                        </div>
                                        <div class="review-right-block">
                                            <div class="review-info">
                                                <span class="reviewer-name">Boris Borisovich</span>
                                                <div class="rating-container">
            				  				        <div class="rating-value" style="display: none;">5</div>
            				  				        <a class="stars-container">
            				  				            <i class="fa fa-star"></i>
            				  				            <i class="fa fa-star"></i>
            				  				            <i class="fa fa-star"></i>
            				  				            <i class="fa fa-star"></i>
            				  				            <i class="fa fa-star"></i>
            				  				        </a>
            				  		        	</div>
                                            </div>
                                            <div class="review-text">
                                                Duis ut ipsum sit amet ex dictum bibendum. Interdum 
                                                et malesuada fames ac ante ipsum primis in faucibus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam blandit odio id tellus 
                                                ultricies, a aliquam nunc varius.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam blandit odio id tellus 
                                                ultricies, a aliquam nunc varius.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam blandit odio id tellus 
                                                ultricies, a aliquam nunc varius.
                                                
                                            </div>
                                        </div>
                                    </div>
                                    <div class="btn-div">
                                        <button class="add-btn"></button>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
            <div class="main-news">
                <div class="container-fluid column">
                    <div class="wrapper">
                        <div class="inner">
                            <div class="section-name">
                                News
                            </div>
                            <div class="news-slider">
                                <div class="news-container">
                                    <div class="news-headline subtitle">News Headline goes here</div>
                                    <div class="news-content">
                                       <p>Quibus natura iure responderit non esse verum aliunde finem beate vivendi, 
                                        a se principia rei gerendae peti; Quae cum essent dicta, finem fecimus et ambulandi 
                                        et disputandi. Tenesne igitur, inquam, Hieronymus Rhodius quid dicat esse summum bonum,
                                        quo putet omnia referri oportere?
                                        </p> 
                                        <p>
                                       Quo invento omnis ab eo quasi capite de summo bono et malo disputatio ducitur. Sed 
                                       quid minus probandum quam esse aliquem beatum nec satis beatum? Sed emolumenta 
                                       communia esse dicuntur, recte autem facta et peccata non habentur communia. 
                                       Haec qui audierit, ut ridere non curet, discedet tamen nihilo firmior ad dolorem 
                                       ferendum, quam venerat. Ego vero volo in virtute vim esse quam maximam; 
                                       Quis enim confidit semper sibi illud stabile et firmum permansurum, quod fragile et
                                       caducum sit?  
                                        </p>
                                    </div>
                                    <div class="publ-date">22.01.2017</div>
                                    <div class="btn-container">
                                        <div class="btn btn-more"><a href="#">Read more</a></div>
                                    </div>
                                </div>
                                <div class="news-container">
                                    <div class="news-headline subtitle">2 News Headline goes here</div>
                                    <div class="news-content">
                                       <p>This is another awesome story just for you. Very interesting news, best news ever.
                                        Quibus natura iure responderit non esse verum aliunde finem beate vivendi, 
                                        a se principia rei gerendae peti; Quae cum essent dicta, finem fecimus et ambulandi 
                                        et disputandi. Tenesne igitur, inquam, Hieronymus Rhodius quid dicat esse summum bonum,
                                        quo putet omnia referri oportere?
                                        </p> 
                                        <p>
                                           Quo invento omnis ab eo quasi capite de summo bono et malo disputatio ducitur. Sed 
                                           quid minus probandum quam esse aliquem beatum nec satis beatum? Sed emolumenta 
                                           communia esse dicuntur, recte autem facta et peccata non habentur communia. 
                                           Haec qui audierit, ut ridere non curet, discedet tamen nihilo firmior ad dolorem 
                                           ferendum, quam venerat. Ego vero volo in virtute vim esse quam maximam; 
                                           Quis enim confidit semper sibi illud stabile et firmum permansurum, quod fragile et
                                           caducum sit?  
                                        </p>
                                    </div>
                                    <div class="btn-container">
                                        <div class="btn btn-more"><a href="#">Read more</a></div>
                                    </div>
                                </div>
                            </div>    
                        </div>
                    </div>
                </div>
                
            </div>
            <div id="preloader" style="max-width: 60px;position: absolute;left: 50%;top: 50%;transform: translate(-50%, -50%);z-index: 100;">
                <img src="/v2/themes/assets/img/waiting.gif" alt="">
            </div>
            <div id="sb_content">
                {{! CONTETN }}
            </div>
        </section>
    </main>
    <footer id="footer">
        <div class="container-fluid">
            <div class="row">
                <ul class="footer-ul footer-menu">
                    <li><a href="#">support</a></li>
                    <li><a href="#">contact us</a></li>
                    <li><a href="#">disclaimer</a></li>
                </ul>
                <ul class="footer-ul">
                    <li><a class="facebook" href="#"></a></li>
                    <li><a class="twitter" href="#"></a></li>
                    <li><a class="google" href="#"></a></li>
                </ul>
            </div>
        </div>
    </footer>
</div>

<div id="sb_dialog" class="modal" tabindex="-1" role="dialog"></div>