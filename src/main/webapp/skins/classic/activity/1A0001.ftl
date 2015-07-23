<#include "../macro-head.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="${symphonyLabel} - ${activityLabel} - ${activity1A0001Label}">
        </@head>
        <link type="text/css" rel="stylesheet" href="/css/index${miniPostfix}.css?${staticResourceVersion}" />
    </head>
    <body>
        <#include "../header.ftl">
        <div class="main">
            <div class="wrapper fn-clear">
                <div class="content content-reset">
                    ${activity1A0001TitleLabel}
                    ${activity1A0001GuideLabel}

                    <#if !closed && !closed1A0001 && !end && !collected && !participated>
                    <div id="betDiv">
                        <div>
                            ${activity1A0001BetSelectLabel}
                            <label><input name="smallOrLarge" type="radio" value="1" checked="checked" /> ${activity1A0001BetLargeLabel}</label>
                            <label><input name="smallOrLarge" type="radio" value="0" /> ${activity1A0001BetSmallLabel}</label>
                        </div>

                        <div>
                            ${activity1A0001BetAmountLabel}
                            <label><input name="amount" type="radio" value="200" checked="checked" /> 200</label>
                            <label><input name="amount" type="radio" value="300" /> 300</label>
                            <label><input name="amount" type="radio" value="400" /> 400</label>
                            <label><input name="amount" type="radio" value="500" /> 500</label>
                        </div>
                    </div>
                    </#if>
                    <#if closed || closed1A0001 || collected>
                    <span id="tip" style="top: 287px;" class="tip-succ">${msg}</span>
                    <#elseif participated>
                    <span id="tip" style="top: 287px;" class="tip-succ">${msg}</span>
                    <#if hour gt 15>
                    <span id="tip" style="right: 550px; top: 305px;"></span>
                    <button id="collectBtn" class="red fn-right" onclick="Activity.collect1A0001()">${activityCollectLabel}</button>
                    </#if>
                    <#else>
                    <span id="tip" style="top: 287px;"></span>
                    <button id="betBtn" class="red fn-right" onclick="Activity.bet1A0001()">${activityBetLabel}</button>
                    </#if>
                </div>
                <div class="side">
                    <#include "../side.ftl">
                </div>
            </div>
        </div>
        <#include "../footer.ftl">
        <script type="text/javascript" src="/js/activity${miniPostfix}.js?${staticResourceVersion}"></script>
    </body>
</html>