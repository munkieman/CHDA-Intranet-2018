<%@ Register TagPrefix="WpNs1" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Register TagPrefix="WpNs0" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%-- **************************************************
     Site   : CHDA > ABOUT 
     Page   : Latest News
     Author : Jason Clark
     Date   : May 2016

     ************************************************** --%>

<%-- _lcid="1033" _version="15.0.4420" _dal="1" --%>
<%-- _LocalBinding --%>
<%@ Page language="C#" MasterPageFile="../../_catalogs/masterpage/ShareBoot/ShareBoot.master" Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document"  %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>



<%-- Shortcut / Favourite Title --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitle" runat="server">
    CHDA Intranet | Latest News
</asp:Content>

<%-- *** Change the displayed page name --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
	About Us &gt; Latest News   
</asp:Content>

<%-- *** Page Logo --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageLogo" runat="server">
	<?xml version="1.0" encoding="utf-8"?>
	<svg class="pageLogo" xmlns="http://www.w3.org/2000/svg" height="128" width="128" viewBox="0 0 128 128">
	  <g>
	    <rect height="128" width="128" fill="#716439" />
	    <path id="path1" transform="rotate(0,64,64) translate(58.0011250972748,30) scale(2.125,2.125)  " fill="#FFFFFF" d="M0.049011231,9.8080139L5.5970193,9.8080139 5.5970193,32 0.049011231,32z M2.823,0C4.3819914,0 5.646,1.2640076 5.646,2.8230286 5.646,4.3830261 4.3819914,5.6470032 2.823,5.6470032 1.2640085,5.6470032 -5.6017598E-08,4.3830261 0,2.8230286 -5.6017598E-08,1.2640076 1.2640085,0 2.823,0z" />
	  </g>
	</svg>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
	
    <!-- SCRIPTS -->
    <script type="text/javascript" src="https://intranet.chda.maxuk.co.uk/Style%20Library/scripts/jquery.min.js"></script>
    <script type="text/javascript" src="https://intranet.chda.maxuk.co.uk/Style%20Library/scripts/jquery.SPServices-2014.02.min.js"></script>

    <!-- STYLES -->
    <%--<link rel="stylesheet" type="text/css" href="/_catalogs/masterpage/ShareBoot/css/font-awesome.css" />--%><div class="container-fluid" style="height:100%">     
		    <div class="row">
                <ul class="nav nav-pills newsTabs">
                    <li class="active"><a data-toggle="pill" href="#tab1">Top Stories</a></li>
                    <li><a data-toggle="pill" href="#tab2">All Stories</a></li>                            
                    <li><a data-toggle="pill" href="#tab3">Corporate</a></li>
                    <li><a data-toggle="pill" href="#tab4">HR</a></li>
                    <li><a data-toggle="pill" href="#tab5">IT</a></li>
                    <li><a data-toggle="pill" href="#tab6">Operations</a></li>
                </ul>
		    </div>

            <div class="row">             
                <div class="tab-content col-sm-3 col-md-3 col-lg-3 newsMastContainer">
                    <div id="tab1" class="tab-pane fade in active">
                        <div class="row">
                            <div id="Top"></div>  
                        </div>                       
                    </div>
                    <div id="tab2" class="tab-pane fade">
                        <div class="row">
                            <div id="All"></div>                                                    
                        </div>
                    </div>
                    <div id="tab3" class="tab-pane fade">
                        <div class="row">
                            <div id="Corporate"></div>
                        </div>
                    </div>
                    <div id="tab4" class="tab-pane fade">
                        <div class="row">
                            <div id="HR"></div>
                        </div>                                                    
                        </div>
                    <div id="tab5" class="tab-pane fade">
                        <div class="row">
                            <div id="IT"></div>
                        </div>
                    </div>
                    <div id="tab6" class="tab-pane fade">
                        <div class="row">
                            <div id="Operations"></div>
                        </div>
                    </div>                             
                </div>
                <div class="col-sm-9 col-md-9 col-lg-9 newsDetailContainer">
                    <div id="newsDetail"></div> 
                </div>
            </div>
        </div>

    <script type="text/javascript">
	 
        if(typeof(MSOLayout_MakeInvisibleIfEmpty) == "function") 				 
	    {
            MSOLayout_MakeInvisibleIfEmpty();
        }               

        /* IDEA!!
           use the slideshow on the main page to cycle through all the featured stories           

           function showFeatured()
        */

        $(document).ready(function () {

            getNewsItems();         
           
        })

        function getNewsItems() {

            var method = "GetListItems";
            var list = "LatestNews";
            var fields = "<ViewFields>" +
                            "<FieldRef Name='ID' />" +
							"<FieldRef Name='Title' />" +
							"<FieldRef Name='NewsTopic' />" +							
							"<FieldRef Name='NewsImage' />" +
							"<FieldRef Name='NewsHeadline' />" +
                            "<FieldRef Name='endDate' />" +
							"<FieldRef Name='startDate' />" +
					     "</ViewFields>";                                        

            $().SPServices({
                operation: method,
                async: false,
                listName: list,
                CAMLViewFields: fields,
                completefunc: function (xData, Status) {
                    $(xData.responseXML).SPFilterNode("z:row").each(function () {                                                                      

                        // assign SP list item
                        var ID = ($(this).attr("ows_ID"));
                        var newsTitle = ($(this).attr("ows_Title"));
                        var newsTopic = ($(this).attr("ows_NewsTopic"));
                        var newsThumb = ($(this).attr("ows_NewsImage").split(",")[0]);
                        var newsHeadline = ($(this).attr("ows_NewsHeadline"));                      
                        var endDate = ($(this).attr("ows_endDate"));
                        var startDate = ($(this).attr("ows_startDate"));                  

                        newsHeadline = jQuery(newsHeadline).text();
                                              
                        // ***** cleanup newsTopic string *****
                        var topics = newsTopic.split(";");

                        //alert(ID);

                        // ***** reformat start & end date in normalised format *****
                        startYYYY = startDate.substr(0, 4);
                        startMM = startDate.substr(5, 2);
                        startDD = startDate.substr(8, 2);

                        startDate = startMM + '/' + startDD + '/' + startYYYY;

                        endYYYY = endDate.substr(10, 4);
                        endMM = endDate.substr(15, 2);
                        endDD = endDate.substr(18, 2);

                        endDate = endMM + '/' + endDD + '/' + endYYYY;

                        // ***** setup variables *****
                        var today = new Date();
                        var dd = today.getDate();
                        var mm = today.getMonth() + 1; //January is 0
                        var yyyy = today.getFullYear();

                        if (dd < 10) {
                            dd = '0' + dd;
                        }

                        if (mm < 10) {
                            mm = '0' + mm;
                        }

                        today = mm + '/' + dd + '/' + yyyy;

                        // ***** check if new item is still within publication dates
                        if (startDate <= today) {
                            if (endDate >= today) {

                                for (inc = 0; inc <= topics.length; inc++) {
                                    newsTag = topics[inc];
                    
                                    $(newsTag).append("<div class='row newsMast'>" +
                                                            "<a href='#' onclick='getArticle(" + ID + ");return false;'>" +
                                                                "<div class='col-md-3 col-lg-3 col-sm-3'>" +
                                                                    "<img alt='News Thumbnail' src='" + newsThumb + "'/>" +
                                                                "</div>" +
                                                            "</a>" +
                                                            "<div class='col-md-9 col-lg-9 col-sm-9 text-left'>" +
                                                                "<h2>" + newsTitle + "</h2>" +
                                                                "<div class='newsHeadline'>" + newsHeadline + "</div>" +
                                                            "</div>" +
                                                            "</div>" +
                                                            "</br>");
                                };

                                $("#All").append("<div class='row newsMast'>" +
                                                        "<a href='#' onclick='getArticle(" + ID + ");return false;'>" +
                                                            "<div class='col-md-3 col-lg-3 col-sm-3'>" +
                                                                "<img alt='News Thumbnail' src='" + newsThumb + "'/>" +
                                                            "</div>" +
                                                        "</a>" +
                                                        "<div class='col-md-9 col-lg-9 col-sm-9 text-left'>" +
                                                            "<h2>" + newsTitle + "</h2>" +
                                                            "<div class='newsHeadline'>" + newsHeadline + "</div>" +
                                                        "</div>" +
                                                        "</div>" +
                                                        "</br>");

                            };
                        }
                    });                 
                }
            });
        };

        //function checkTopics(tmpTopic) {

            //alert(topicList + " : " + topicList.length);

            //var tmpTag = [];

            //for (i = 1; i <= topicList.length; i++) {

            //    var tmpTopic = topicList[i];

        //    if (tmpTopic.length >= 2) {
        //        tmpTopic = tmpTopic.substr(1, tmpTopic.length);

        //        switch (tmpTopic) {
        //            case "Top":
        //                //tmpTag = ;
        //                return "#topNews";
        //                break;

        //            case "Corporate":
        //                tmpTag = "#corpNews";
        //                return tmpTag;
        //                break;

        //            case "HR":
        //                tmpTag = "#hrNews";
        //                return tmpTag;
        //                break;

        //            case "IT":
        //                tmpTag = "#itNews";
        //                return tmpTag;
        //                break;

        //            case "Operations":
        //                tmpTag = "#opsNews";
        //                return tmpTag;
        //                break;

        //            default:
        //                break;
        //        };
        //    };
        //};

        function clearDetails() {
            $("#newsDetail").empty();
        }

        function getArticle(articleID) {

            clearDetails();

            var method = "GetListItems";
            var list = "LatestNews";
            var fields = "<ViewFields>" +                           
							"<FieldRef Name='Title' />" +						
							"<FieldRef Name='NewsImage' />" +
							"<FieldRef Name='NewsLink' />" +
                            "<FieldRef Name='MainText' />" +
					     "</ViewFields>";
            var query = "<Query><Where><Eq><FieldRef Name='ID' /><Value Type='Number'>" + articleID + "</Value></Eq></Where></Query>";

            $().SPServices({
                operation: method,
                async: false,
                listName: list,
                CAMLViewFields: fields,
                CAMLQuery: query,
                completefunc: function (xData, Status) {
                    $(xData.responseXML).find("z\\:row").each(function () {  

                        // assign SP list item
                        var newsTitle = ($(this).attr("ows_Title"));                      
                        var newsImage = ($(this).attr("ows_NewsImage").split(",")[0]);
                        var newsLink = ($(this).attr("ows_NewsLink").split(",")[0]);
                        var newsText = ($(this).attr("ows_MainText"));                                             

                        //width='100%' height='250px' 
                        $("#newsDetail").append("<img alt='Main Image' src='" + newsImage + "' width='100%' height='250px'/>" +
                                                "<h2>" + newsTitle + "</h2>" +
                                                "<a href='" + newsLink + "' target='_blank'>View Full Page</a>" +
                                                "<p class='text-justify'>" + newsText + "</p>");

                        //$("#newsDetail").append("<h2>news title</h2>" +
                        //"<a href='#' target='_blank'>View Full Page</a>" +
                        //"<p class='text-justify'>some news text....</p>");
                        
                    });
                    
                }
            });
        };

    </script>
	
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderSearchArea" runat="server">
	<SharePoint:DelegateControl runat="server"
		ControlId="SmallSearchInputBox" __designer:Preview="&lt;div class=&quot;ms-webpart-chrome ms-webpart-chrome-fullWidth &quot;&gt;
	&lt;div WebPartID=&quot;00000000-0000-0000-0000-000000000000&quot; HasPers=&quot;true&quot; id=&quot;WebPart&quot; width=&quot;100%&quot; class=&quot;ms-WPBody noindex &quot; OnlyForMePart=&quot;true&quot; allowDelete=&quot;false&quot; style=&quot;&quot; &gt;&lt;div componentid=&quot;SmallSearchInputBox1_csr&quot; id=&quot;SmallSearchInputBox1_csr&quot;&gt;&lt;div id=&quot;SearchBox&quot; name=&quot;Control&quot;&gt;&lt;div class=&quot;ms-srch-sb ms-srch-sb-border&quot; id=&quot;SmallSearchInputBox1_csr_sboxdiv&quot;&gt;&lt;input type=&quot;text&quot; value=&quot;Search...&quot; maxlength=&quot;2048&quot; accessKey=&quot;S&quot; title=&quot;Search...&quot; id=&quot;SmallSearchInputBox1_csr_sbox&quot; autocomplete=&quot;off&quot; autocorrect=&quot;off&quot; onkeypress=&quot;EnsureScriptFunc(&#39;Search.ClientControls.js&#39;, &#39;Srch.U&#39;, function() {if (Srch.U.isEnterKey(String.fromCharCode(event.keyCode))) {$find(&#39;SmallSearchInputBox1_csr&#39;).search($get(&#39;SmallSearchInputBox1_csr_sbox&#39;).value);return Srch.U.cancelEvent(event);}})&quot; onkeydown=&quot;EnsureScriptFunc(&#39;Search.ClientControls.js&#39;, &#39;Srch.U&#39;, function() {var ctl = $find(&#39;SmallSearchInputBox1_csr&#39;);ctl.activateDefaultQuerySuggestionBehavior();})&quot; onfocus=&quot;EnsureScriptFunc(&#39;Search.ClientControls.js&#39;, &#39;Srch.U&#39;, function() {var ctl = $find(&#39;SmallSearchInputBox1_csr&#39;);ctl.hidePrompt();ctl.setBorder(true);})&quot; onblur=&quot;EnsureScriptFunc(&#39;Search.ClientControls.js&#39;, &#39;Srch.U&#39;, function() {var ctl = $find(&#39;SmallSearchInputBox1_csr&#39;); if (ctl){ ctl.showPrompt(); ctl.setBorder(false);}})&quot; class=&quot;ms-textSmall ms-srch-sb-prompt ms-helperText&quot;/&gt;&lt;a title=&quot;Search&quot; class=&quot;ms-srch-sb-searchLink&quot; id=&quot;SmallSearchInputBox1_csr_SearchLink&quot; onclick=&quot;EnsureScriptFunc(&#39;Search.ClientControls.js&#39;, &#39;Srch.U&#39;, function() {$find(&#39;SmallSearchInputBox1_csr&#39;).search($get(&#39;SmallSearchInputBox1_csr_sbox&#39;).value);})&quot; href=&quot;javascript: {}&quot; &gt;&lt;img src=&quot;/_layouts/15/images/searchresultui.png?rev=23&quot; class=&quot;ms-srch-sb-searchImg&quot; id=&quot;searchImg&quot; alt=&quot;Search&quot; /&gt;&lt;/a&gt;&lt;div class=&quot;ms-qSuggest-container ms-shadow&quot; id=&quot;AutoCompContainer&quot;&gt;&lt;div id=&quot;SmallSearchInputBox1_csr_AutoCompList&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;noscript&gt;&lt;div id=&quot;SmallSearchInputBox1_noscript&quot;&gt;It looks like your browser does not have JavaScript enabled. Please turn on JavaScript and try again.&lt;/div&gt;&lt;/noscript&gt;&lt;div id=&quot;SmallSearchInputBox1&quot;&gt;

	&lt;/div&gt;&lt;div class=&quot;ms-clear&quot;&gt;&lt;/div&gt;&lt;/div&gt;
&lt;/div&gt;" __designer:Values="&lt;P N=&#39;ControlId&#39; T=&#39;SmallSearchInputBox&#39; /&gt;&lt;P N=&#39;ID&#39; ID=&#39;1&#39; T=&#39;ctl00&#39; /&gt;&lt;P N=&#39;Page&#39; ID=&#39;2&#39; /&gt;&lt;P N=&#39;TemplateControl&#39; R=&#39;2&#39; /&gt;&lt;P N=&#39;AppRelativeTemplateSourceDirectory&#39; R=&#39;-1&#39; /&gt;"/>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderPageDescription" runat="server">
	<SharePoint:ProjectProperty Property="Description" runat="server" __designer:Preview="" __designer:Values="&lt;P N=&#39;Property&#39; T=&#39;Description&#39; /&gt;&lt;P N=&#39;InDesign&#39; T=&#39;False&#39; /&gt;&lt;P N=&#39;ID&#39; ID=&#39;1&#39; T=&#39;ctl01&#39; /&gt;&lt;P N=&#39;Page&#39; ID=&#39;2&#39; /&gt;&lt;P N=&#39;TemplateControl&#39; R=&#39;2&#39; /&gt;&lt;P N=&#39;AppRelativeTemplateSourceDirectory&#39; R=&#39;-1&#39; /&gt;"/>
</asp:Content>