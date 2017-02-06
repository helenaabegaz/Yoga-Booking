<div class="tab modal-tabs">
    <div class="row">
        <div class="col-sm-4">
            <div class="img">
                <a href="#{{bookingStepUrl service=id}}">
                    {{#if picture_path}}
                    <img src="{{picture_path}}" alt="">
                    {{else}}
                    <img src="/v2/themes/assets/img/timeline/service.png" alt="">
                    {{/if}}
                </a>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="cap-short">
                <a href="#{{bookingStepUrl service=id}}">{{name}}</a>
            </div>
            <div class="sb_group_booking_count"></div>
        </div>
        <div class="col-sm-3">
            <div class="bar-service">
                {{#ifCond hide_duration '==' false}}
                <div class="time">
                    Duration:
                    <span>{{formatDuration duration}}</span>
                </div>
                {{/ifCond}}
                {{#ifCond price '>' 0}}
                <div class="price">{{{formatPrice price currency=currency}}}</div>
                {{/ifCond}}
            </div>
            {{!--<div>{{formatDuration duration}}</div>
            <div>{{formatPrice price currency=currency}}</div>--}}
        </div>
    </div>
</div>
