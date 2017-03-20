<div id="booking-result-view" class="membership-result-view">
    <div id="booking-result-tabs">
        <div class="container-fluid column">
            <div class="section-name">Membership plans</div>
            <div class="tabs-container">
                {{#ifConfigParam 'membership_has_active_memberships' '==' true}}
                <div class="tab-link{{#ifCond type '==' 'list'}} active{{/ifCond}}">
                    <a href="#membership">{{_t 'membership plans'}}</a>
                </div>
                {{/ifConfigParam}}
                <div class="tab-link{{#ifCond type '==' 'client'}} active{{/ifCond}} {{#ifCond type '==' 'history'}} underline{{/ifCond}}">
                    <a href="#membership/my">{{_t 'purchased plans'}}</a>
                </div>
                <div class="tab-link{{#ifCond type '==' 'history'}} active{{/ifCond}}">
                    <a href="#membership/my/payment-history">{{_t 'payments history'}}</a>
                </div>
            </div>
            <div id="sb_membership_filter_container"></div>
        </div>
    </div>
    <div id="membership-view">
        <div class="page-pd">
            <div class="container-fluid column">
                <div id="sb_membership_payment_status"></div>
                <!--<div id="sb_membership_filter_container"></div>-->
                <div id="sb_membership_list_container"></div>
                <div id="sb_membership_history_container"></div>
            </div>
        </div>
    </div>
</div>

