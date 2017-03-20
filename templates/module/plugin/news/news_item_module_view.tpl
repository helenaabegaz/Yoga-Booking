<div class="article news-container clearfix">
    <div class="cap news-headline subtitle">
        <!--<a href="#news/{{id}}">{{name}}</a>-->
        {{name}}
    </div>
    <div class="txt news-content">
        {{{short_content}}}
        <div class="txt-long">
            {{{content}}}
        </div>
    </div>
    <div class="date publ-date">
        <b>{{company_name}}</b> {{date}}
    </div>
    <div class="bar btn-container">
        <div class="read-more btn btn-more">
            <a href="#news/{{id}}">
                {{_t 'read-more'}}
            </a>
        </div>
        <div class="hide-btn btn">
            <a href="#">
                Hide
            </a>
        </div>
    </div>
</div>