<div class="modal-dialog timezone-modal" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <!-- <button type="button" class="close" data-dismiss="modal" aria-label="{{_t 'close'}}"><span aria-hidden="true">&times;</span></button> -->
            <h4 class="modal-title">{{_t 'select_timezone'}}</h4>
        </div>
        <div class="modal-body">
            <div class="tab-pd">
                <div class="cap">
                    {{_t 'please_select_your_timezone'}}:
                </div>
                <select id="sb_timezone_select" class="form-control">
                    {{#each options}}
                    <option value="{{id}}" {{#ifCond id '==' ../id}}selected="selected"{{/ifCond}}>
                        {{name}} ({{formatDateTime current_date_time 'time' 0}})
                    </option>
                    {{/each}}
                </select>
                {{!--
                <div class="client-time-select">
                <span class="your-time">Your time is:</span>
                <select id="hours">
                <option value="0">
                16
                </option>
                </select>
                <b>:</b>
                <select id="minutes">
                <option value="0">
                00
                </option>
                </select>
                <span class="your-zone">GMT+3</span>
                </div>
                <div class="performer-time">
                When our time is: <b>{{formatDateTime current_date_time 'time' 0}}</b>
                </div>
                <div class="day-time-savings">
                With day savings time: <input type="checkbox" value="0" checked>
                </div>
                --}}
            </div>
        </div>
        <div class="modal-footer">
            <div class="tab-pd">
                <button type="button" class="btn" id="sb_set_button"
                        data-dismiss="modal">{{_t 'sb_set_my_timezone'}}</button>
                <button type="button" class="btn" id="sb_cancel_button"
                        data-dismiss="modal">{{_t 'sb_cancel_timezone'}}</button>
            </div>
        </div>
    </div>
</div>
