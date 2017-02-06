<div class="current-booking-info">
    <div class="cap mg">
        {{service.name}}
    </div>
    <div class="booking-info mg">
        <div class="booking-overview">
            <table>
                {{#if start_date}}
                <tr>
                    <td class="label">{{_t 'date_start'}}:</td>
                    <td class="info">
                        {{#if recurring_dates}}
                        {{#each recurring_dates}}
                        <div class="item">
                            {{formatDateTime this 'date' time_diff}}{{#unless @last}}, {{/unless}}
                        </div>
                        {{/each}}
                        {{else}}
                        {{formatDateTime start_datetime 'date' time_diff}}
                        {{/if}}
                    </td>
                </tr>
                {{/if}}
                {{#if start_time}}
                <tr>
                    <td class="label">{{_t 'starts_at'}}:</td>
                    <td class="info">
                        {{formatDateTime start_datetime 'time' time_diff}}
                    </td>
                </tr>
                {{/if}}
                {{#if end_time}}
                {{#ifCond service.hide_duration '==' false}}
                <tr>
                    <td class="label">{{_t 'ends_at'}}:</td>
                    <td class="info">
                        {{formatDateTime end_datetime 'time' time_diff}}
                    </td>
                </tr>
                {{/ifCond}}
                {{/if}}
                {{#if provider.name}}
                <tr>
                    <td class="label">{{_t 'provider_name'}}:</td>
                    <td class="info">
                        {{provider.name}}
                    </td>
                </tr>
                {{/if}}
                {{#if location}}
                <tr>
                    <td class="label">{{_t 'location_name'}}:</td>
                    <td class="info">
                        {{location.address1}} {{location.city}} {{location.address2}}
                    </td>
                </tr>
                {{/if}}
                {{#if code}}
                {{#if additional_fields_values}}
                <tr>
                    <td class="label">{{_t 'additional_fields'}}:</td>
                    <td class="info">
                        {{#each additional_fields_values}}
                        <div class="item">
                            {{#ifCond field_type '!=' 'checkbox'}}
                            {{field_title}}: {{value}}
                            {{else}}
                                {{field_title}}: {{#if value}}{{_t 'yes'}}{{else}}{{_t 'no'}}{{/if}}
                            {{/ifCond}}
                        </div>
                        {{/each}}
                    </td>
                </tr>
                {{/if}}
                {{/if}}
                {{#if code}}
                <tr>
                    <td class="label">{{_t 'code'}}:</td>
                    <td class="info">
                        {{code}}
                    </td>
                </tr>
                {{/if}}
                {{#if is_result}}
                    <tr>
                        <td class="label">{{_t 'status'}}:</td>
                        <td class="info">
                            {{_t status_text}}
                        </td>
                    </tr>
                {{/if}}
            </table>
        </div>
    </div>
    {{#ifCond service.price '>' 0}}
    <div class="booking-price mg">
        <div class="row">
            <div class="col-sm-12">
                <div class="full-price">
                    {{_t 'price'}}: {{{formatPrice service.price currency=service.currency}}}
                </div>
                {{#if service.amount_with_tax}}
                <div class="full-price-with-tax">
                    {{_t 'including sales tax'}}: {{{formatPrice service.amount_with_tax currency=service.currency}}}
                </div>
                {{/if}}
            </div>
        </div>
    </div>
    {{/ifCond}}
    {{#if show_buttons}}
    <div class="booking-btns">
        <div class="row">
            <div class="col-sm-12">
                {{#if is_cancellable}}
                <div class="btn custom btn-with-icon sb_cancel_btn">
                    <span>
                        {{_t 'cancel'}}
                    </span>
                </div>
                {{/if}}
                {{#if is_result}}
                <div class="btn custom btn-with-icon sb-book">
                    <a href="#{{bookingStepUrl location=location.id category=category.id service=service.id provider=provider.id time=false}}"
                       class="sb_book_again">
                        {{_t 'book-again'}}
                    </a>
                </div>
                {{/if}}


                {{#if show_calendar_button}}{{#ifCond status '!=' 'cancelled'}}
                <div class="btn custom btn-with-icon sb_add_to_cal " data-toggle="modal"
                     data-target="#cal_modal_{{code}}">
                    <span>
                        {{_t 'add_to_calendar'}}
                    </span>
                </div>
                <div class="modal" id="cal_modal_{{code}}" tabindex="-1" role="dialog"
                     aria-labelledby="cal_modal_label_{{code}}">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                            aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="cal_modal_label_{{code}}">{{_t 'add_to_calendar'}}</h4>
                            </div>
                            <div class="modal-body">
                                <div class="tab-pd">
                                    <ul class="buttons calendar-popup">
                                        <li>
                                            <div class="btn btn-with-image google">
                                                <a target="_blank"
                                                   href="https://www.google.com/calendar/render?action=TEMPLATE&amp;text={{service.name}}&amp;dates={{formatDateTime start_datetime 'custom' time_diff format='YmdTHis'}}%2F{{formatDateTime end_datetime 'custom' time_diff format='YmdTHis'}}&amp;sf=1&amp;output=xml">
                                                    Google calendar
                                                </a>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="btn btn-with-image apple">
                                                <a target="_blank" href="/v2/client/get-ical/id/{{id}}/">
                                                    Apple iCalendar
                                                </a>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="btn btn-with-image outlook">
                                                <a target="_blank" href="/v2/client/get-ical/id/{{id}}/">
                                                    Outlook
                                                </a>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="btn btn-with-image outlook-com">
                                                <a target="_blank"
                                                   href="http://calendar.live.com/calendar/calendar.aspx?rru=addevent&amp;dtstart={{formatDateTime start_datetime 'custom' time_diff format='YmdTHis'}}&amp;dtend={{formatDateTime end_datetime 'custom' time_diff format='YmdTHis'}}&amp;summary={{service.name}}">
                                                    Outlook.com
                                                </a>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="btn btn-with-image yahoo">
                                                <a target="_blank"
                                                   href="http://calendar.yahoo.com/?v=60&amp;DUR={{service.duration}}&amp;TITLE={{service.name}}&amp;ST={{formatDateTime end_datetime 'custom' time_diff format='YmdTHis'}}">
                                                    Yahoo
                                                </a>
                                            </div>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <div class="tab-pd">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                {{/ifCond}}{{/if}}
            </div>
        </div>
    </div>
    {{/if}}
</div>