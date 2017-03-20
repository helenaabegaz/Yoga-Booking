<section id="schedule" class="section">
    <div class="section-pd">
        <!--
            <div class="title-main">
                {{_t 'working_hours'}}
            </div>
        -->
        <table class="overview">
            {{#each opening_hours_info}}
                <tr>
                    <td class="day">
                        <span>
                            {{day_name_short}}    
                        </span>
                    </td>
                    <td class="time">
                        {{#ifCond is_day_off '==' 1}}
                            <span>
                               {{_t 'day_off'}} 
                            </span>
                        {{else}}
                            <span>
                                {{from}} - {{to}} 
                            </span>
                        {{/ifCond}}
                    </td>
                </tr>
            {{/each}}
        </table>
    </div>
</section>