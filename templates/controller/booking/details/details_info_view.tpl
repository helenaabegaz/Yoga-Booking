<div id="details" class="section">
    <div class="section-pd">
        <div class="title-main">
            {{_t 'confirm_details' }}
        </div>
        <div class="detail-step clearfix">
            <div class="col-sm-6">
                <div class="left-side">
                    <div class="add-details">
                        {{#if errors.global_form}}
                        <div role="alert" class="alert alert-danger alert-dismissible">
                            <button aria-label="Close" data-dismiss="alert" class="close" type="button">
                                <span aria-hidden="true">×</span>
                            </button>
                            <div>{{errors.global_form}}</div>
                        </div>
                        {{/if}}
                        <div class="custom-form">
                            <div class="form-horizontal">
                                <div id="sb_client_info_container">
                                    <div class="form-group{{#if errors.client_name}} has-error{{/if}}">
                                        <label class="control-label required" for="email"><span class="label-name">{{_t 'name'}}:</span><span
                                                    class="required">*</span></label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" name="client_name"
                                                   id="sb_client_name"
                                                   placeholder="{{_t 'enter_name'}}" value="{{ client_name }}"
                                                   {{#if client_info_readonly}}readonly{{/if}}>
                                            {{#if errors.client_name}}<span
                                                    class="help-block">{{_t errors.client_name}}</span>{{/if}}
                                        </div>
                                    </div>
                                    <div class="form-group{{#if errors.client_email}} has-error{{/if}}">
                                        <label class="control-label {{#ifConfigParam 'client_email_required' '==' true}}required{{/ifConfigParam}}"
                                               for="pwd"><span class="label-name">{{_t 'email'}}:</span><span
                                                    class="required">*</span></label>
                                        <div class="col-sm-8">
                                            <input type="email" class="form-control" name="client_email"
                                                   id="sb_client_email"
                                                   placeholder="{{_t 'enter_email'}}" value="{{ client_email }}"
                                                   {{#if client_info_readonly}}readonly{{/if}}>
                                            {{#if errors.client_email}}<span
                                                    class="help-block">{{_t errors.client_email}}</span>{{/if}}
                                        </div>
                                    </div>
                                    <div class="form-group{{#if errors.client_phone}} has-error{{/if}}">
                                        <label class="control-label {{#ifConfigParam 'client_phone_required' '==' true}}required{{/ifConfigParam}}"
                                               for="pwd"><span class="label-name">{{_t 'phone'}}:</span><span
                                                    class="required">*</span></label>
                                        <div class="col-sm-8">
                                            <div class="input-group">
                                                {{#if country_prefix_is_fixed}}
                                                <span class="input-group-addon">{{country_prefix}}</span>
                                                {{/if}}
                                                <input type="tel" class="form-control {{#if country_prefix_is_fixed}}has-country-prefix{{/if}}" name="client_phone"
                                                       id="sb_client_phone"
                                                       placeholder="{{_t 'enter_phone'}}" value="{{ client_phone }}"
                                                       {{#if client_info_readonly}}readonly{{/if}}>
                                            </div>
                                            {{#if errors.client_phone}}<span
                                                    class="help-block">{{_t errors.client_phone}}</span>{{/if}}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="login-bar">
                            <div class="row">
                                    <div class="col-sm-offset-4 col-sm-8">
                                        <div id="sb_client_login_container"></div>
                                        <div id="sb_fb_container"></div>
                                    </div>
                                </div>
                        </div>
                        <div class="custom-form">
                            <div class="form-horizontal">
                                <div id="sb_additional_fields_container"></div>
                                <div id="sb_promo_container"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="section-divider"></div>
            <div class="col-sm-6">
                <div class="right-side">
                    <div class="confirm-details">
                        <div class="highlighted-current-booking">
                            {{> bookingInfoPart show_buttons=false}}
                        </div>
                        <div id="sb_multiple_booking_list_container"></div>
                        <div class="license-links-container">
                            <div id="sb_license_container">
                                {{{_t 'license_link_text_<a href="https://simplybook.me/company/terms-and-conditions">link</a>' server=server_address project=project_name}}}{{#ifPluginActive 'user_license'}} {{_t 'and'}} {{/ifPluginActive}}
                            </div>
                            <div id="sb_user_license_container"></div>
                            <div id="sb_cancellation_policy_container"></div>
                        </div>
                        <div class="buttons-container">
                            <div id="sb_multiple_booking_button_container"></div>
                            <div class="sb-book-btn-container">
                                <div id="sb_book_btn" class="btn custom btn-with-image">
                                <span>
                                    {{_t 'book_btn_title'}}
                                </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>