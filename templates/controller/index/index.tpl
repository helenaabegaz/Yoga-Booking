<section id="content-view">
    <div class="container-fluid column">
        {{#ifCond (getThemeOption 'main_page_mode') '==' 'default'}}
        <div class="row row-eq-height-xs default">
            <div class="tab col-sm-4 col-md-3">
                {{> mainPageWorkingHoursPart}}
            </div>
            <div class="tab col-sm-4 col-md-6">
                {{> mainPageAboutUsPart}}
            </div>
            <div class="tab col-sm-4 col-md-3">
                {{> mainPageContactsPart}}
            </div>
        </div>
        {{/ifCond}}
        {{#ifCond (getThemeOption 'main_page_mode') '==' 'description_only'}}
        <div class="row description_only">
            <div class="tab col-sm-12">
                {{> mainPageAboutUsPart}}
            </div>
        </div>
        {{/ifCond}}
        {{#ifCond (getThemeOption 'main_page_mode') '==' 'description_working_hours'}}
        <div class="row row-eq-height-xs description_working_hours'">
            <div class="tab col-sm-4">
                {{> mainPageWorkingHoursPart}}
            </div>
            <div class="tab col-sm-8">
                {{> mainPageAboutUsPart}}
            </div>
        </div>
        {{/ifCond}}
        {{#ifCond (getThemeOption 'main_page_mode') '==' 'side_bars'}}
        <div class="row row-eq-height-xs side_bars">
            <div class="tab col-sm-4">
                {{> mainPageWorkingHoursPart}}
                {{> mainPageContactsPart}}
            </div>
            <div class="tab col-sm-8">
                {{> mainPageAboutUsPart class="with-sidebar"}}
            </div>
        </div>
        {{/ifCond}}
        {{#ifCond (getThemeOption 'main_page_mode') '==' 'description_contacts'}}
        <div class="row row-eq-height-xs description_contacts">
            <div class="tab col-sm-8">
                {{> mainPageAboutUsPart}}
            </div>
            <div class="tab col-sm-4">
                {{> mainPageContactsPart}}
            </div>
        </div>
        {{/ifCond}}
        {{#ifCond (getThemeOption 'main_page_mode') '==' 'working_hours_contacts'}}
        <div class="row row-eq-height-xs working_hours_contacts">
            <div class="tab col-sm-6">
                {{> mainPageWorkingHoursPart}}
            </div>
            <div class="tab col-sm-6">
                {{> mainPageContactsPart}}
            </div>
        </div>
        {{/ifCond}}
        
    </div>
    {{#ifCond skip_address '!=' true}}
        <div class="map-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="tab col-sm-12" id="sb_map">
                        <div class="map-view">
                            <iframe width="100%" height="600" frameborder="0" style="border:0; height: 600px;"
                                    src="https://www.google.com/maps/embed/v1/place?key={{map_key}}&q={{lat}},{{lng}}"
                                    allowfullscreen>
                            </iframe>
                            <div class="contact-info">
                                <div class="contact-inner">
                                    <div class="section-name">
                                        Contact us
                                    </div>
                                    <div class="info">
                                        <span class="contact-nr">+1 046 665 44 54</span>
                                        <span class="contact-nr">+1 046 665 66 27</span>
                                        <span class="email">contact@google.com</span>
                                        <span class="address">Gates-ave 126b Brooklyn nEW yORK usa</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    {{/ifCond}}
</section>
