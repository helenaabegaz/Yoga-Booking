<div class="service-item item {{tabGridClass}}">
    <div class="tab tab-with-popup">
        <div class="excerpt-info">
            <div class="preloader">
                <a href="#{{bookingStepUrl service=id}}">
                    {{#if picture}}
                    <div class="user img">
                        <img src="{{picture_path}}" alt="" class="user-img">
                    </div>
                    {{else}}
                    <div class="default img">
                        <img src="/v2/themes/assets/img/timeline/service.png" alt="">
                    </div>
                    {{/if}}
                </a>
            </div>
            <div class="full-info-trigger">
                <i class="fi flaticon-expand-button"></i>
            </div>
            <div class="tab-pd">
                <div class="content">
                    <div class="cap short">{{name}}</div>
                    <div class="sb_group_booking_count"></div>
                    <div class="bar-service">
                        <div class="clearfix">
                            {{#ifCond hide_duration '==' false}}
                            <div class="time">
                                <span>Duration:
                                {{formatDuration duration}}
                            </span>
                            </div>
                            {{/ifCond}}
                            {{#ifCond price '>' 0}}
                            <div class="price">
                                {{{formatPrice price currency=currency}}}
                            </div>
                            {{/ifCond}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="full-info">
            <div class="close-full-info">
                <i class="fi flaticon-cancel"></i>
            </div>
            <div class="preloader img-full">
                {{#if picture}}
                    <img src="{{picture_path}}" alt="" class="user-img">
                {{/if}}
            </div>
            <div class="tab-pd">
                <div class="cap full">{{name}}</div>
                <div class="txt full">{{{description}}}</div>
            </div>
        </div>
    </div>
</div>