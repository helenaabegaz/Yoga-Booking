{{!-- @todo: please check this part. --}}


<div id="booking-result-view">
    <div id="booking-result-tabs">
        <div class="underline"></div>
        <div class="container-fluid column">
            {{#if type}}
            <div class="tabs-container">
                <div class="underlined-link underlined tab-link{{#ifCond type '==' 'upcoming'}} active{{/ifCond}}">
                    <a href="#client/bookings/type/upcoming">{{_t 'upcoming bookings'}}</a>
                </div>
                <div class="underlined-link tab-link{{#ifCond type '==' 'past'}} active{{/ifCond}}">
                    <a href="#client/bookings/type/past">{{_t 'past bookings'}}</a>
                </div>
                {{!--<div class="tab-link{{#ifCond type '==' 'all'}} active{{/ifCond}}">
                    <a href="#client/bookings/type/all">{{_t 'all bookings'}}</a>
                </div>--}}
            </div>
            {{/if}}
        </div>
    </div>
    <div class="container-fluid column">
        <div class="row">
            <div  class="section-pd">
                <div id="sb_message_container">{{ status }}</div>
                <div id="sb_bookings_list"></div>
                <div class="clearfix"></div>

                {{#unless all_bookings_shown}}
                <a class="btn btn-default" href="#client/bookings/type/all">{{_t "show_all_bookings"}}</a>
                {{/unless}}

            </div>
            <div id="sb_back_btns_plugin"></div>
        </div>
    </div>
</div>

