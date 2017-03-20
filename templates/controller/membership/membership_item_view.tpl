<div class="membership-item col-md-6">
    <div class="tab">
        <div class="excerpt-info">
            {{#if file_id}}
            <div class="image">
                {{#if is_purchased}}
                <div class="purchased">
                    {{_t 'purchased'}}
                </div>
                {{/if}}
                <div class="user">
                    <img src="{{picture_path}}" alt="">
                </div>
            </div>
            {{/if}}
            <div class="tab-pd">
                <div class="cap sm-title">
                    {{{name}}}
                </div>
                <div class="txt">
                    {{{description}}}
                </div>
                <div class="date-bar">
                    <div class="row no-gutter">
                        {{#if client_id}}
                        <div class="col-sm-6 plan-dates">
                                <span class="icon"
                                      style="background-image: url(/v2/themes/assets/img/member-sprite.png)"></span>
                            <span class="date">{{_t 'Start'}}: {{formatDateTime period_start 'date' 0}}</span>
                        </div>
                        <div class="col-sm-6 plan-dates">
                                <span class="icon"
                                      style="background-image: url(/v2/themes/assets/img/member-sprite.png)"></span>
                            <span class="date">{{_t 'End'}}: {{formatDateTime period_end 'date' 0}}</span>
                        </div>
                        {{#if next_payment_date}}
                        <div class="col-sm-12">
                            <span class="date">{{_t 'next_payment'}}: {{formatDateTime next_payment_date 'date' 0}}</span>
                        </div>
                        {{/if}}
                        {{else}}
                        <div class="col-sm-6">
                            <span class="icon clock"
                                      style="background-image: url(/v2/themes/assets/img/clock.png)"></span>
                            <span class="date">Duration: {{formatDuration duration type=duration_type}}</span>
                        </div>
                        {{/if}}
                    </div>
                </div>
                <div class="mb btn-bar">
                    <div class="row row-eq-height-xs no-gutter">
                        <div class="btn-inner">
                        {{#if client_id}}
                        {{#if recurring_status}}
                        <div class="button-container">
                            <div class="info-container">
                                    <div class="wrapper price-formatter">
                                        {{#ifCond recurring_price '>' 0}}
                                        {{_t 'automatic renew for'}}
                                        {{#formatPrice recurring_price currency=currency include_tax=true}}
                                            <span class="pr-numb">{{number}}</span>{{#if decimal}}<span class="pr-decimal"> .{{decimal}}</span>{{/if}} <span
                                                class="pr-currency">{{currency}}</span>
                                        {{/formatPrice}}
                                        {{else}}
                                        {{_t 'automatic renew for free'}}
                                        {{/ifCond}}
                                    </div>
                            </div>
                        </div>
                        <div class="button-container">
                            <div class="active-container {{#ifCond recurring_status '==' 'active'}}cancel{{/ifCond}}">
                                {{#ifCond recurring_status '==' 'active'}}
                                <div class="wrapper sb_cancel_recurring">
                                    {{_t 'cancel recurring'}}
                                </div>
                                {{else}}
                                <div class="wrapper">
                                    {{_t 'recurring status %status%' status=recurring_status}}
                                </div>
                                {{/ifCond}}
                            </div>
                        </div>
                        {{else}}
                        {{#if allowed_to_buy}}
                        <div class="button-container">
                            <div class="active-container">
                                <a href="#membership/renew/{{id}}" class="wrapper btn price-formatter">
                                    {{#ifCond recurring_price '>' 0}}
                                        <span class="ttl">{{_t 'Renew price'}}</span>
                                        {{#formatPrice recurring_price currency=currency include_tax=true}}
                                            <span class="pr-numb">{{number}}</span>{{#if decimal}}<span class="pr-decimal">.{{decimal}}</span>{{/if}} <span  class="pr-currency">{{currency}}</span>
                                        {{/formatPrice}}
                                    {{else}}
                                    {{_t 'Renew for free'}}
                                    {{/ifCond}}
                                </a>
                            </div>
                        </div>
                        {{/if}}
                        {{/if}}
                        {{else}}
                        <!--<div class="col-sm-{{#if is_purchased}}12{{else}}6{{/if}}">-->
                        <div class="button-container">
                            <div class="info-container">
                                {{#if is_purchased}}
                                <a href="#membership/renew/{{id}}" class="wrapper btn price-formatter">
                                    {{#ifCond recurring_price '>' 0}}
                                        <span class="ttl">{{_t 'Renew price'}}</span>
                                        {{#formatPrice recurring_price currency=currency include_tax=true}}
                                            <span class="pr-numb">{{number}}</span>{{#if decimal}}<span class="pr-decimal">.{{decimal}}</span>{{/if}} <span  class="pr-currency">{{currency}}</span>
                                        {{/formatPrice}}
                                    {{else}}
                                        {{_t 'Renew for free'}}
                                    {{/ifCond}}
                                </a>
                                {{else}}
                                <div class="wrapper price-formatter">
                                    {{#ifCond recurring_price '>' 0}}
                                        <span class="ttl">{{_t 'Renew price'}}</span>
                                        {{#formatPrice recurring_price currency=currency include_tax=true}}
                                            <span class="pr-numb">{{number}}</span>{{#if decimal}}<span class="pr-decimal">.{{decimal}}</span>{{/if}} <span  class="pr-currency">{{currency}}</span>
                                        {{/formatPrice}}
                                    {{else}}
                                    {{_t 'Renew for free'}}
                                    {{/ifCond}}
                                </div>
                                {{/if}}
                            </div>
                        </div>
                        {{#unless is_purchased}}
                        <div class="button-container">
                            <div class="active-container">
                                <a href="#membership/buy/{{id}}" class="wrapper btn price-formatter">
                                    {{#ifCond first_price '>' 0}}
                                        <span class="ttl">{{_t 'Buy price'}}</span>
                                        {{#formatPrice first_price currency=currency include_tax=true}}
                                            <span class="pr-numb">{{number}}</span>{{#if decimal}}<span class="pr-decimal">.{{decimal}}</span>{{/if}} <span class="pr-currency">{{currency}}</span>
                                        {{/formatPrice}}
                                    {{else}}
                                        {{_t 'Buy for free'}}
                                    {{/ifCond}}
                                </a>
                            </div>
                        </div>
                        {{/unless}}
                        {{/if}}
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>