<div>
    <div class="column">
        <!--<div class="title-main">{{_t 'Leave review'}}</div>-->
        {{#if errors.global_form}}
            <div class="has-error">
                <p class="help-block">{{errors.global_form}}</p>
            </div>
        {{/if}}
        {{#if data.logged_in}}
            <div class="add-review">
                <div class="avatar">
                    <div class="photo">
                        <img src="{{data.image}}">
                    </div>
                </div>
            <div class="review-content">
                <div class="info">
                    <a class="name" href="{{data.link}}" target="_blank">{{data.name}}</a>
                    <a class="logout" id="sb_client_review_logout" href="javascript: ;">{{_t '(Logout)'}}</a>
                    <div class="stars-container{{#if errors.message}} has-error{{/if}}">
                        <div class="rating-container">
                            <form>
                                <span class="star-cb-group">
                                    <input type="radio" name="rate" id="group-1-0" value="5"/>
                                    <label for="group-1-0"></label>
                                        
                                    <input type="radio" name="rate" id="group-1-1" value="4"/>
                                    <label for="group-1-1"></label>
            
                                    <input type="radio" name="rate" id="group-1-2" value="3"/>
                                    <label for="group-1-2"></label>
            
                                    <input type="radio" name="rate" id="group-1-3" value="2"/>
                                    <label for="group-1-3"></label>
            
                                    <input type="radio" name="rate" id="group-1-4" value="1" {{#ifCond data.rate '==' 1}}checked="checked"{{/ifCond}} />
                                    <label for="group-1-4"></label>
                                    <!--Unnecessary check backup{{#ifCond data.rate '==' 1}}checked="checked"{{/ifCond}} -->
                                </span>
                            </form>
                        </div>
                        <p class="help-block">{{errors.rate}}</p>
                    </div>
                </div>
                <div class="form">
                   <!-- <div class="form-group{{#if errors.subject}} has-error{{/if}}">
                        <div class="form-row required">
                            <input id="feedback__subject" value="{{data.subject}}" name="subject" placeholder="{{_t 'review_title'}}" type="text">
                            <p class="help-block">{{errors.subject}}</p>
                        </div>
                    </div>
                    -->
        
                        <div class="form-group{{#if errors.message}} has-error{{/if}}">
                            <div class="form-row required">
                                <textarea id="feedback__message" name="message" rows="7"
                                          placeholder="{{_t 'review_body'}}">{{data.message}}</textarea>
                                <p class="help-block">{{errors.message}}</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="buttons">
                    <div class="back-reviews">
                        <button class="close-btn"></button>
                    </div>
                        <div class="send-btn-container">
                            <button id="sb_submit_review" type="submit" class="btn custom" value="Post review"></button>
                        </div>
                </div>
            </div>
        </div>
        {{else}}
        <div class="sign-in">
            <div class="column">
                <div class="social-container loggin-wrapper">
                    <div class="sign-in"> 
                        <!--<div class="line-arrow line-arrow-top"></div>-->
                        <div class="buttons sign-in-buttons">
                            <div class="sign-in-btn log-in"></div>
                            <a href="/v2/review/login/provider/facebook" target="_blank" class="btn custom sign-in-btn facebook">
                                <!--<img src="/v2/themes/assets/img/fb-name.png" alt="Facebook">-->
                            </a>
                            <a href="/v2/review/login/provider/twitter" target="_blank" class="sign-in-btn twitter btn custom">
                                <!--<img src="/v2/themes/assets/img/tw-name.png" alt="Twitter">-->
                            </a>
                            <a href="/v2/review/login/provider/google" target="_blank" class="sign-in-btn google btn custom">
                                <!--<img src="/v2/themes/assets/img/gl-name.png" alt="Google">-->
                            </a>
                        </div>
                    </div>
                </div>
                <div class="back-reviews">
                    <div class="cap leave-review">{{_t 'please login to leave a review'}}</div>
                    <button class="close-btn"></button>
                </div>
            {{/if}}
            </div>
        </div>
    </div>
</div>