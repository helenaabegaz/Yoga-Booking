<div class="col-sm-12 full-width-col">
    <div id="client-login" class="section">
        <div class="tab-pd">
            <div class="title-main">
                {{_t 'Please sign in to continue'}}
            </div>
            <div class="custom-form clearfix">
                <div class="form-row">
                    <div class="col-sm-6 col-xs-12 form-col">
                        <div class="form-horizontal" id="sb_sign_in_form">
                            <div class="cap">
                                {{_t 'sign_in_existing_client'}}
                            </div>
                            <div class="form-group row{{#if sign_in_errors.email}} has-error{{/if}}">
                                <!--<label for="sb_sign_in_email" class="col-sm-4 control-label">{{_t 'email'}}</label>-->
                                <div class="col-sm-12">
                                    <input type="email" class="form-control" id="sb_sign_in_email" name="email" value="{{sign_in_data.email}}" placeholder="{{_t 'email'}}">
                                    <p class="help-block">{{sign_in_errors.email}}</p>
                                </div>
                            </div>
                            <div class="form-group row{{#if sign_in_errors.password}} has-error{{/if}}">
                                <!--<label for="sb_sign_in_password" class="col-sm-4 control-label">{{_t 'password'}}</label>-->
                                <div class="col-sm-12">
                                    <input type="password" class="form-control" id="sb_sign_in_password" name="password" value="{{sign_in_data.password}}" placeholder="{{_t 'password'}}">
                                    <p class="help-block">{{sign_in_errors.password}}</p>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-12">
                                    <a class="txt-right remind-pass" href="#client/remind-password">{{_t 'remind_password'}}</a>
                                </div>
                            </div>
                            <div class="form-group row button-row">
                                <div class="col-sm-12">
                                    <button type="button" class="btn custom" id="sb_sign_in_btn">{{_t 'sign_in_and_continue'}}</button>
                                </div>
                            </div>
                            {{#if sign_in_errors.global_error}}
                            <div class="has-error">
                                <p class="help-block">{{sign_in_errors.global_error}}</p>
                            </div>
                            {{/if}}
                        </div>
                    </div>
                    {{#if allow_registration}}
                    <div class="col-sm-6 col-xs-12 form-col">
                        <div class="border hidden-xs hidden-sm"></div>
                        <div class="form-horizontal" id="sb_sign_up_form">
                            <div class="cap">
                                {{_t 'sign_up_new_client'}}
                            </div>
                            {{#if sign_up_errors.global_error}}
                            <div class="has-error">
                                <p class="help-block">{{sign_up_errors.global_error}}</p>
                            </div>
                            {{/if}}
                            <div class="form-group row{{#if sign_up_errors.name}} has-error{{/if}}">
                                <!--<label for="sb_sign_up_name" class="col-sm-4 control-label">{{_t 'name'}}</label>-->
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" id="sb_sign_up_name" name="name" value="{{sign_up_data.name}}" placeholder="{{_t 'name'}}">
                                    <p class="help-block">{{sign_up_errors.name}}</p>
                                </div>
                            </div>
                            <div class="form-group row{{#if sign_up_errors.email}} has-error{{/if}}">
                                <!--<label for="sb_sign_up_email" class="col-sm-4 control-label">{{_t 'email'}}</label>-->
                                <div class="col-sm-12">
                                    <input type="email" class="form-control" id="sb_sign_up_email" name="email" value="{{sign_up_data.email}}" placeholder="{{_t 'email'}}">
                                    <p class="help-block">{{sign_up_errors.email}}</p>
                                </div>
                            </div>
                            <div class="form-group row{{#if sign_up_errors.phone}} has-error{{/if}}">
                                <!--<label for="sb_sign_up_phone" class="col-sm-4 control-label">{{_t 'phone'}}</label>-->
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" id="sb_sign_up_phone" name="phone" value="{{sign_up_data.phone}}" placeholder="{{_t 'phone'}}">
                                    <p class="help-block">{{sign_up_errors.phone}}</p>
                                </div>
                            </div>
                            {{#if sign_up_data.user_id}}{{else}}
                            <div class="form-group row{{#if sign_up_errors.password}} has-error{{/if}}">
                                <!--<label for="sb_sign_up_password" class="col-sm-4 control-label">{{_t 'password'}}</label>-->
                                <div class="col-sm-12">
                                    <input type="password" class="form-control" id="sb_sign_up_password" name="password" value="{{sign_up_data.password}}" placeholder="{{_t 'password'}}">
                                    <p class="help-block">{{sign_up_errors.password}}</p>
                                </div>
                            </div>
                            {{/if}}
                            <div class="form-group row button-row">
                                <div class="col-sm-12">
                                    <button type="button" class="btn custom" id="sb_sign_up_btn">{{_t 'sign_up'}}</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                {{/if}}
                <div class="client-login-bar">
                    <div class="social">
                        <div class="txt">{{_t 'or sign up via'}}</div>
                        <div class="brand">
                            <a class="facebook" href="{{baseUrl}}/client/openid/provider/facebook/" target="_blank">
                                <!--<img src="/v2/themes/assets/img/fb.png" alt="">-->
                            </a>
                            <a class="twitter" href="{{baseUrl}}/client/openid/provider/twitter/" target="_blank">
                                <!--<img src="/v2/themes/assets/img/tw.png" alt="">-->
                            </a>
                            <a class="google" href="{{baseUrl}}/client/openid/provider/google/" target="_blank">
                                <!--<img src="/v2/themes/assets/img/gl.png" alt="">-->
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>