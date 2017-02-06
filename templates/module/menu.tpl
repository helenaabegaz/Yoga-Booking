<ul class="nav clearfix">
    <li>
        <a class="nav-popup-hide" href="#">About us</a>
    </li>
    <li>
        <a class="nav-popup-hide" href="#">Our services</a>
    </li>
    {{#ifConfigParam 'feedbacks_disabled' '!=' true}}
    <li {{#ifCond active_menu_item '==' 'reviews'}} class="active" {{/ifCond}}>
        <a class="nav-popup-hide" href="#reviews">{{_t 'reviews'}}</a>
    </li>
    {{/ifConfigParam}}
    {{#if plugins.gallery}}
    <li {{#ifCond active_menu_item '==' 'gallery'}} class="active" {{/ifCond}}>
        <a class="nav-popup-hide" href="#gallery">{{_t "menu_gallery"}}</a>
    </li>
    {{/if}}
    <li>
        <a class="nav-popup-hide" href="#">Gallery</a>
    </li>
    <li>
        <a class="nav-popup-hide" href="#">Contacts</a>
    </li>
</ul>