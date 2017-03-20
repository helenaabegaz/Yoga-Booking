<div id="membership-payment-history">
    <div class="table-responsive">
        <table class="table table-striped tab">
            <thead class="table-header">
                <tr>
                    <th>{{_t 'transaction_date'}}</th>
                    <th>{{_t 'item name'}}</th>
                    <th>{{_t 'amount'}}</th>
                    <th>{{_t 'payment_processor'}}</th>
                    <th>{{_t 'next payment date'}}</th>
                    <th>{{_t 'status'}}</th>
                </tr>
            </thead>
            <tbody id="sb_membership_payment_history">

            </tbody>
        </table>

        {{#ifHasTax}}
            <div>* - {{_t 'including sales tax'}}</div>
        {{/ifHasTax}}
    </div>
</div>