<%-- _lcid="1033" _version="15.0.4420" _dal="1" --%>
<%-- _LocalBinding --%>
<%@ Page Language="C#" MasterPageFile="/_catalogs/masterpage/ShareBoot/ShareBoot.master" Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="PlaceHolderAdditionalPageHead">

	<!-- STYLES -->	
    <style type="text/css">
        #usefulLinksGroup1, #usefulLinksSiteContacts{display:none}

        ::-webkit-scrollbar, .embedViewer::-webkit-scrollbar, .documentContainer::-webkit-scrollbar, #dashboardTabNames::-webkit-scrollbar {
            width: 10px;
            background-color: #fff;
        }
        ::-webkit-scrollbar-track, .embedViewer::-webkit-scrollbar-track, .documentContainer::-webkit-scrollbar-track, #dashboardTabNames::-webkit-scrollbar-track  {
            box-shadow: inset 0 0 6px rgba(221,221,235,0.3);
            border-radius: 10px;
            background-color: #fff;
        }
        ::-webkit-scrollbar-thumb, .embedViewer::-webkit-scrollbar-thumb, .documentContainer::-webkit-scrollbar-thumb, #dashboardTabNames::-webkit-scrollbar-thumb  {
            border-radius: 10px;
            box-shadow: inset 0 0 6px rgba(221,221,235,.3);
            background-color: #545487;
        }

        .dashboardTabContainer {
            position:relative;
            width: 100%;
            height: 70px;
            background-color:white;
            z-index:99;
            overflow: hidden;
        }

            .dashboardTabContainer ul {
                /*position:fixed;*/
                width: 61vw;
                height:80px;
                background-color:white;
                font-size:.95em;
                list-style-type: none;
                display: inline-block;
                white-space: nowrap!important;
                overflow-x: scroll;
                overflow-y: hidden;
                margin: 0;
                padding: 15px 5px;
            }

            .dashboardTabContainer li {
                margin: 0 5px 0 3px;
                display: inline;
            }

        .dashboardContent {top:38vh;height:61vh;width:65vw;}
        .docFolders, .pdfViewer{height:61vh;overflow-x:hidden}
        .docFolders {overflow-y:auto;}
        .pdfViewer{border:1px solid #ddddeb;overflow-y:hidden;}
        .pdfViewer iframe{width:100%;height:100%}
        .galleryFrame{width:100%;height:70vh}
        .tabButton{width:auto;height:36px;border-radius:10px;background-color:#ddddeb;color:black!important;font-weight:bold;font-size:1em;margin:0;}
        .tabButton:hover{background-color:#7676b8;color:white!important;font-weight:bold;box-shadow: 2px 2px 3px 1px #545487;}
        .buttonOn a{
            background-color: #7676b8 !important;
            color: white !important;           
            border-radius: 10px !important;
        }
        .iconContainer{padding:0;}
        .faqCategory, .faqData{height:69vh;}
        .faqNewQuestion {width:16%;height:260px;top:50vh;padding:0 0 0 15px;border:1px solid #7676b8;border-radius:10px;background-color:#ddddeb; 
                         box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
        #faqQuestion{margin:0}
        .faqNewQuestion a {margin-top: 5px;}
        #faqCategory{padding:0}
        #faqQuestionText{resize:none;width:95%}

		.contactContainer {						
			width:100%;
            top: 0;
		}
        .contactCard {
            perspective: 1000px; 
            background-color:white!important;
        }
        .contactCard div {margin: 0!important}
        .contactCard img{height:auto}
        .contactCard-Inner{
            position: relative;
            width: 100%;
            height: 100%;
            text-align: center;
            transition: transform 0.8s;
            transform-style: preserve-3d;
        }
        .contactCard:hover .contactCard-Inner {
            transform: rotateY(180deg);
        }
        .contactCard-Front, .contactCard-Back {
            position: absolute;
            width: 100%;
            height: 100%;
            backface-visibility: hidden;
        }
        .contactCard-Front {
            color: black;
        }
        .contactCard-Back {
            background-color: #ddddeb;
            color: white;
            transform: rotateY(180deg);
            word-wrap:break-word;
            white-space:normal;
        }
        .contactCard .userName {font-weight:bolder;font-size:.9em!important;padding:0 5px}			
        .contactCard-Back .jobTitle, .contactCard .userName, contactCard-Back .groupName {font-size:.8em; color:#545487!important}
        /*.contactCard-Back p {font-size:.8em!important; color:#545487!important}*/
        @media screen and (min-width:2601px) {
            .dashboardContent {position:fixed;top:37vh;height:69vh;width:63vw;}
            .faqNewQuestion {position:fixed;width:14%;top:45vh;}
        }
        @media screen and (min-width:2551px) and (max-width:2600px) {
            .dashboardContent {position:fixed;top:37vh;height:69vh;width:63vw;}
            .faqNewQuestion {position:fixed;width:14%;top:44vh;}
        }
        @media screen and (min-width:2501px) and (max-width:2550px) {
            .dashboardContent {position:fixed;top:30vh;height:69vh;width:62vw;}
            .faqNewQuestion {position:fixed;width:23.2%;top:59vh;margin-left:-10px;}
        }
        @media screen and (min-width:2401px) and (max-width:2500px) {
            .dashboardContent {position:fixed;top:37vh;height:69vh;width:62vw;}
            .faqNewQuestion {position:fixed;width:14%;top:59vh;}
        }
        @media screen and (min-width:2301px) and (max-width:2400px) {
            .dashboardContent {position:fixed;top:40vh;height:69vh;width:62vw;}
            .faqNewQuestion {position:fixed;width:16%;top:43vh;}
        }
        @media screen and (min-width:2201px) and (max-width:2300px) {
            .dashboardContent {position:fixed;top:40vh;height:69vh;width:62vw;}
            .faqNewQuestion {position:fixed;width:16%;top:42vh;}
        }
        @media screen and (min-width:2101px) and (max-width:2200px) {
            .dashboardContent {position:fixed;top:33vh;height:69vh;width:62vw;}
            .faqNewQuestion {position:fixed;width:16%;top:42vh;}
        }
        @media screen and (min-width:2001px) and (max-width:2100px) {
            .dashboardContent {position:fixed;top:52vh;height:69vh;width:62vw;}
            .faqNewQuestion {position:fixed;width:16%;top:57vh;}
        }
        @media screen and (min-width:1922px) and (max-width:2000px) {
            .dashboardContent {position:fixed;top:52vh;height:69vh;width:62vw;}
            .faqNewQuestion {position:fixed;width:16%;top:58vh;}
        }
        @media screen and (min-width:1919px) and (max-width:1921px) {
            .dashboardContent {position:fixed;top:43vh;height:61vh;width:65vw;}
            .faqNewQuestion {position:fixed;width:18%;top:59vh;margin-left:-10px;}
        }
        @media screen and (min-width:1701px) and (max-width:1918px) {
            .dashboardContent {position:fixed;top:53vh;height:46vh;width:60vw;}
            .docFolders, .pdfViewer{height:46vh;}
            .modal{height:65%}
            .dashboardContent {top:52vh;height:40vh;width:61vw;}
            .docFolders, .pdfViewer, .faqCategory, .faqData{height:49vh;}
            .faqNewQuestion {position:fixed;width:18vw;top:57vh;}
            .contactContainer {top:3vh}
            .galleryFrame{height:62vh}
        }

        @media screen and (min-width:1601px) and (max-width:1700px) {
            .dashboardContent {position:fixed;top:42vh;height:56vh;width:60vw;}
            .docFolders, .pdfViewer{height:56vh;}
            .modal{height:65%}
            .dashboardContent {top:54vh;height:40vh;width:61vw;}
            .docFolders, .pdfViewer, .faqCategory, .faqData{height:40vh;}
            .faqNewQuestion {position:fixed;width:18%;top:59vh;margin-left:5px;}
            .contactContainer {top:3vh}
        }

        @media screen and (min-width:1401px) and (max-width:1600px) {
            .dashboardTabContainer ul {
                width: 55vw;
            }
            .modal{height:65%}
            .dashboardContent {position:fixed;top:57vh;height:40vh;width:57vw;}
            .docFolders, .pdfViewer, .faqCategory, .faqData{height:36vh;}
            .faqNewQuestion {position:fixed;width:21%;top:61vh;margin-left:10px}            
            .contactContainer {top:3vh}
            .galleryFrame{height:50vh}
        }

        @media screen and (min-width:1301px) and (max-width:1400px) {
            .dashboardTabContainer ul {
                width: 53vw;
                height:70px;
            }
            .tabButton{height:30px!important;font-size:.8em!important}
            .modal{height:65%}
            .dashboardContent {top:59vh;height:40vh;width:57vw;}
            .docFolders, .pdfViewer, .faqCategory, .faqData{height:36vh;}
            .faqNewQuestion {position:fixed;width:23.2%;top:59vh;margin-left:-10px;}
            .contactContainer {top:3vh}
        }

        @media screen and (min-width:1201px) and (max-width:1300px) {
            .dashboardTabContainer{position:relative!important}
            .dashboardTabContainer ul {
                width: 53vw;
                height:70px;
            }
            .tabButton{height:30px!important;font-size:.8em!important}
            .modal{height:65%}
            .dashboardContent {top:59vh;height:72vh;width:57vw;}
            .docFolders, .pdfViewer, .faqCategory, .faqData{height:30vw;}
            .faqNewQuestion {position:relative;width:20.8vw;top:105%;z-index:99;}
            .contactContainer {top:3vh}
        }

    </style>

</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">

    <!-- *********************** -->
    <!-- **** Left Section ***** -->
    <!-- *********************** -->
    <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7 clearfix text-justify pageLeftContainer">
        <div id="welcomeText"></div>
        <div class="row dashboardTabContainer">
            <ul id="dashboardTabNames">
                <li><a onclick="makeActive('1');" class="btn btn-default tabButton" data-toggle="pill" href="#tab1">
				Strategy</a></li>
                <li><a onclick="makeActive('2');" class="btn btn-default tabButton" data-toggle="pill" href="#tab2">
				Guides</a></li>
				<li><a onclick="makeActive('3');" class="btn btn-default tabButton" data-toggle="pill" href="#tab3">
				Local Quality</a></li>	
				<li><a onclick="makeActive('4');" class="btn btn-default tabButton" data-toggle="pill" href="#tab4">
				Lessons Learnt</a></li>															                                            
				<li><a onclick="makeActive('5');" class="btn btn-default tabButton" data-toggle="pill" href="#tab5">
				FAQs</a></li>	
				<li><a onclick="makeActive('6');" class="btn btn-default tabButton" data-toggle="pill" href="#tab6">
				Team</a></li>
            </ul>
        </div>
        <div class="row tab-content dashboardContent">
            <div id="tab1" class="tab-pane fade in active">
                <div class="panel-group col-sm-5 col-md-5 col-lg-5 docFolders" id="docFoldersTab0"></div>
                <div class="col-sm-7 col-md-7 col-lg-7 pdfViewer">
                    <iframe class="embedViewer" id="pdfViewerTab0" src=""></iframe>
                    <!--<object><embed class="embedViewer" src="" type="application/pdf" id="pdfViewerTab0"></object>-->								                                                                  	                                
                </div>
            </div>
            <div id="tab2" class="tab-pane fade in">
                <div class="panel-group col-sm-5 col-md-5 col-lg-5 docFolders" id="docFoldersTab1"></div>
                <div class="col-sm-7 col-md-7 col-lg-7 pdfViewer">
                    <iframe class="embedViewer" id="pdfViewerTab1" src=""></iframe>
                    <!--<object><embed class="embedViewer" src="" type="application/pdf" id="pdfViewerTab1"></object>-->								                                                                  	                                
                </div>
            </div>
            <div id="tab3" class="tab-pane fade in">
                <iframe class="galleryFrame" src="https://intranet.chda.maxuk.co.uk/about/SitePages/gallery.html"></iframe>
            </div>
            <div id="tab4" class="tab-pane fade in">
                <div class="panel-group col-sm-5 col-md-5 col-lg-5 docFolders" id="docFoldersTab2">
				&nbsp
                </div>
                <div class="col-sm-7 col-md-7 col-lg-7 pdfViewer">
                    <iframe class="embedViewer" id="pdfViewerTab2" src=""></iframe>
                    <!--<object><embed src="" type="application/pdf" id="pdfViewerTab2"></object>-->							                                                                  	                                
                </div>
            </div>
            <div id="tab5" class="tab-pane fade in">                 
                <div class="col-sm-4 col-md-4 col-lg-4 faqCategory">                     		    
                    <ul class="nav nav-pills nav-stacked" id="tabNames"></ul>
    	        </div>

                <div class="col-sm-8 col-md-8 co-lg-8 faqData">		                
                    <div class="tab-content" id="tabData"></div>                             		               
                </div>	
            </div>
            <div id="tab6" class="tab-pane fade in">				
                <div class="contactContainer">
                    <div class="contactCardRow">
                        <div id="ContactCard"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- ************************* -->
    <!-- **** Middle Section ***** -->
    <!-- ************************* -->
    <!-- ***** This section will auto hide on certain screen resolutions / sizes -->
	<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 metroTilesSection" id="showHideApp">
		<div class="pageMiddleContainer">	        							
	        <div class="hidden restricted" id="restrictApp">&nbsp;</div>
	        <div class="metroTiles">
	            <WebPartPages:WebPartZone runat="server" Title="Middle Section" ID="WebPartZone2" FrameType="TitleBarOnly" __designer:Preview="&lt;Regions&gt;&lt;Region Name=&quot;0&quot; Editable=&quot;True&quot; Content=&quot;&quot; NamingContainer=&quot;True&quot; /&gt;&lt;/Regions&gt;&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;0&quot; border=&quot;0&quot; id=&quot;WebPartZone2&quot;&gt;
	&lt;tr&gt;
		&lt;td style=&quot;white-space:nowrap;&quot;&gt;&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;2&quot; border=&quot;0&quot; style=&quot;width:100%;&quot;&gt;
			&lt;tr&gt;
				&lt;td style=&quot;white-space:nowrap;&quot;&gt;Middle Section&lt;/td&gt;
			&lt;/tr&gt;
		&lt;/table&gt;&lt;/td&gt;
	&lt;/tr&gt;&lt;tr&gt;
		&lt;td style=&quot;height:100%;&quot;&gt;&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;2&quot; border=&quot;0&quot; style=&quot;border-color:Gray;border-width:1px;border-style:Solid;width:100%;height:100%;&quot;&gt;
			&lt;tr valign=&quot;top&quot;&gt;
				&lt;td _designerRegion=&quot;0&quot;&gt;&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;2&quot; border=&quot;0&quot; style=&quot;width:100%;&quot;&gt;
					&lt;tr&gt;
						&lt;td style=&quot;height:100%;&quot;&gt;&lt;/td&gt;
					&lt;/tr&gt;
				&lt;/table&gt;&lt;/td&gt;
			&lt;/tr&gt;
		&lt;/table&gt;&lt;/td&gt;
	&lt;/tr&gt;
&lt;/table&gt;" __designer:Values="&lt;P N=&#39;Title&#39; ID=&#39;1&#39; T=&#39;Middle Section&#39; /&gt;&lt;P N=&#39;HeaderText&#39; R=&#39;1&#39; /&gt;&lt;P N=&#39;DisplayTitle&#39; R=&#39;1&#39; /&gt;&lt;P N=&#39;ID&#39; ID=&#39;2&#39; T=&#39;WebPartZone2&#39; /&gt;&lt;P N=&#39;FrameType&#39; E=&#39;2&#39; /&gt;&lt;P N=&#39;PartChromeType&#39; E=&#39;3&#39; /&gt;&lt;P N=&#39;Page&#39; ID=&#39;3&#39; /&gt;&lt;P N=&#39;TemplateControl&#39; R=&#39;3&#39; /&gt;&lt;P N=&#39;AppRelativeTemplateSourceDirectory&#39; R=&#39;-1&#39; /&gt;" __designer:Templates="&lt;Group Name=&quot;ZoneTemplate&quot;&gt;&lt;Template Name=&quot;ZoneTemplate&quot; Content=&quot;&quot; /&gt;&lt;/Group&gt;"><ZoneTemplate><WebPartPages:XsltListViewWebPart runat="server" ViewFlag="" ViewSelectorFetchAsync="False" InplaceSearchEnabled="False" ServerRender="False" ClientRender="True" InitialAsyncDataFetch="False" WebId="00000000-0000-0000-0000-000000000000" IsClientRender="False" GhostedXslLink="main.xsl" NoDefaultStyle="" ViewGuid="{F0E42506-4243-42AE-A5F9-AF3BAFC770A0}" EnableOriginalValue="False" ViewContentTypeId="" ListUrl="" ListDisplayName="" ListName="{31B00158-0C58-4DDE-99AB-E4924684F8B1}" ListId="31b00158-0c58-4dde-99ab-e4924684f8b1" PageSize="-1" UseSQLDataSourcePaging="True" DataSourceID="" ShowWithSampleData="False" AsyncRefresh="False" ManualRefresh="False" AutoRefresh="False" AutoRefreshInterval="60" Title="Quality_Metrotiles" FrameType="None" SuppressWebPartChrome="False" Description="" IsIncluded="True" ZoneID="WebPartZone2" PartOrder="1" FrameState="Normal" AllowRemove="True" AllowZoneChange="True" AllowMinimize="True" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" CatalogIconImageUrl="/_layouts/15/images/itgen.png?rev=23" TitleUrl="/about/Lists/Quality_Metrotiles" DetailLink="/about/Lists/Quality_Metrotiles" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="/_layouts/15/images/itgen.png?rev=23" IsIncludedFilter="" ExportControlledProperties="False" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_f0e42506_4243_42ae_a5f9_af3bafc770a0" ChromeType="None" ExportMode="NonSensitiveData" __designer:Values="&lt;P N=&#39;DisableViewSelectorMenu&#39; T=&#39;True&#39; /&gt;&lt;P N=&#39;DisableSaveAsNewViewButton&#39; T=&#39;True&#39; /&gt;&lt;P N=&#39;InplaceSearchEnabled&#39; T=&#39;False&#39; /&gt;&lt;P N=&#39;ClientRender&#39; T=&#39;True&#39; /&gt;&lt;P N=&#39;InitialAsyncDataFetch&#39; T=&#39;False&#39; /&gt;&lt;P N=&#39;DisabledColumnFilters&#39; Serial=&#39;AAEAAAD/////AQAAAAAAAAAEAQAAAOABU3lzdGVtLkNvbGxlY3Rpb25zLkdlbmVyaWMuRGljdGlvbmFyeWAyW1tTeXN0ZW0uR3VpZCwgbXNjb3JsaWIsIFZlcnNpb249NC4wLjAuMCwgQ3VsdHVyZT1uZXV0cmFsLCBQdWJsaWNLZXlUb2tlbj1iNzdhNWM1NjE5MzRlMDg5XSxbU3lzdGVtLlN0cmluZywgbXNjb3JsaWIsIFZlcnNpb249NC4wLjAuMCwgQ3VsdHVyZT1uZXV0cmFsLCBQdWJsaWNLZXlUb2tlbj1iNzdhNWM1NjE5MzRlMDg5XV0DAAAAB1ZlcnNpb24IQ29tcGFyZXIISGFzaFNpemUAAwAIkAFTeXN0ZW0uQ29sbGVjdGlvbnMuR2VuZXJpYy5HZW5lcmljRXF1YWxpdHlDb21wYXJlcmAxW1tTeXN0ZW0uR3VpZCwgbXNjb3JsaWIsIFZlcnNpb249NC4wLjAuMCwgQ3VsdHVyZT1uZXV0cmFsLCBQdWJsaWNLZXlUb2tlbj1iNzdhNWM1NjE5MzRlMDg5XV0IAAAAAAkCAAAAAAAAAAQCAAAAkAFTeXN0ZW0uQ29sbGVjdGlvbnMuR2VuZXJpYy5HZW5lcmljRXF1YWxpdHlDb21wYXJlcmAxW1tTeXN0ZW0uR3VpZCwgbXNjb3JsaWIsIFZlcnNpb249NC4wLjAuMCwgQ3VsdHVyZT1uZXV0cmFsLCBQdWJsaWNLZXlUb2tlbj1iNzdhNWM1NjE5MzRlMDg5XV0AAAAACw&#39; /&gt;&lt;P N=&#39;ParameterBindings&#39; T=&#39;&amp;#xD;&amp;#xA;&amp;#xD;&amp;#xA;&amp;#xD;&amp;#xA;&amp;#xD;&amp;#xA;&amp;#xD;&amp;#xA;&amp;#xD;&amp;#xA;&amp;#xD;&amp;#xA;&amp;#xD;&amp;#xA;&amp;#xD;&amp;#xA;&amp;#xD;&amp;#xA;&amp;#xD;&amp;#xA;&amp;#xD;&amp;#xA;&amp;#xD;&amp;#xA;&amp;#xD;&amp;#xA;&amp;lt;ParameterBinding Name=&quot;dvt_sortdir&quot; Location=&quot;Postback;Connection&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;dvt_sortfield&quot; Location=&quot;Postback;Connection&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;dvt_startposition&quot; Location=&quot;Postback&quot; DefaultValue=&quot;&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;dvt_firstrow&quot; Location=&quot;Postback;Connection&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;OpenMenuKeyAccessible&quot; Location=&quot;Resource(wss,OpenMenuKeyAccessible)&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;open_menu&quot; Location=&quot;Resource(wss,open_menu)&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;select_deselect_all&quot; Location=&quot;Resource(wss,select_deselect_all)&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;idPresEnabled&quot; Location=&quot;Resource(wss,idPresEnabled)&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;NoAnnouncements&quot; Location=&quot;Resource(wss,noXinviewofY_LIST)&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;NoAnnouncementsHowTo&quot; Location=&quot;Resource(wss,noXinviewofY_DEFAULT)&quot; /&amp;gt;&#39; /&gt;&lt;P N=&#39;ViewGuid&#39; T=&#39;{F0E42506-4243-42AE-A5F9-AF3BAFC770A0}&#39; /&gt;&lt;P N=&#39;ListName&#39; T=&#39;{31B00158-0C58-4DDE-99AB-E4924684F8B1}&#39; /&gt;&lt;P N=&#39;ListId&#39; T=&#39;31b00158-0c58-4dde-99ab-e4924684f8b1&#39; /&gt;&lt;P N=&#39;ViewId&#39; T=&#39;1&#39; /&gt;&lt;P N=&#39;ViewFlags&#39; E=&#39;4194349&#39; /&gt;&lt;P N=&#39;ParameterValues&#39; Serial=&#39;AAEAAAD/////AQAAAAAAAAAMAgAAAFhNaWNyb3NvZnQuU2hhcmVQb2ludCwgVmVyc2lvbj0xNS4wLjAuMCwgQ3VsdHVyZT1uZXV0cmFsLCBQdWJsaWNLZXlUb2tlbj03MWU5YmNlMTExZTk0MjljBQEAAAA9TWljcm9zb2Z0LlNoYXJlUG9pbnQuV2ViUGFydFBhZ2VzLlBhcmFtZXRlck5hbWVWYWx1ZUhhc2h0YWJsZQEAAAAFX2NvbGwDHFN5c3RlbS5Db2xsZWN0aW9ucy5IYXNodGFibGUCAAAACQMAAAAEAwAAABxTeXN0ZW0uQ29sbGVjdGlvbnMuSGFzaHRhYmxlBwAAAApMb2FkRmFjdG9yB1ZlcnNpb24IQ29tcGFyZXIQSGFzaENvZGVQcm92aWRlcghIYXNoU2l6ZQRLZXlzBlZhbHVlcwAAAwMABQULCBxTeXN0ZW0uQ29sbGVjdGlvbnMuSUNvbXBhcmVyJFN5c3RlbS5Db2xsZWN0aW9ucy5JSGFzaENvZGVQcm92aWRlcgjsUTg/AAAAAAoKAwAAAAkEAAAACQUAAAAQBAAAAAAAAAAQBQAAAAAAAAAL&#39; /&gt;&lt;P N=&#39;FilterValues&#39; Serial=&#39;AAEAAAD/////AQAAAAAAAAAMAgAAAFhNaWNyb3NvZnQuU2hhcmVQb2ludCwgVmVyc2lvbj0xNS4wLjAuMCwgQ3VsdHVyZT1uZXV0cmFsLCBQdWJsaWNLZXlUb2tlbj03MWU5YmNlMTExZTk0MjljBQEAAAA9TWljcm9zb2Z0LlNoYXJlUG9pbnQuV2ViUGFydFBhZ2VzLlBhcmFtZXRlck5hbWVWYWx1ZUhhc2h0YWJsZQEAAAAFX2NvbGwDHFN5c3RlbS5Db2xsZWN0aW9ucy5IYXNodGFibGUCAAAACgs&#39; /&gt;&lt;P N=&#39;XmlDefinition&#39; T=&#39;&amp;lt;View Name=&quot;{F0E42506-4243-42AE-A5F9-AF3BAFC770A0}&quot; Type=&quot;HTML&quot; Hidden=&quot;TRUE&quot; ReadOnly=&quot;TRUE&quot; OrderedView=&quot;TRUE&quot; DisplayName=&quot;&quot; Url=&quot;/about/SitePages/Quality.aspx&quot; Level=&quot;1&quot; BaseViewID=&quot;1&quot; ContentTypeID=&quot;0x&quot; &amp;gt;&amp;lt;Query&amp;gt;&amp;lt;OrderBy&amp;gt;&amp;lt;FieldRef Name=&quot;TileOrder&quot; Ascending=&quot;TRUE&quot;/&amp;gt;&amp;lt;FieldRef Name=&quot;Modified&quot; Ascending=&quot;FALSE&quot;/&amp;gt;&amp;lt;/OrderBy&amp;gt;&amp;lt;/Query&amp;gt;&amp;lt;ViewFields&amp;gt;&amp;lt;FieldRef Name=&quot;Title&quot;/&amp;gt;&amp;lt;FieldRef Name=&quot;BackgroundImageLocation&quot;/&amp;gt;&amp;lt;FieldRef Name=&quot;Description&quot;/&amp;gt;&amp;lt;FieldRef Name=&quot;LinkLocation&quot;/&amp;gt;&amp;lt;FieldRef Name=&quot;LaunchBehavior&quot;/&amp;gt;&amp;lt;FieldRef Name=&quot;BackgroundImageClusterX&quot;/&amp;gt;&amp;lt;FieldRef Name=&quot;BackgroundImageClusterY&quot;/&amp;gt;&amp;lt;/ViewFields&amp;gt;&amp;lt;RowLimit Paged=&quot;TRUE&quot;&amp;gt;30&amp;lt;/RowLimit&amp;gt;&amp;lt;JSLink&amp;gt;sp.ui.tileview.js&amp;lt;/JSLink&amp;gt;&amp;lt;XslLink Default=&quot;TRUE&quot;&amp;gt;main.xsl&amp;lt;/XslLink&amp;gt;&amp;lt;Toolbar Type=&quot;None&quot;/&amp;gt;&amp;lt;/View&amp;gt;&#39; /&gt;&lt;P N=&#39;AllowXSLTEditing&#39; T=&#39;True&#39; /&gt;&lt;P N=&#39;Title&#39; ID=&#39;1&#39; T=&#39;Quality_Metrotiles&#39; /&gt;&lt;P N=&#39;FrameType&#39; E=&#39;0&#39; /&gt;&lt;P N=&#39;ZoneID&#39; T=&#39;WebPartZone2&#39; /&gt;&lt;P N=&#39;PartOrder&#39; T=&#39;1&#39; /&gt;&lt;P N=&#39;CatalogIconImageUrl&#39; ID=&#39;2&#39; T=&#39;/_layouts/15/images/itgen.png?rev=23&#39; /&gt;&lt;P N=&#39;TitleUrl&#39; ID=&#39;3&#39; T=&#39;/about/Lists/Quality_Metrotiles&#39; /&gt;&lt;P N=&#39;DetailLink&#39; R=&#39;3&#39; /&gt;&lt;P N=&#39;PartImageLarge&#39; R=&#39;2&#39; /&gt;&lt;P N=&#39;ID&#39; T=&#39;g_f0e42506_4243_42ae_a5f9_af3bafc770a0&#39; /&gt;&lt;P N=&#39;StorageKey&#39; T=&#39;f0e42506-4243-42ae-a5f9-af3bafc770a0&#39; /&gt;&lt;P N=&#39;Qualifier&#39; T=&#39;WPQ1&#39; /&gt;&lt;P N=&#39;ClientName&#39; T=&#39;varPartWPQ1&#39; /&gt;&lt;P N=&#39;Permissions&#39; E=&#39;0&#39; /&gt;&lt;P N=&#39;EffectiveTitle&#39; R=&#39;1&#39; /&gt;&lt;P N=&#39;EffectiveStorage&#39; E=&#39;2&#39; /&gt;&lt;P N=&#39;EffectiveFrameType&#39; E=&#39;0&#39; /&gt;&lt;P N=&#39;ChromeType&#39; E=&#39;2&#39; /&gt;&lt;P N=&#39;DisplayTitle&#39; R=&#39;1&#39; /&gt;&lt;P N=&#39;ExportMode&#39; E=&#39;2&#39; /&gt;&lt;P N=&#39;IsShared&#39; T=&#39;True&#39; /&gt;&lt;P N=&#39;IsStandalone&#39; T=&#39;False&#39; /&gt;&lt;P N=&#39;IsStatic&#39; T=&#39;False&#39; /&gt;&lt;P N=&#39;WebBrowsableObject&#39; R=&#39;0&#39; /&gt;&lt;P N=&#39;ZoneIndex&#39; T=&#39;1&#39; /&gt;&lt;P N=&#39;Page&#39; ID=&#39;4&#39; /&gt;&lt;P N=&#39;TemplateControl&#39; R=&#39;4&#39; /&gt;&lt;P N=&#39;AppRelativeTemplateSourceDirectory&#39; R=&#39;-1&#39; /&gt;" __designer:Preview="&lt;Regions&gt;&lt;Region Name=&quot;0&quot; Editable=&quot;True&quot; Content=&quot;&quot; NamingContainer=&quot;True&quot; /&gt;&lt;/Regions&gt;&lt;div class=&quot;ms-webpart-chrome ms-webpart-chrome-vertical ms-webpart-chrome-fullWidth &quot;&gt;
	&lt;div WebPartID=&quot;f0e42506-4243-42ae-a5f9-af3bafc770a0&quot; HasPers=&quot;false&quot; id=&quot;WebPartWPQ1&quot; width=&quot;100%&quot; class=&quot;&quot; allowDelete=&quot;false&quot; style=&quot;&quot; &gt;&lt;div id=&quot;WebPartContent&quot;&gt;
		&lt;div class=&quot;ms-webpart-chrome ms-webpart-chrome-vertical ms-webpart-chrome-fullWidth &quot;&gt;
	&lt;div WebPartID=&quot;f0e42506-4243-42ae-a5f9-af3bafc770a0&quot; HasPers=&quot;false&quot; id=&quot;WebPartWPQ1&quot; width=&quot;100%&quot; class=&quot;&quot; allowDelete=&quot;false&quot; style=&quot;&quot; &gt;&lt;div id=&quot;WebPartContent&quot;&gt;The DataFormWebPart does not provide a design-time preview.&lt;/div&gt;&lt;div class=&quot;ms-clear&quot;&gt;&lt;/div&gt;&lt;/div&gt;
&lt;/div&gt;
	&lt;/div&gt;&lt;div class=&quot;ms-clear&quot;&gt;&lt;/div&gt;&lt;/div&gt;
&lt;/div&gt;" __MarkupType="vsattributemarkup" __WebPartId="{F0E42506-4243-42AE-A5F9-AF3BAFC770A0}" __AllowXSLTEditing="true" __designer:ExpandedXmlDef="&lt;dsQueryResponse ViewStyleID=&quot;&quot; BaseViewID=&quot;1&quot; TemplateType=&quot;170&quot; RowLimit=&quot;30&quot;&gt;&lt;x:schema xmlns:d=&quot;http://schemas.microsoft.com/sharepoint/dsp&quot; xmlns:x=&quot;http://www.w3.org/2001/XMLSchema&quot;&gt;&lt;x:element name=&quot;Rows&quot;&gt;&lt;x:complexType&gt;&lt;x:sequence maxOccurs=&quot;unbounded&quot;&gt;&lt;x:element name=&quot;Row&quot; minOccurs=&quot;0&quot;&gt;&lt;x:complexType&gt;&lt;x:attribute name=&quot;Title&quot; use=&quot;required&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;Contains;BeginsWith;&quot; d:displayName=&quot;Title&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;BackgroundImageLocation&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:urlDescription=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;Contains;BeginsWith;&quot; d:displayName=&quot;Background Image Location&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;Description&quot; d:sortable=&quot;false&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Contains;BeginsWith;&quot; d:displayName=&quot;Description&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;LinkLocation&quot; use=&quot;required&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:urlDescription=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;Contains;BeginsWith;&quot; d:displayName=&quot;Site URL&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;LaunchBehavior&quot; use=&quot;required&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Contains;BeginsWith;&quot; d:displayName=&quot;Launch Behavior&quot;&gt;&lt;x:simpleType&gt;&lt;x:restriction base=&quot;x:string&quot;&gt;&lt;x:enumeration value=&quot;In page navigation&quot; /&gt;&lt;x:enumeration value=&quot;Dialog&quot; /&gt;&lt;x:enumeration value=&quot;New tab&quot; /&gt;&lt;/x:restriction&gt;&lt;/x:simpleType&gt;&lt;/x:attribute&gt;&lt;x:attribute name=&quot;TileOrder&quot; use=&quot;required&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;Order&quot; type=&quot;x:float&quot; /&gt;&lt;x:attribute name=&quot;BackgroundImageClusterX&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;Background Image Cluster Horizontal Start&quot; type=&quot;x:float&quot; /&gt;&lt;x:attribute name=&quot;BackgroundImageClusterY&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;Background Image Cluster Vertical Start&quot; type=&quot;x:float&quot; /&gt;&lt;x:attribute name=&quot;Target_x0020_Audiences&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Contains;BeginsWith;&quot; d:displayName=&quot;Target Audiences&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;ID&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;ID&quot; type=&quot;x:int&quot; /&gt;&lt;x:attribute name=&quot;ContentType&quot; d:sortable=&quot;false&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:displayName=&quot;Content Type&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;Modified&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;Modified&quot; type=&quot;x:dateTime&quot; /&gt;&lt;x:attribute name=&quot;Created&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;Created&quot; type=&quot;x:dateTime&quot; /&gt;&lt;x:attribute name=&quot;Author&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:userField=&quot;true&quot; d:lookupField=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;Created By&quot;&gt;&lt;x:simpleType&gt;&lt;x:restriction base=&quot;x:string&quot;&gt;&lt;x:enumeration value=&quot;a.adu-amankwah@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;aaron.ajibawo@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Aaron Chan&quot; /&gt;&lt;x:enumeration value=&quot;aaron.chan@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Aaron Keegans&quot; /&gt;&lt;x:enumeration value=&quot;Aaron Lloyd&quot; /&gt;&lt;x:enumeration value=&quot;aaron.lloyd@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Aaron Metcalf&quot; /&gt;&lt;x:enumeration value=&quot;Aaron Metcalf&quot; /&gt;&lt;x:enumeration value=&quot;Aarti Parmar&quot; /&gt;&lt;x:enumeration value=&quot;abayomi.odubanjo@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Abbie Crace&quot; /&gt;&lt;x:enumeration value=&quot;abbie.crace@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Abderrahmane Boukabache&quot; /&gt;&lt;x:enumeration value=&quot;Abdul Majeed&quot; /&gt;&lt;x:enumeration value=&quot;abdul.majeed@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;abhishek.dastidar@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Abidat Bello&quot; /&gt;&lt;x:enumeration value=&quot;Abigail Colvin&quot; /&gt;&lt;x:enumeration value=&quot;Abigail Davenport&quot; /&gt;&lt;x:enumeration value=&quot;Abigail Holmes&quot; /&gt;&lt;x:enumeration value=&quot;abigail.jack@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Abigail Mason&quot; /&gt;&lt;x:enumeration value=&quot;abigail.mason@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Abigail Pattison&quot; /&gt;&lt;x:enumeration value=&quot;abigail.pattison@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;abigail.wiseman@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Abiodun Ashiru&quot; /&gt;&lt;x:enumeration value=&quot;Adaeze Kwentua&quot; /&gt;&lt;x:enumeration value=&quot;adaeze.kwentua@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Bray&quot; /&gt;&lt;x:enumeration value=&quot;Adam Britton&quot; /&gt;&lt;x:enumeration value=&quot;Adam Brown&quot; /&gt;&lt;x:enumeration value=&quot;adam.burman@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Butler&quot; /&gt;&lt;x:enumeration value=&quot;Adam Chappelle&quot; /&gt;&lt;x:enumeration value=&quot;adam.chappelle@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Claxton&quot; /&gt;&lt;x:enumeration value=&quot;adam.claxton@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Green&quot; /&gt;&lt;x:enumeration value=&quot;Adam Hermann&quot; /&gt;&lt;x:enumeration value=&quot;adam.hermann@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Kelly&quot; /&gt;&lt;x:enumeration value=&quot;adam.kelly@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Kennedy&quot; /&gt;&lt;x:enumeration value=&quot;adam.kennedy@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam King&quot; /&gt;&lt;x:enumeration value=&quot;adam.king@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Pooley&quot; /&gt;&lt;x:enumeration value=&quot;Adam Rees&quot; /&gt;&lt;x:enumeration value=&quot;adam.rees@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Sadok&quot; /&gt;&lt;x:enumeration value=&quot;Adam Smart&quot; /&gt;&lt;x:enumeration value=&quot;adam.smart@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Wickenden&quot; /&gt;&lt;x:enumeration value=&quot;adam.wickenden@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adana Joseph-Constantine&quot; /&gt;&lt;x:enumeration value=&quot;adanma.chryschikere@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adannaya Igwe&quot; /&gt;&lt;x:enumeration value=&quot;Adebukunola Alalade&quot; /&gt;&lt;x:enumeration value=&quot;Adeel Hussain&quot; /&gt;&lt;x:enumeration value=&quot;adele.clarke@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adele Duncan&quot; /&gt;&lt;x:enumeration value=&quot;adele.duncan@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adele Hamflett&quot; /&gt;&lt;x:enumeration value=&quot;adele.hamflett@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adele Law&quot; /&gt;&lt;x:enumeration value=&quot;adele.law@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adele Patterson&quot; /&gt;&lt;x:enumeration value=&quot;adele.patterson@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adele Phillips&quot; /&gt;&lt;x:enumeration value=&quot;adele.phillips@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;adenike.ogunyemi@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adeola Adegbola&quot; /&gt;&lt;x:enumeration value=&quot;adeola.adegbola@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adetola Adekanmbi&quot; /&gt;&lt;x:enumeration value=&quot;adetola.lawal@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adina Blanita&quot; /&gt;&lt;x:enumeration value=&quot;Adriana Golonkiewicz&quot; /&gt;&lt;x:enumeration value=&quot;adriana.golonkiewicz@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adrian Hallowes&quot; /&gt;&lt;x:enumeration value=&quot;Adrian Harding&quot; /&gt;&lt;x:enumeration value=&quot;Adrian Jenkins&quot; /&gt;&lt;x:enumeration value=&quot;adrian.jenkins@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adrian Lonnon&quot; /&gt;&lt;x:enumeration value=&quot;adrian.lonnon@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adrian Maycock&quot; /&gt;&lt;x:enumeration value=&quot;adrian.maycock@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adrian-Mihai Cret&quot; /&gt;&lt;x:enumeration value=&quot;adrian-mihai.cret@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adrian Rowe&quot; /&gt;&lt;x:enumeration value=&quot;adrian.rowe@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adrienne Hampson&quot; /&gt;&lt;x:enumeration value=&quot;adrienne.hampson@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;adwoa.kumi@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Afsana Ahmed&quot; /&gt;&lt;x:enumeration value=&quot;Afua Koram&quot; /&gt;&lt;x:enumeration value=&quot;afua.koram@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Afzal Ahmed&quot; /&gt;&lt;x:enumeration value=&quot;Agnes Ashbridge&quot; /&gt;&lt;/x:restriction&gt;&lt;/x:simpleType&gt;&lt;/x:attribute&gt;&lt;x:attribute name=&quot;Editor&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:userField=&quot;true&quot; d:lookupField=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;Modified By&quot;&gt;&lt;x:simpleType&gt;&lt;x:restriction base=&quot;x:string&quot;&gt;&lt;x:enumeration value=&quot;a.adu-amankwah@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;aaron.ajibawo@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Aaron Chan&quot; /&gt;&lt;x:enumeration value=&quot;aaron.chan@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Aaron Keegans&quot; /&gt;&lt;x:enumeration value=&quot;Aaron Lloyd&quot; /&gt;&lt;x:enumeration value=&quot;aaron.lloyd@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Aaron Metcalf&quot; /&gt;&lt;x:enumeration value=&quot;Aaron Metcalf&quot; /&gt;&lt;x:enumeration value=&quot;Aarti Parmar&quot; /&gt;&lt;x:enumeration value=&quot;abayomi.odubanjo@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Abbie Crace&quot; /&gt;&lt;x:enumeration value=&quot;abbie.crace@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Abderrahmane Boukabache&quot; /&gt;&lt;x:enumeration value=&quot;Abdul Majeed&quot; /&gt;&lt;x:enumeration value=&quot;abdul.majeed@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;abhishek.dastidar@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Abidat Bello&quot; /&gt;&lt;x:enumeration value=&quot;Abigail Colvin&quot; /&gt;&lt;x:enumeration value=&quot;Abigail Davenport&quot; /&gt;&lt;x:enumeration value=&quot;Abigail Holmes&quot; /&gt;&lt;x:enumeration value=&quot;abigail.jack@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Abigail Mason&quot; /&gt;&lt;x:enumeration value=&quot;abigail.mason@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Abigail Pattison&quot; /&gt;&lt;x:enumeration value=&quot;abigail.pattison@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;abigail.wiseman@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Abiodun Ashiru&quot; /&gt;&lt;x:enumeration value=&quot;Adaeze Kwentua&quot; /&gt;&lt;x:enumeration value=&quot;adaeze.kwentua@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Bray&quot; /&gt;&lt;x:enumeration value=&quot;Adam Britton&quot; /&gt;&lt;x:enumeration value=&quot;Adam Brown&quot; /&gt;&lt;x:enumeration value=&quot;adam.burman@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Butler&quot; /&gt;&lt;x:enumeration value=&quot;Adam Chappelle&quot; /&gt;&lt;x:enumeration value=&quot;adam.chappelle@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Claxton&quot; /&gt;&lt;x:enumeration value=&quot;adam.claxton@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Green&quot; /&gt;&lt;x:enumeration value=&quot;Adam Hermann&quot; /&gt;&lt;x:enumeration value=&quot;adam.hermann@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Kelly&quot; /&gt;&lt;x:enumeration value=&quot;adam.kelly@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Kennedy&quot; /&gt;&lt;x:enumeration value=&quot;adam.kennedy@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam King&quot; /&gt;&lt;x:enumeration value=&quot;adam.king@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Pooley&quot; /&gt;&lt;x:enumeration value=&quot;Adam Rees&quot; /&gt;&lt;x:enumeration value=&quot;adam.rees@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Sadok&quot; /&gt;&lt;x:enumeration value=&quot;Adam Smart&quot; /&gt;&lt;x:enumeration value=&quot;adam.smart@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Wickenden&quot; /&gt;&lt;x:enumeration value=&quot;adam.wickenden@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adana Joseph-Constantine&quot; /&gt;&lt;x:enumeration value=&quot;adanma.chryschikere@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adannaya Igwe&quot; /&gt;&lt;x:enumeration value=&quot;Adebukunola Alalade&quot; /&gt;&lt;x:enumeration value=&quot;Adeel Hussain&quot; /&gt;&lt;x:enumeration value=&quot;adele.clarke@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adele Duncan&quot; /&gt;&lt;x:enumeration value=&quot;adele.duncan@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adele Hamflett&quot; /&gt;&lt;x:enumeration value=&quot;adele.hamflett@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adele Law&quot; /&gt;&lt;x:enumeration value=&quot;adele.law@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adele Patterson&quot; /&gt;&lt;x:enumeration value=&quot;adele.patterson@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adele Phillips&quot; /&gt;&lt;x:enumeration value=&quot;adele.phillips@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;adenike.ogunyemi@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adeola Adegbola&quot; /&gt;&lt;x:enumeration value=&quot;adeola.adegbola@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adetola Adekanmbi&quot; /&gt;&lt;x:enumeration value=&quot;adetola.lawal@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adina Blanita&quot; /&gt;&lt;x:enumeration value=&quot;Adriana Golonkiewicz&quot; /&gt;&lt;x:enumeration value=&quot;adriana.golonkiewicz@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adrian Hallowes&quot; /&gt;&lt;x:enumeration value=&quot;Adrian Harding&quot; /&gt;&lt;x:enumeration value=&quot;Adrian Jenkins&quot; /&gt;&lt;x:enumeration value=&quot;adrian.jenkins@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adrian Lonnon&quot; /&gt;&lt;x:enumeration value=&quot;adrian.lonnon@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adrian Maycock&quot; /&gt;&lt;x:enumeration value=&quot;adrian.maycock@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adrian-Mihai Cret&quot; /&gt;&lt;x:enumeration value=&quot;adrian-mihai.cret@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adrian Rowe&quot; /&gt;&lt;x:enumeration value=&quot;adrian.rowe@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adrienne Hampson&quot; /&gt;&lt;x:enumeration value=&quot;adrienne.hampson@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;adwoa.kumi@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Afsana Ahmed&quot; /&gt;&lt;x:enumeration value=&quot;Afua Koram&quot; /&gt;&lt;x:enumeration value=&quot;afua.koram@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Afzal Ahmed&quot; /&gt;&lt;x:enumeration value=&quot;Agnes Ashbridge&quot; /&gt;&lt;/x:restriction&gt;&lt;/x:simpleType&gt;&lt;/x:attribute&gt;&lt;x:attribute name=&quot;_UIVersionString&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;Contains;BeginsWith;&quot; d:displayName=&quot;Version&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;Attachments&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;&quot; d:displayName=&quot;Attachments&quot; type=&quot;x:boolean&quot; /&gt;&lt;x:attribute name=&quot;File_x0020_Type&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;Contains;BeginsWith;&quot; d:displayName=&quot;File Type&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;FileLeafRef&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;Contains;BeginsWith;&quot; d:displayName=&quot;Name (for use in forms)&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;FileDirRef&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;Path&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;FSObjType&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;Item Type&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;_HasCopyDestinations&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;&quot; d:displayName=&quot;Has Copy Destinations&quot; type=&quot;x:boolean&quot; /&gt;&lt;x:attribute name=&quot;_CopySource&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;Contains;BeginsWith;&quot; d:displayName=&quot;Copy Source&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;ContentTypeId&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:displayName=&quot;Content Type ID&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;_ModerationStatus&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;&quot; d:displayName=&quot;Approval Status&quot;&gt;&lt;x:simpleType&gt;&lt;x:restriction base=&quot;x:string&quot;&gt;&lt;x:enumeration value=&quot;Approved&quot; /&gt;&lt;x:enumeration value=&quot;Rejected&quot; /&gt;&lt;x:enumeration value=&quot;Pending&quot; /&gt;&lt;x:enumeration value=&quot;Draft&quot; /&gt;&lt;x:enumeration value=&quot;Scheduled&quot; /&gt;&lt;/x:restriction&gt;&lt;/x:simpleType&gt;&lt;/x:attribute&gt;&lt;x:attribute name=&quot;_UIVersion&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;UI Version&quot; type=&quot;x:int&quot; /&gt;&lt;x:attribute name=&quot;Created_x0020_Date&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;Created&quot; type=&quot;x:dateTime&quot; /&gt;&lt;x:attribute name=&quot;FileRef&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;URL Path&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;ItemChildCount&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;Item Child Count&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;FolderChildCount&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;Folder Child Count&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;AppAuthor&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;App Created By&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;AppEditor&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;App Modified By&quot; type=&quot;x:string&quot; /&gt;&lt;/x:complexType&gt;&lt;/x:element&gt;&lt;/x:sequence&gt;&lt;/x:complexType&gt;&lt;/x:element&gt;&lt;/x:schema&gt;&lt;View Name=&quot;{F0E42506-4243-42AE-A5F9-AF3BAFC770A0}&quot; Type=&quot;HTML&quot; Hidden=&quot;TRUE&quot; ReadOnly=&quot;TRUE&quot; OrderedView=&quot;TRUE&quot; DisplayName=&quot;&quot; Url=&quot;/about/SitePages/Quality.aspx&quot; Level=&quot;1&quot; BaseViewID=&quot;1&quot; ContentTypeID=&quot;0x&quot; UIVersion=&quot;15&quot;&gt;&lt;Query&gt;&lt;OrderBy&gt;&lt;FieldRef Name=&quot;TileOrder&quot; Ascending=&quot;TRUE&quot; /&gt;&lt;FieldRef Name=&quot;Modified&quot; Ascending=&quot;FALSE&quot; /&gt;&lt;/OrderBy&gt;&lt;/Query&gt;&lt;ViewFields&gt;&lt;FieldRef Name=&quot;Title&quot; FieldType=&quot;Text&quot; RealFieldName=&quot;Title&quot; DisplayName=&quot;Title&quot; ID=&quot;fa564e0f-0c70-4ab9-b863-0177e6ddd247&quot; Type=&quot;Text&quot; AutoHyperLink=&quot;TRUE&quot; AllowGridEditing=&quot;TRUE&quot; /&gt;&lt;FieldRef Name=&quot;BackgroundImageLocation&quot; FieldType=&quot;URL&quot; RealFieldName=&quot;BackgroundImageLocation&quot; DisplayName=&quot;Background Image Location&quot; ID=&quot;a0fc423e-0808-490e-905e-260abd3d6511&quot; Format=&quot;Hyperlink&quot; Type=&quot;URL&quot; Filterable=&quot;FALSE&quot; AllowGridEditing=&quot;TRUE&quot; /&gt;&lt;FieldRef Name=&quot;Description&quot; FieldType=&quot;Note&quot; RealFieldName=&quot;Description&quot; DisplayName=&quot;Description&quot; ID=&quot;bced0253-a215-49a2-bcd9-5025ad49560d&quot; Sortable=&quot;FALSE&quot; RichText=&quot;FALSE&quot; Type=&quot;Note&quot; NoAggregate=&quot;TRUE&quot; Filterable=&quot;FALSE&quot; AllowGridEditing=&quot;TRUE&quot; /&gt;&lt;FieldRef Name=&quot;LinkLocation&quot; FieldType=&quot;URL&quot; RealFieldName=&quot;LinkLocation&quot; DisplayName=&quot;Site URL&quot; ID=&quot;fda2f5e5-8253-4b10-8876-a42268d758e0&quot; Format=&quot;Hyperlink&quot; Type=&quot;URL&quot; Filterable=&quot;FALSE&quot; AllowGridEditing=&quot;TRUE&quot; /&gt;&lt;FieldRef Name=&quot;LaunchBehavior&quot; FieldType=&quot;Choice&quot; RealFieldName=&quot;LaunchBehavior&quot; DisplayName=&quot;Launch Behavior&quot; ID=&quot;b2424958-fe1e-4227-af83-954985029aac&quot; Type=&quot;Choice&quot; AllowGridEditing=&quot;TRUE&quot; /&gt;&lt;FieldRef Name=&quot;BackgroundImageClusterX&quot; FieldType=&quot;Number&quot; RealFieldName=&quot;BackgroundImageClusterX&quot; DisplayName=&quot;Background Image Cluster Horizontal Start&quot; ID=&quot;2a54fee9-ad68-454b-905b-f92ccee343d3&quot; Type=&quot;Number&quot; AllowGridEditing=&quot;TRUE&quot; /&gt;&lt;FieldRef Name=&quot;BackgroundImageClusterY&quot; FieldType=&quot;Number&quot; RealFieldName=&quot;BackgroundImageClusterY&quot; DisplayName=&quot;Background Image Cluster Vertical Start&quot; ID=&quot;2976fc30-0bbe-4671-bcf1-87679b512e9b&quot; Type=&quot;Number&quot; AllowGridEditing=&quot;TRUE&quot; /&gt;&lt;/ViewFields&gt;&lt;RowLimit Paged=&quot;TRUE&quot;&gt;30&lt;/RowLimit&gt;&lt;JSLink&gt;sp.ui.tileview.js&lt;/JSLink&gt;&lt;XslLink Default=&quot;TRUE&quot;&gt;main.xsl&lt;/XslLink&gt;&lt;Toolbar Type=&quot;None&quot; /&gt;&lt;List Direction=&quot;none&quot; TemplateType=&quot;170&quot; title=&quot;Quality_Metrotiles&quot; description=&quot;&quot; basetype=&quot;0&quot; RootFolder=&quot;&quot; version=&quot;2&quot; name=&quot;{31B00158-0C58-4DDE-99AB-E4924684F8B1}&quot; moderatedlist=&quot;0&quot; SendToLocationName=&quot;&quot; SendToLocationUrl=&quot;&quot; WriteSecurity=&quot;1&quot; EnableMinorVersions=&quot;0&quot; VersioningEnabled=&quot;0&quot; ForceCheckout=&quot;0&quot; WorkflowsAssociated=&quot;0&quot; DefaultItemOpen=&quot;1&quot; RecycleBinEnabled=&quot;1&quot; ExternalDataList=&quot;0&quot; OfficialFileNames=&quot;&quot; EnableSyndication=&quot;1&quot; enablecontenttypes=&quot;0&quot; /&gt;&lt;/View&gt;&lt;ParamBindings&gt;













&amp;lt;ParameterBinding Name=&quot;dvt_sortdir&quot; Location=&quot;Postback;Connection&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;dvt_sortfield&quot; Location=&quot;Postback;Connection&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;dvt_startposition&quot; Location=&quot;Postback&quot; DefaultValue=&quot;&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;dvt_firstrow&quot; Location=&quot;Postback;Connection&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;OpenMenuKeyAccessible&quot; Location=&quot;Resource(wss,OpenMenuKeyAccessible)&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;open_menu&quot; Location=&quot;Resource(wss,open_menu)&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;select_deselect_all&quot; Location=&quot;Resource(wss,select_deselect_all)&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;idPresEnabled&quot; Location=&quot;Resource(wss,idPresEnabled)&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;NoAnnouncements&quot; Location=&quot;Resource(wss,noXinviewofY_LIST)&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;NoAnnouncementsHowTo&quot; Location=&quot;Resource(wss,noXinviewofY_DEFAULT)&quot; /&amp;gt;&lt;/ParamBindings&gt;&lt;Rows&gt;&lt;Row Title=&quot;CST&quot; File_x0020_Type=&quot;&quot; File_x0020_Type.mapapp=&quot;&quot; HTML_x0020_File_x0020_Type.File_x0020_Type.mapcon=&quot;&quot; HTML_x0020_File_x0020_Type.File_x0020_Type.mapico=&quot;icgen.gif&quot; BackgroundImageLocation=&quot;/PublishingImages/metrotiles/Clinical-Standards-Team.png&quot; BackgroundImageLocation.desc=&quot;Team&quot; Description=&quot;&quot; LinkLocation=&quot;/teams/clinical/SitePages/team.aspx&quot; LinkLocation.desc=&quot;Clinical Standards Team&quot; LaunchBehavior=&quot;New tab&quot; TileOrder=&quot;1&quot; TileOrder.=&quot;1.00000000000000&quot; BackgroundImageClusterX=&quot;&quot; BackgroundImageClusterX.=&quot;&quot; BackgroundImageClusterY=&quot;&quot; BackgroundImageClusterY.=&quot;&quot; LinkTitleNoMenu=&quot;CST&quot; LinkTitle=&quot;CST&quot; Target_x0020_Audiences=&quot;&quot; ID=&quot;9&quot; ContentType=&quot;Quality_Metrotiles&quot; Modified=&quot;24/07/2019 17:33&quot; Modified.FriendlyDisplay=&quot;0|24 July, 2019&quot; Created=&quot;13/06/2019 16:23&quot; Created.FriendlyDisplay=&quot;0|13 June, 2019&quot; Author=&quot;3746&quot; Editor=&quot;4133&quot; _UIVersionString=&quot;1.0&quot; Attachments=&quot;0&quot; FileRef=&quot;/about/Lists/Quality_Metrotiles/9_.000&quot; Created_x0020_Date.ifnew=&quot;&quot; FSObjType=&quot;0&quot; SortBehavior=&quot;0&quot; PermMask=&quot;0x7fffffffffffffff&quot; FileLeafRef=&quot;9_.000&quot; SyncClientId=&quot;&quot; DocIcon=&quot;&quot; MetaInfo=&quot;&quot; ItemChildCount=&quot;0&quot; FolderChildCount=&quot;0&quot; AppAuthor=&quot;&quot; AppEditor=&quot;&quot; /&gt;&lt;Row Title=&quot;CRT&quot; File_x0020_Type=&quot;&quot; File_x0020_Type.mapapp=&quot;&quot; HTML_x0020_File_x0020_Type.File_x0020_Type.mapcon=&quot;&quot; HTML_x0020_File_x0020_Type.File_x0020_Type.mapico=&quot;icgen.gif&quot; BackgroundImageLocation=&quot;/PublishingImages/metrotiles/Customer-Relations-Team.png&quot; BackgroundImageLocation.desc=&quot;CRT&quot; Description=&quot;&quot; LinkLocation=&quot;mailto:Customer-relations@chdauk.co.uk&quot; LinkLocation.desc=&quot;CRT&quot; LaunchBehavior=&quot;New tab&quot; TileOrder=&quot;2&quot; TileOrder.=&quot;2.00000000000000&quot; BackgroundImageClusterX=&quot;&quot; BackgroundImageClusterX.=&quot;&quot; BackgroundImageClusterY=&quot;&quot; BackgroundImageClusterY.=&quot;&quot; LinkTitleNoMenu=&quot;CRT&quot; LinkTitle=&quot;CRT&quot; Target_x0020_Audiences=&quot;&quot; ID=&quot;8&quot; ContentType=&quot;Quality_Metrotiles&quot; Modified=&quot;24/07/2019 17:33&quot; Modified.FriendlyDisplay=&quot;0|24 July, 2019&quot; Created=&quot;13/06/2019 16:23&quot; Created.FriendlyDisplay=&quot;0|13 June, 2019&quot; Author=&quot;3746&quot; Editor=&quot;4133&quot; _UIVersionString=&quot;1.0&quot; Attachments=&quot;0&quot; FileRef=&quot;/about/Lists/Quality_Metrotiles/8_.000&quot; Created_x0020_Date.ifnew=&quot;&quot; FSObjType=&quot;0&quot; SortBehavior=&quot;0&quot; PermMask=&quot;0x7fffffffffffffff&quot; FileLeafRef=&quot;8_.000&quot; SyncClientId=&quot;&quot; DocIcon=&quot;&quot; MetaInfo=&quot;&quot; ItemChildCount=&quot;0&quot; FolderChildCount=&quot;0&quot; AppAuthor=&quot;&quot; AppEditor=&quot;&quot; /&gt;&lt;Row Title=&quot;Quality Awards&quot; File_x0020_Type=&quot;&quot; File_x0020_Type.mapapp=&quot;&quot; HTML_x0020_File_x0020_Type.File_x0020_Type.mapcon=&quot;&quot; HTML_x0020_File_x0020_Type.File_x0020_Type.mapico=&quot;icgen.gif&quot; BackgroundImageLocation=&quot;/PublishingImages/metrotiles/Quality-Awards.png&quot; BackgroundImageLocation.desc=&quot;Trophy&quot; Description=&quot;Nomination form&quot; LinkLocation=&quot;/knowledge/Documents_Old/Nomination%20Form%20-%2012%20days%20of%20Quality.pdf&quot; LinkLocation.desc=&quot;Home&quot; LaunchBehavior=&quot;New tab&quot; TileOrder=&quot;3&quot; TileOrder.=&quot;3.00000000000000&quot; BackgroundImageClusterX=&quot;&quot; BackgroundImageClusterX.=&quot;&quot; BackgroundImageClusterY=&quot;&quot; BackgroundImageClusterY.=&quot;&quot; LinkTitleNoMenu=&quot;Quality Awards&quot; LinkTitle=&quot;Quality Awards&quot; Target_x0020_Audiences=&quot;&quot; ID=&quot;4&quot; ContentType=&quot;Quality_Metrotiles&quot; Modified=&quot;25/11/2019 14:45&quot; Modified.FriendlyDisplay=&quot;0|25 November, 2019&quot; Created=&quot;13/06/2019 16:23&quot; Created.FriendlyDisplay=&quot;0|13 June, 2019&quot; Author=&quot;3746&quot; Editor=&quot;4133&quot; _UIVersionString=&quot;1.0&quot; Attachments=&quot;0&quot; FileRef=&quot;/about/Lists/Quality_Metrotiles/4_.000&quot; Created_x0020_Date.ifnew=&quot;&quot; FSObjType=&quot;0&quot; SortBehavior=&quot;0&quot; PermMask=&quot;0x7fffffffffffffff&quot; FileLeafRef=&quot;4_.000&quot; SyncClientId=&quot;&quot; DocIcon=&quot;&quot; MetaInfo=&quot;&quot; ItemChildCount=&quot;0&quot; FolderChildCount=&quot;0&quot; AppAuthor=&quot;&quot; AppEditor=&quot;&quot; /&gt;&lt;Row Title=&quot;Quality Podcast&quot; File_x0020_Type=&quot;&quot; File_x0020_Type.mapapp=&quot;&quot; HTML_x0020_File_x0020_Type.File_x0020_Type.mapcon=&quot;&quot; HTML_x0020_File_x0020_Type.File_x0020_Type.mapico=&quot;icgen.gif&quot; BackgroundImageLocation=&quot;/PublishingImages/metrotiles/Quality-Podcast.png&quot; BackgroundImageLocation.desc=&quot;Microphone&quot; Description=&quot;Coming Soon&quot; LinkLocation=&quot;/&quot; LinkLocation.desc=&quot;Home&quot; LaunchBehavior=&quot;New tab&quot; TileOrder=&quot;4&quot; TileOrder.=&quot;4.00000000000000&quot; BackgroundImageClusterX=&quot;&quot; BackgroundImageClusterX.=&quot;&quot; BackgroundImageClusterY=&quot;&quot; BackgroundImageClusterY.=&quot;&quot; LinkTitleNoMenu=&quot;Quality Podcast&quot; LinkTitle=&quot;Quality Podcast&quot; Target_x0020_Audiences=&quot;&quot; ID=&quot;3&quot; ContentType=&quot;Quality_Metrotiles&quot; Modified=&quot;24/07/2019 17:23&quot; Modified.FriendlyDisplay=&quot;0|24 July, 2019&quot; Created=&quot;13/06/2019 16:23&quot; Created.FriendlyDisplay=&quot;0|13 June, 2019&quot; Author=&quot;3746&quot; Editor=&quot;4133&quot; _UIVersionString=&quot;1.0&quot; Attachments=&quot;0&quot; FileRef=&quot;/about/Lists/Quality_Metrotiles/3_.000&quot; Created_x0020_Date.ifnew=&quot;&quot; FSObjType=&quot;0&quot; SortBehavior=&quot;0&quot; PermMask=&quot;0x7fffffffffffffff&quot; FileLeafRef=&quot;3_.000&quot; SyncClientId=&quot;&quot; DocIcon=&quot;&quot; MetaInfo=&quot;&quot; ItemChildCount=&quot;0&quot; FolderChildCount=&quot;0&quot; AppAuthor=&quot;&quot; AppEditor=&quot;&quot; /&gt;&lt;Row Title=&quot;Quality Tips&quot; File_x0020_Type=&quot;&quot; File_x0020_Type.mapapp=&quot;&quot; HTML_x0020_File_x0020_Type.File_x0020_Type.mapcon=&quot;&quot; HTML_x0020_File_x0020_Type.File_x0020_Type.mapico=&quot;icgen.gif&quot; BackgroundImageLocation=&quot;/PublishingImages/metrotiles/Quality-Tips.png&quot; BackgroundImageLocation.desc=&quot;Play button&quot; Description=&quot;Coming Soon&quot; LinkLocation=&quot;/&quot; LinkLocation.desc=&quot;Home&quot; LaunchBehavior=&quot;New tab&quot; TileOrder=&quot;5&quot; TileOrder.=&quot;5.00000000000000&quot; BackgroundImageClusterX=&quot;&quot; BackgroundImageClusterX.=&quot;&quot; BackgroundImageClusterY=&quot;&quot; BackgroundImageClusterY.=&quot;&quot; LinkTitleNoMenu=&quot;Quality Tips&quot; LinkTitle=&quot;Quality Tips&quot; Target_x0020_Audiences=&quot;&quot; ID=&quot;2&quot; ContentType=&quot;Quality_Metrotiles&quot; Modified=&quot;24/07/2019 17:03&quot; Modified.FriendlyDisplay=&quot;0|24 July, 2019&quot; Created=&quot;13/06/2019 16:23&quot; Created.FriendlyDisplay=&quot;0|13 June, 2019&quot; Author=&quot;3746&quot; Editor=&quot;4133&quot; _UIVersionString=&quot;1.0&quot; Attachments=&quot;0&quot; FileRef=&quot;/about/Lists/Quality_Metrotiles/2_.000&quot; Created_x0020_Date.ifnew=&quot;&quot; FSObjType=&quot;0&quot; SortBehavior=&quot;0&quot; PermMask=&quot;0x7fffffffffffffff&quot; FileLeafRef=&quot;2_.000&quot; SyncClientId=&quot;&quot; DocIcon=&quot;&quot; MetaInfo=&quot;&quot; ItemChildCount=&quot;0&quot; FolderChildCount=&quot;0&quot; AppAuthor=&quot;&quot; AppEditor=&quot;&quot; /&gt;&lt;/Rows&gt;&lt;/dsQueryResponse&gt;" __designer:CustomXsl="fldtypes_Ratings.xsl" WebPart="true" Height="" Width=""><ParameterBindings>














<ParameterBinding Name="dvt_sortdir" Location="Postback;Connection" /><ParameterBinding Name="dvt_sortfield" Location="Postback;Connection" /><ParameterBinding Name="dvt_startposition" Location="Postback" DefaultValue="" /><ParameterBinding Name="dvt_firstrow" Location="Postback;Connection" /><ParameterBinding Name="OpenMenuKeyAccessible" Location="Resource(wss,OpenMenuKeyAccessible)" /><ParameterBinding Name="open_menu" Location="Resource(wss,open_menu)" /><ParameterBinding Name="select_deselect_all" Location="Resource(wss,select_deselect_all)" /><ParameterBinding Name="idPresEnabled" Location="Resource(wss,idPresEnabled)" /><ParameterBinding Name="NoAnnouncements" Location="Resource(wss,noXinviewofY_LIST)" /><ParameterBinding Name="NoAnnouncementsHowTo" Location="Resource(wss,noXinviewofY_DEFAULT)" /></ParameterBindings>
<DataFields>
</DataFields>
<XmlDefinition>
<View Name="{F0E42506-4243-42AE-A5F9-AF3BAFC770A0}" Type="HTML" Hidden="TRUE" ReadOnly="TRUE" OrderedView="TRUE" DisplayName="" Url="/about/SitePages/Quality.aspx" Level="1" BaseViewID="1" ContentTypeID="0x" ><Query><OrderBy><FieldRef Name="TileOrder" Ascending="TRUE"/><FieldRef Name="Modified" Ascending="FALSE"/></OrderBy></Query><ViewFields><FieldRef Name="Title"/><FieldRef Name="BackgroundImageLocation"/><FieldRef Name="Description"/><FieldRef Name="LinkLocation"/><FieldRef Name="LaunchBehavior"/><FieldRef Name="BackgroundImageClusterX"/><FieldRef Name="BackgroundImageClusterY"/></ViewFields><RowLimit Paged="TRUE">30</RowLimit><JSLink>sp.ui.tileview.js</JSLink><XslLink Default="TRUE">main.xsl</XslLink><Toolbar Type="None"/></View></XmlDefinition>
</WebPartPages:XsltListViewWebPart>

</ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="faqNewQuestion" id="faqNewQuestion">
            <h2><u>Ask a Question</u></h2>
            <!--<iframe name="newPostFrame" id="newPost" src="https://intranet.chda.maxuk.co.uk/about/Lists/Quality_FAQs/newQuestion.aspx" scrolling="no"></iframe>-->
            <div class="row" id="faqCategory">
                <div class="col-sm-4 col-md-4 col-lg-4"><h4>Category</h4></div>
                <div class="col-sm-8 col-md-8 col-lg-8">
                    <select id="faqSelect">                        
                    </select>
                </div>
            </div>
            <div class="row" id="faqQuestion">
                <h4>Question</h4>
                <textarea id="faqQuestionText" maxlength="255" draggable="false" cols="28" rows="3"></textarea>                
            </div>
            <a onclick="writeFAQ()" role="button" class="btn button">Post</a>
        </div>
    </div>

	<!-- SCRIPTS  -->
    <script type="text/javascript">

        //var siteURL = _spPageContextInfo.webAbsoluteUrl;
        var categories = [];
        var tabNum = [];

        /**** DOM ready ****/
        $(function () {
            getPageText();
            getLinkData('Home');
            getDocumentData();
            getFaqTabs();
            getFaqItems();
            getTeam();
        });

        /***** Window Ready *****/
        $(window).on('load', function () {
            makeActive('1');
        });

        function makeActive(tabNum) {
            $('#dashboardTabNames li').removeClass('buttonOn');
            $("#dashboardTabNames li:nth-child(" + tabNum + ")").addClass('buttonOn');
        };

        function getPageText() {
            var method = "GetListItems";
            var list = "WelcomeMessage";
            var fields = "<ViewFields>" +
                "<FieldRef Name='ID' />" +
                "<FieldRef Name='welcomeText' />" +
                "<FieldRef Name='bannerText' />" +
                "</ViewFields>";
            $().SPServices({
                operation: method,
                async: false,
                listName: list,
                CAMLViewFields: fields,
                completefunc: function (xData, Status) {
                    $(xData.responseXML).SPFilterNode("z:row").each(function () {
                        var listID = ($(this).attr("ows_ID"));
                        var siteIntro = ($(this).attr("ows_welcomeText"));
                        var siteText = ($(this).attr("ows_bannerText"));
                        if (listID == 1) {
                            $('#welcomeText').append('<h2>Welcome to the Quality page</h2>' +
                                '<p>' + siteIntro + '</p>' +
                                '<h3 style="color:#545487!important"><strong>Here you will find</strong></h3>' +
                                '<blockquote>' + siteText + '</blockquote>');
                        }
                    });
                }
            });
        };

        function getDocumentData() {

            var dashboardTabs = ['Strategy', 'Guide', 'Lessons Learnt'];
            var height = $(window).height();
            var width = $(window).width();
            var adjHeight = height / 2;
            var adjWidth = width / 1.5;
            var reduceWidth = width / 2.75;
            var pdfIcon = '<i class="fa fa-file-pdf-o redIcon" aria-hidden="true"></i>';
            var wordIcon = '<i class="fa fa-file-word-o blueIcon" aria-hidden="true"></i>';
            var xlIcon = '<i class="fa fa-file-excel-o greenIcon" aria-hidden="true"></i>';
            var ppIcon = '<i class="fa fa-file-powerpoint-o orangeIcon" aria-hidden="true"></i>';
            var docIcon = '<i class="fa fa-file-o foreBlue1" aria-hidden="true"></i>';
            var zipIcon = '<i class="fa fa-file-archive orangeIcon" aria-hidden="true"></i>';
            var emailIcon = '<i class="fa fa-envelope forePurple1" aria-hidden="true"></i>';
            var icon;
            var folderNamePrev = "";
            var fcount = 1;
            var listFolder = "";
            var docCat = "";            

            // SP Services Variables
            var method = "GetListItems";
            var libraryURL = "https://intranet.chda.maxuk.co.uk/knowledge";
            var fields = "";
            var lists = ['Documents','Guides'];

            for (var listNum = 0; listNum < lists.length; listNum++) {
                
                //console.log(lists[listNum]);
                var docFlag = false;
                var docCount = 0;

                switch (lists[listNum]) {
                    case 'Documents':  
                        fields = "<ViewFields>" +
                            "<FieldRef Name='ID' />" +
                            "<FiledRef Name='Team' />" +
                            "<FieldRef Name='Category' />" +
                            "<FieldRef Name='LinkFilename' />" +
                            "<FieldRef Name='_ModerationStatus' />" +
                            "<FieldRef Name='Group' />" +
                            "</ViewFields > ";
                        break;
                    case 'Guides':  
                        fields = "<ViewFields>" +
                            "<FieldRef Name='ID' />" +
                            "<FiledRef Name='Team' />" +
                            "<FieldRef Name='Category' />" +
                            "<FieldRef Name='LinkFilename' />" +
                            "<FieldRef Name='_ModerationStatus' />" +
                            "<FieldRef Name='Folder' />" +
                            "</ViewFields > ";
                        break;
                }

                $().SPServices({
                    operation: method,
                    async: false,
                    listName: lists[listNum],
                    webURL: libraryURL,
                    CAMLViewFields: fields,
                    completefunc: function (xData, Status) {
                        $(xData.responseXML).SPFilterNode("z:row").each(function () {

                            // assign SP list item                            
                            var ID = $(this).attr("ows_ID");
                            var team = $(this).attr("ows_Team");
                            var tabCategory = $(this).attr("ows_Category");
                            var docName = $(this).attr("ows_LinkFilename");
                            var docStatus = $(this).attr("ows__ModerationStatus");
                            var docFQN = libraryURL + '/' + lists[listNum] + '/' + docName;
                            var docFolder = "";                            

                            switch (lists[listNum]) {
                                case 'Documents':                                    
                                    docFolder = $(this).attr("ows_Group");
                                    break;
                                case 'Guides':
                                    docFolder = $(this).attr("ows_Folder");
                                    break;
                            }

                            if (tabCategory !== undefined) { tabCategory = tabCategory.split(';#')[1]; }
                            if (team !== undefined) { team = team.split(';#')[1]; }

                            for (var tabNum = 0; tabNum < dashboardTabs.length; tabNum++) {                                  
                                if (team === "Quality" && tabCategory === dashboardTabs[tabNum] && docStatus === '0') {                                    
                                    docCat = "docFoldersTab" + tabNum;

                                    if (docName !== undefined) {
                                        var docTitle = docName.split(".")[0];
                                        var docType = docName.split(".")[1];
                                    }

                                    switch (docType) {
                                        case 'pdf':
                                            icon = pdfIcon;
                                            break;
                                        case 'doc':
                                        case 'docx':
                                            icon = wordIcon;
                                            break;
                                        case 'xls':
                                        case 'xlsx':
                                        case 'xlsm':
                                            icon = xlIcon;
                                            break;
                                        case 'ppt':
                                        case 'pptx':
                                            icon = ppIcon;
                                            break;
                                        case 'xsn':
                                            icon = docIcon;
                                            break;
                                        case 'msg':
                                            icon = emailIcon;
                                            break;
                                        case 'zip':
                                        case 'rar':
                                            icon = zipIcon;
                                            break;
                                        default:
                                            icon = docIcon;
                                            break;
                                    }

                                    var documentString = "<div class='row documentRow'>" +
                                        "<div class='col-xs-2 col-sm-2 col-md-2 col-lg-2 iconContainer'>" +
                                        "<nobr>" +
                                        "<div class='docIcon col-md-2'>" + icon + "</div>" +
                                        '<a class="docView col-md-2" href ="#" onclick = "openDialog(\'' + libraryURL + '/' + lists[listNum] + '/Forms/Display.aspx?ID=' + ID + '\',\'File Properties\',500,680); return false;" title = "view document information" > <i class="fa fa-info" aria-hidden="true"></i></a>' +
                                        //'<a class="docEdit col-md-2" href="#" onclick="openDialog(\'' + URL + '/' + list + '/Forms/Edit.aspx?ID=' + ID + '\',\'File Properties\',500,680); return false;" title="edit document information" > <i class="fa fa-pencil" aria-hidden="true"></i></a >' +
                                        //'<a class="docDelete col-md-2" href="#" onclick="deleteDoc(\'' + URL + '\',\'' + list + '\',' + ID + '); return false;" title="delete document"><i class="fa fa-remove" aria-hidden="true"></i></a >' +
                                        "</nobr > " +
                                        "</div>" +
                                        "<div class='col-xs-9 col-sm-9 col-md-9 col-lg-9 docContainer text-left'>" +
                                        "<p class='docItem'><a href='#' onclick='loadPDF(\"" + docFQN + "\",\"" + tabNum + "\")' title='open document'>" + docTitle + "</a></p>" +
                                        "</div>" +
                                        "</div>";

                                    if (docFolder !== undefined) {
                                        var folderName = docFolder.split(';#')[1];
                                        //console.log("folder=" + folderName + " prev folder=" + folderNamePrev);

                                        if (folderName === folderNamePrev) {
                                            $("#" + listFolder + "rootPanel").append(documentString);
                                        }

                                        if (folderName !== folderNamePrev) {                                           
                                            listFolder = docCat + "-Folder" + fcount;
                                            var folderString = "<div class='panel panel-default'>" +
                                                "<a class='accordion-toggle' data-toggle='collapse' data-parent='#" + docCat + "' href='#" + listFolder + "' >" +
                                                "<div class='panel-heading'>" +
                                                "<h4 class='panel-title'>" +
                                                "<span class='fa fa-folder'></span> " + folderName +
                                                "</h4>" +
                                                "</div>" +
                                                "</a>" +
                                                "<div id='" + listFolder + "' class='panel-collapse collapse'>" +
                                                "<div class='panel-body' id='" + listFolder + "rootPanel'>" + documentString +
                                                "</div>" +
                                                "</div>" +
                                                "</div>";

                                            //docFlag = true;                                            
                                            $('#' + docCat).append(folderString);
                                            fcount++;
                                        }                                        
                                    }
                                    docCount++;
                                } 
                            }
                            folderNamePrev = folderName;
                            console.log(docCount);
                        });
                    }
                });
                console.log("list=" + lists[listNum] + " docTabID=" + docCat);

                //if (docCount === 0) {
                    //$("#" + docCat).append('This category has no items to display.');
                //}
            }
        }

        function loadPDF(fileURL,tabNum) {
            $('#pdfViewerTab' + tabNum).prop('src', fileURL);
        }

        function openDialog(url, name, height, width, close) {
            if (close === undefined) { close = true; }
            var options = SP.UI.$create_DialogOptions();
            options.url = url;
            options.height = height;
            options.width = width;
            options.title = name;
            options.showMaximized = false;
            options.dialogReturnValueCallback = function (dialogResult, value) {
            options.showClose = close;
                SP.UI.ModalDialog.RefreshPage(dialogResult);
                if (value === "1") { window.parent.location.reload(); return value; }
            };
            SP.UI.ModalDialog.showModalDialog(options);
        }

        function getFaqTabs() {

            var method = "GetList";
            var list = "Quality_FAQs";
            var ID = 0;

            $().SPServices({
                async: false,
                operation: method,
                listName: list,
                completefunc: function (xData, Status) {

                    $(xData.responseXML).find("Field[DisplayName='Category'] CHOICE").each(function () {
                        categories[ID] = $(this).text();
                        tabNum[ID] = ID;
                        ID++;
                    });
                }
            });

            categories.sort();

            if (categories.length === 0) {
                $("#tabData").append('There currently are no FAQs to display');
            } else {
                for (var i = 1; i <= categories.length; i++) {

                    $('#faqSelect').append('<option value="'+categories[i-1]+'">' + categories[i - 1] + '</option>'); 
                    
                    if (i === 1) {
                        $("#tabNames").append("<li class='active'>" +
                            "<a data-toggle='pill' href='#faq0'>" + categories[0] + "</a>" +
                            "</li>");
                        $("#tabData").append("<div id='faq0' class='tab-pane fade in active'>" +
                            "<div class='row panel-group' style='margin-bottom: 10px;' id='accordion0'>" +
                            "<div id='C0' class='panel panel-primary'>" +
                            "</div>" +
                            "</div>" +
                            "</div>");
                    }

                    if (i >= 2) {
                        var x = i - 1;
                        $("#tabNames").append("<li>" +
                            "<a data-toggle='pill' href='#faq" + x + "'>" + categories[x] + "</a>" +
                            "</li>");
                        $("#tabData").append("<div id='faq" + x + "' class='tab-pane fade in'>" +
                            "<div class='row panel-group' style='margin-bottom: 10px;' id='accordion" + x + "'>" +
                            "<div id='C" + x + "' class='panel panel-primary'>" +
                            "</div>" +
                            "</div>" +
                            "</div>");
                    }
                }
            }
        }

        function getFaqItems() {

            var method = "GetListItems";
            var list = "Quality_FAQs";
            var fields = "<ViewFields>" +
                "<FieldRef Name='ID' />" +
                "<FieldRef Name='_ModerationStatus' />" +
                "<FieldRef Name='Title' />" +
                "<FieldRef Name='Category' />" +
                "<FieldRef Name='Answer' />" +
                "</ViewFields>";
            var count;

            $().SPServices({
                operation: method,
                async: false,
                listName: list,
                CAMLViewFields: fields,
                completefunc: function (xData, Status) {

                    $(xData.responseXML).SPFilterNode("z:row").each(function () {

                        // assign SP list item
                        var ID = ($(this).attr("ows_ID"));
                        var faqStatus = $(this).attr("ows__ModerationStatus");
                        var faqQuestion = ($(this).attr("ows_Title"));
                        var faqCategory = ($(this).attr("ows_Category"));
                        var faqAnswer = ($(this).attr("ows_Answer"));
                        var tabName = "";
                        var accordName = "";

                        if (faqStatus === '0') {
                            for (count = 0; count <= categories.length - 1; count++) {
                                if (faqCategory === categories[count]) {
                                    tabName = '#C' + tabNum[count];
                                    accordName = '#faq' + tabNum[count];
                                    //alert(categories[count]+" : "+faqCategory + " : " + tabName);                    		
                                }
                            }

                            $(tabName).append("<a class='accordion-toggle' data-toggle='collapse' data-parent=" + accordName + " href='#section" + ID + "'>" +
                                "<div class='panel-heading'>" +
                                "<div class='panel-title faqQuestion'>" +
                                "<strong>" + faqQuestion + "</strong>" +
                                "</div>" +
                                "</div>" +
                                "</a>" +
                                "<div id='section" + ID + "' class='panel-collapse collapse faqAnswer'> " +
                                "<div class='list-group'>" +
                                "<blockquote>" + faqAnswer + "</blockquote>" +
                                "</div>" +
                                "</div><p></p>");
                        }
                    });
                }
            });
        }

        function writeFAQ() {
            var faqText = $('textarea#faqQuestionText').val();
            var faqCat = $('#faqSelect').children("option:selected").val();

            var method = "UpdateListItems";
            var list = 'Quality_FAQs';

            $().SPServices({
                operation: method,
                async: false,
                listName: list,
                batchCmd: "New",
                valuepairs: [["Title", faqText],["Category", faqCat]],
                completefunc: function (xData, Status) {
                    
                }
            });

            //alert(faqText + " " + faqCat);
        }

        function getTeam() {

            var method = "";
            var list = "Quality_Team";
            var qualityGroup = [];
            var qualityColour = ['#4f7b39', '#c95828', '#205794', '#8a742e', '#5f295f', '#7676b8', '#9cc487', '#f9ad86', '#6e96cf', '#ddcc68', '#cfaccc', '#dbdcf4', '#d9eccd', '#fae8d6', '#e5eaf6', '#f2e5b6', '#f2ddec'];

            method = "GetList";
            var ID = 0;

            $().SPServices({
                async: false,
                operation: method,
                listName: list,
                completefunc: function (xData, Status) {

                    $(xData.responseXML).find("Field[DisplayName='QualityGroup'] CHOICE").each(function () {
                        console.log($(this).text());
                        qualityGroup[ID] = $(this).text();
                        ID++;
                    });
                }
            });

            //qualityGroup.sort();

            method = "GetListItems";          
            var fields = "<ViewFields>" +
                "<FieldRef Name='QualityGroup' />" +
                "<FieldRef Name='Title' />" +
                "<FieldRef Name='LastName' />" +
                //"<FieldRef Name='PersonOrder' />" +
                "<FieldRef Name='Picture' />" +
                "<FieldRef Name='JobTitle' />" +
                "<FieldRef Name='Description' />" +
                "<FieldRef Name='Phone' />" +
                "<FieldRef Name='EmailAddress' />" +
                "</ViewFields > ";
            var query = "<Query><OrderBy><FieldRef Name='QualityGroup' Ascending='True'/><FieldRef Name='PersonOrder' Ascending='True'/></OrderBy></Query>";

            //+ "<Where>" + "<Or>" + "<Or>" + "<Eq>" + "<FieldRef Name='Title'/><Value Type='Text'>The America</Value>" + "</Eq>" + "<Eq>" + "<FieldRef Name='Dream_x0020_Destination' /><Value Type='Text'>USA</Value>" + "</Eq>" + "</Or>" + "<IsNotNull>" + "<FieldRef Name='PPP'/>" + "</IsNotNull>" + "</Or>" + "</Where>" + "<OrderBy>" + "<FieldRef Name='PPP' Ascending='False'/>" + "</OrderBy>" + "</Query>";

            //for (var x = 0; x < qualityGroup.length; x++) {
                //$("#ContactCard").append('<div id="group' + x + '" style="background-color:' + qualityColour[x] + ';width:fit-content"></div>');
            //}
            for (var x = 0; x < qualityGroup.length; x++) {
                $().SPServices({
                    operation: method,
                    async: false,
                    listName: list,
                    CAMLViewFields: fields,
                    CAMLQuery: query,

                    completefunc: function (xData, Status) {
                        $(xData.responseXML).SPFilterNode("z:row").each(function () {
                            var group = $(this).attr("ows_QualityGroup");
                            var firstName = $(this).attr("ows_Title");
                            var lastName = $(this).attr("ows_LastName");
                            //var sortOrder = $(this).attr("ows_PersonOrder");
                            var jobTitle = $(this).attr("ows_JobTitle0").split(",")[1];
                            var teamURL = $(this).attr("ows_JobTitle0").split(",")[0];
                            var userImage = $(this).attr("ows_Picture").split(",")[0];
                            var phone = $(this).attr("ows_Phone");
                            //var description = $(this).attr("ows_Description");
                            var email = $(this).attr("ows_EmailAddress");
                            //var ID = Math.round(($(this).attr("ows_ID"), 0));

                            if (group === qualityGroup[x]) {
                                var contactCardString = '<div class="contactCard" style="border-top:4px solid ' + qualityColour[x] + '">' +
                                    '<div class="contactCard-Inner">' +
                                    '<div class="contactCard-Front">' +
                                    '<img alt="SMT Photo" src="' + userImage + '" />' +
                                    '<h3 class="userName">' + firstName + ' ' + lastName + '</h3>' +
                                    '</div>' +
                                    '<div class="contactCard-Back">' +
                                    '<h3 class="userName">' + firstName + ' ' + lastName + '</h3>' +
                                    '<h4><a class="jobTitle" href="' + teamURL + '" target="_blank">' + jobTitle + '</a></h4>' +
                                    '<p class="groupName">' + group + '</p>' +
                                    '<a href="mailto:' + email + '?subject=Contact from Intranet&body=Hi ' + firstName + '"><i class="fa fa-envelope"></i></a>' +
                                    '<div class="row">' +
                                    '<div class="col-sm-2 col-md-2 col-lg-2"><h5><i class="fa fa-phone"></i></h5></div>' +
                                    '<div class="col-sm-8 col-md-8 col-lg-8" style="left:-15px;width:78%"><h5>' + phone + '</h5></div>' +
                                    '</div>' +
                                    //'<div class="row">' +
                                    //    '<h6>' + Description + '</h6>' +
                                    //'</div>' +
                                    '</div>' +
                                    '</div>' +
                                    '</div>';
                                //$("#group" + x).append(contactCardString);
                                $('#ContactCard').append(contactCardString);
                            }

                        });
                    }
                });
            }
        }

    </script>

</asp:Content>