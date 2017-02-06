<div class="cart-container">
    <div class="cart item-container">
        <img class="cart-img" src="/v2/themes/concise/img/cart.png" alt="">
        <div class="counter">{{count}}</div>
    </div>
    <div class="full-info">
        <div class="tab-pd">
            <div class="bookings" id="sb_multiple_booking_list"></div>
            {{#if count}}
            <div class="filled">
                <div class="bottom-block pd">
                    {{!--<div class="terms">
                        When you click on the button, you agree
                        to simplybook.me <a href="#">terms & conditions</a>
                    </div>--}}
                    <div class="btn custom book-btn">
                        <a href="#" class="nav-popup-hide" id="sb_multiple_booking_popup_btn">
                            {{_t 'book_now'}}
                        </a>
                    </div>
                </div>
            </div>
            {{else}}
            <div class="empty">
                <img src="/v2/themes/assets/img/cart-nav.png" alt="">
                <div class="txt">{{_t 'your_cart_is_empty'}}</div>
            </div>
            {{/if}}
        </div>
    </div>
</div>