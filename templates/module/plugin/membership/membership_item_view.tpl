<div class="membership-item item col-md-6 col-sm-6 col-xs-12">
    <div class="tab tab-module tab-with-popup">
        <div class="excerpt-info">
            <div class="preloader">
                {{#if file_id}}
                <div class="user img">
                    <img src="{{picture_path}}" alt="" class="user-img">
                </div>
                {{else}}
                <div class="default img">
                    <!--<img src="/v2/themes/assets/img/timeline/service.png" alt="">-->
                </div>
                {{/if}}
            </div>
            {{#if description}}
            <!--
                <div class="full-info-trigger">
                 <i class="fi flaticon-expand-button"></i>
                </div>
            -->
            {{/if}}
            <div class="tab-pd">
                <div class="content">
                    <div class="cap short sm-title">
                        {{{name}}}
                    </div>
                    <div class="txt short">
                        {{{description}}}
                    </div>
                    <div class="date-bar">
                        <div class="row no-gutter">
                            <div class="col-sm-6">
                                <span class="date">Duration: {{formatDuration duration type=duration_type}}</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mb btn-bar">
                    <div class="row no-gutter">
                        <div class="btn-inner">
                            <div class="button-container">
                                <div class="info-container">
                                    <span class="wrapper price-formatter">
                                        {{#ifCond recurring_price '>' 0}}
                                           <span class="ttl"> {{_t 'Renew price'}}</span>
                                            {{#formatPrice recurring_price currency=currency}}
                                                <span class="pr-numb">{{number}}</span><span class="pr-decimal">.{{decimal}}</span> <span class="pr-currency">{{currency}}</span>
                                            {{/formatPrice}}
                                        {{else}}
                                            {{_t 'Renew for free'}}
                                        {{/ifCond}}
                                    </span>
                                </div>
                            </div>
                            <div class="button-container">
                                <div class="active-container">
                                    <a href="#membership/buy/{{id}}" class="wrapper btn price-formatter">
                                        {{#ifCond first_price '>' 0}}
                                            <span class="ttl">{{_t 'Buy price'}}</span>
                                            {{#formatPrice first_price currency=currency}}
                                                <span class="pr-numb">{{number}}</span><span class="pr-decimal">.{{decimal}}</span> <span class="pr-currency">{{currency}}</span>
                                            {{/formatPrice}}
                                        {{else}}
                                            {{_t 'Buy for free'}}
                                        {{/ifCond}}
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--
        <div class="full-info">
            <div class="close-full-info">
                <i class="fi flaticon-cancel"></i>
            </div>
            <div class="preloader img-full">
                {{#if file_id}}
                <img src="{{picture_path}}" alt="" class="user-img">
                {{/if}}
            </div>
            <div class="tab-pd">
                <div class="cap full">{{{name}}}</div>
                <div class="txt full">{{{description}}}</div>
            </div>
        </div>
        -->
    </div>
</div>