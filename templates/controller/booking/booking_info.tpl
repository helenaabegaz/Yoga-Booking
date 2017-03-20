<div class="booking-info">
    <ul class="clearfix">
        {{#ifCond 'location' 'in' steps}}
        <li class="step_info_item {{#if location_id}}passed{{/if}}">
            <a href="#{{bookingStepUrl location=false category=false service=false provider=false date=false time=false}}">
                <div class="tab">
                    {{#if location}}
                    {{location.title}}
                    {{/if}}
                </div>
                <!--<div class="content">
                    <div class="title-small">
                        {{_t "location_name"}}
                    </div>
                </div>
                -->
            </a>
        </li>
        {{/ifCond}}

        {{#ifCond 'category' 'in' steps}}
        <li class="step_info_item {{#if category_id}}passed{{/if}}">
            <a href="#{{bookingStepUrl category=false service=false provider=false date=false time=false}}">
                <div class="tab">
                    {{#if category}}
                    {{category.name}}
                    {{/if}}
                </div>
                <!--<div class="content">
                    <div class="title-small">
                        {{_t "category_name"}}
                    </div>
                </div>
                -->
            </a>
        </li>
        {{/ifCond}}

        {{#ifCond 'service' 'in' steps}}
        <li class="step_info_item {{#if service_id}}passed{{/if}}">
            <a href="#{{bookingStepUrl service=false provider=false date=false time=false}}">
                <div class="tab">
                    {{#if service}}
                    {{service.name}}
                    {{/if}}
                </div>
                <!--<div class="content">
                    <div class="title-small">
                        {{_t "service_name"}}
                    </div>
                </div>
                -->
            </a>
        </li>
        {{/ifCond}}

        {{#ifCond 'provider' 'in' steps}}
        <li class="step_info_item {{#if provider_id}}passed{{/if}}">
            <a href="#{{bookingStepUrl provider=false date=false time=false}}">
                <div class="tab">
                    {{#if provider}}
                    {{provider.name}}
                    {{/if}}
                </div>
                <!--<div class="content">
                    <div class="title-small">
                        {{_t "provider_name"}}
                    </div>
                </div>
                -->
            </a>
        </li>
        {{/ifCond}}

        {{#ifCond 'datetime' 'in' steps}}

        <li class="step_info_item {{#if start_time}}passed{{/if}}">
            <a href="#{{bookingStepUrl date=false time=false}}">
                <div class="tab">
                    {{#if start_date}}
                    {{formatDateTime start_datetime 'date' time_diff}}
                    {{/if}}
                    {{#if start_time}}
                    {{formatDateTime start_datetime 'time' time_diff}}
                    {{/if}}
                </div>
                <!--
                <div class="content">
                    <div class="title-small">
                        {{_t "time"}}
                    </div>
                </div>
                -->
            </a>
        </li>
        {{/ifCond}}

        {{#ifCond 'details' 'in' steps}}
        <li class="step_info_item">
            <a href="#{{bookingStepUrl}}">
                <!--<div class="content">
                    <div class="title-small">
                        {{_t "details"}}
                    </div>
                </div>
                -->
            </a>
        </li>
        {{/ifCond}}
    </ul>

    {{!--
    {{_t "client_name"}}:
    {{#if client_name}}
    {{client_name}}
    {{/if}}
    {{_t "count"}}:
    {{#if service}}
    {{#ifCond count '>' 1}}
    {{count}}
    {{/ifCond}}
    {{/if}}
    --}}
</div>
