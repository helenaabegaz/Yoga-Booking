<ul class="nav clearfix">
    <li>
        <a class="nav-popup-hide" href="#about-us">About us</a>
    </li>
    <li>
        <a class="nav-popup-hide" href="#book">Our services</a>
    </li>
    {{#ifConfigParam 'feedbacks_disabled' '!=' true}}
    <li {{#ifCond active_menu_item '==' 'reviews'}} class="active" {{/ifCond}}>
        <a class="nav-popup-hide" href="#sb_reviews_module">{{_t 'reviews'}}</a>
    </li>
    {{/ifConfigParam}}
    {{#if plugins.gallery}}
    <li {{#ifCond active_menu_item '==' 'gallery'}} class="active" {{/ifCond}}>
        <a class="nav-popup-hide" href="#sb_gallery">{{_t "menu_gallery"}}</a>
    </li>
    {{/if}}
    <li>
        <a class="nav-popup-hide" href="#sb_map">Contacts</a>
    </li>
</ul>