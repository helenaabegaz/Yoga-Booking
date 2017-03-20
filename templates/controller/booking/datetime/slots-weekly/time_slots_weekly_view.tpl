<div class="row slots-weekly-view">
    <!-- 
    <div class="col-sm-4 col-md-3">
        {{> bookingInfoSideBarPart}}
    </div>
    */-->
    <div class="col-sm-12 col-md-12">
        <div class="timeline-wrapper">
            <div class="tab-pd">
                <div class="header">
                    <div class="row row-eq-height">
                        <li class="col-xs-3">
                            <div class="txt-left">
                                <div id="sb_next_month">
                                    <a href="#{{bookingStepUrl date=prev_date}}">
                                        <span class="fa fa-angle-left" aria-hidden="true"></span>
                                        <span class="txt">
                                            {{_t "prev_date"}}
                                        </span>
                                    </a>
                                </div>
                            </div>
                        </li>
                        <li class="col-xs-6">
                            <div class="txt-center">
                                <div>
                                    {{formatMonth current_month}} {{current_year}}
                                </div>
                            </div>
                        </li>
                        <li class="col-xs-3">
                            <div class="txt-right">
                                <div id="sb_prev_month">
                                    <a href="#{{bookingStepUrl date=next_date}}">
                                        <span class="txt">
                                            {{_t "next_date"}}
                                        </span>
                                        <span class="fa fa-angle-right" aria-hidden="true"></span>
                                    </a>
                                </div>
                            </div>
                        </li>
                    </div>
                </div>

                {{#if error_message}}
                <div class="alert alert-danger alert-dismissible" role="alert">
                    {{error_message}}
                </div>
                {{/if}}
                <div id="sb_time_slots_weekly_container" class="slots-weekly-timeline timeframe-{{timeframe}}"></div>
            </div>
        </div>
    </div>
</div>