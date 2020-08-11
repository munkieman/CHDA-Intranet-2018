<%-- **************************************************
     Site   	: About
     Page   	: Locations
     Author 	: Jason Clark
     Date   	: April 2017
     Modified By:
     Date		:
     Notes		:
     ************************************************** --%> <%-- _lcid="1033" _version="15.0.4420" _dal="1" --%>
<%-- _LocalBinding --%>
<%@ Page language="C#" MasterPageFile="/_catalogs/masterpage/ShareBoot/ShareBoot.master"    Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document"  %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="PlaceHolderAdditionalPageHead">

	<!-- STYLES -->
    <style type="text/css">
		#usefulLinksGroup1, #usefulLinksSiteContacts {
			display: none;
		}
		.locationContent {
			position:relative;
			top:70px;
			left:-8px;
		}
		.locationSites {
			margin-right: 10px;
			padding:0 5px 0 0;			
		}
		.locationSites, .locationViewer {
			height: 75vh;
		}
		.locationDetails {
			height: auto;
		}
		.locationMap {
			margin-top: 10px;
			height: 45vh;
			width:100%;
		}
		a.siteLink:visited, a.siteLink:focus{
			background-color:red!important;
		}
        .areaTabContainer {
            position:absolute;
            top: -5px;
            width: 100%;
            height: 65px;
            background-color:white;
            z-index:99;
            overflow: hidden;
        }

            .areaTabContainer ul {
                position:fixed;
                width: 58vw;
                height:65px;
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

            .areaTabContainer li {
                margin: 0 5px 0 3px;
                display: inline;
            }		
            
        #areaTabs::-webkit-scrollbar {
            height: 10px;
            width: 10px;
        }
        #areaTabs::-webkit-scrollbar-track {
            box-shadow: inset 0 0 6px rgba(221,221,235,0.3);
            border-radius: 10px;
            border:1px solid #ddddeb;
            background-color: #fff;
        }
        #areaTabs::-webkit-scrollbar-thumb{
            border-radius: 10px;
            box-shadow: inset 0 0 6px rgba(221,221,235,.3);
            background-color: #545487;
        }      
        #areaTabs::-webkit-scrollbar-button {   
            color:#545487;
            padding:5px;
        }
        #areaTabs::-webkit-scrollbar-button:single-button:horizontal:start:decrement {
            background-color: #ddddeb; 
            /*font-family: "FontAwesome 5 Free";
            content: "\f104";*/
            border-radius: 10px;
        }
        #areaTabs::-webkit-scrollbar-button:single-button:horizontal:start:decrement:hover {
            background-color:#7676b8;
        }
        #areaTabs::-webkit-scrollbar-button:horizontal:single-button:end:increment {
            background-color: #ddddeb; 
            border-radius: 10px;
        }
        #areaTabs::-webkit-scrollbar-button:horizontal:single-button:end:increment:hover {
            background-color:#7676b8;

        } 		
</style>

</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">

	<!-- *********************** -->
    <!-- **** Left Section ***** -->
    <!-- *********************** -->            
    <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7 clearfix text-justify pageLeftContainer">
    	<div class="row areaTabContainer">
	        <ul id="areaTabs">
	<!--        <li><a onclick="makeActive('2');" class="btn btn-default tabButton" data-toggle="pill" href="#tab2"></a></li>-->																                            
	        </ul>
		</div>                           
        <div class="tab-content locationContent" id="areaContent">       
        </div>                    
	</div>
	
	<!-- *************************** -->
	<!-- **** Middle Container ***** -->
	<!-- *************************** -->			
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
&lt;/table&gt;" __designer:Values="&lt;P N=&#39;Title&#39; ID=&#39;1&#39; T=&#39;Middle Section&#39; /&gt;&lt;P N=&#39;HeaderText&#39; R=&#39;1&#39; /&gt;&lt;P N=&#39;DisplayTitle&#39; R=&#39;1&#39; /&gt;&lt;P N=&#39;ID&#39; ID=&#39;2&#39; T=&#39;WebPartZone2&#39; /&gt;&lt;P N=&#39;FrameType&#39; E=&#39;2&#39; /&gt;&lt;P N=&#39;PartChromeType&#39; E=&#39;3&#39; /&gt;&lt;P N=&#39;Page&#39; ID=&#39;3&#39; /&gt;&lt;P N=&#39;TemplateControl&#39; R=&#39;3&#39; /&gt;&lt;P N=&#39;AppRelativeTemplateSourceDirectory&#39; R=&#39;-1&#39; /&gt;" __designer:Templates="&lt;Group Name=&quot;ZoneTemplate&quot;&gt;&lt;Template Name=&quot;ZoneTemplate&quot; Content=&quot;&quot; /&gt;&lt;/Group&gt;"><ZoneTemplate><WebPartPages:XsltListViewWebPart runat="server" ViewFlag="" ViewSelectorFetchAsync="False" InplaceSearchEnabled="False" ServerRender="False" ClientRender="True" InitialAsyncDataFetch="False" WebId="085d0c9c-74b2-4aa9-9669-ae7e2e46c00d" IsClientRender="False" GhostedXslLink="main.xsl" NoDefaultStyle="TRUE" ViewGuid="{9382A1A0-11B8-4249-B106-FCBB63DA657B}" EnableOriginalValue="False" ViewContentTypeId="0x" Default="FALSE" ListName="{49B3B114-CCEB-43CD-BF23-A20E20714ECF}" ListId="49b3b114-cceb-43cd-bf23-a20e20714ecf" PageSize="-1" UseSQLDataSourcePaging="True" DataSourceID="" ShowWithSampleData="False" AsyncRefresh="False" ManualRefresh="False" AutoRefresh="False" AutoRefreshInterval="60" Title="MetroTiles(Root)" FrameType="None" SuppressWebPartChrome="False" Description="" IsIncluded="True" ZoneID="WebPartZone2" PartOrder="1" FrameState="Normal" AllowRemove="True" AllowZoneChange="True" AllowMinimize="True" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" TitleUrl="/Lists/MetroTiles" DetailLink="/Lists/MetroTiles" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="" IsIncludedFilter="" ExportControlledProperties="True" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_9382a1a0_11b8_4249_b106_fcbb63da657b" ChromeType="None" ExportMode="All" __designer:Values="&lt;P N=&#39;DisableViewSelectorMenu&#39; T=&#39;True&#39; /&gt;&lt;P N=&#39;DisableSaveAsNewViewButton&#39; T=&#39;True&#39; /&gt;&lt;P N=&#39;InplaceSearchEnabled&#39; T=&#39;False&#39; /&gt;&lt;P N=&#39;ClientRender&#39; T=&#39;True&#39; /&gt;&lt;P N=&#39;InitialAsyncDataFetch&#39; T=&#39;False&#39; /&gt;&lt;P N=&#39;DisabledColumnFilters&#39; Serial=&#39;AAEAAAD/////AQAAAAAAAAAEAQAAAOABU3lzdGVtLkNvbGxlY3Rpb25zLkdlbmVyaWMuRGljdGlvbmFyeWAyW1tTeXN0ZW0uR3VpZCwgbXNjb3JsaWIsIFZlcnNpb249NC4wLjAuMCwgQ3VsdHVyZT1uZXV0cmFsLCBQdWJsaWNLZXlUb2tlbj1iNzdhNWM1NjE5MzRlMDg5XSxbU3lzdGVtLlN0cmluZywgbXNjb3JsaWIsIFZlcnNpb249NC4wLjAuMCwgQ3VsdHVyZT1uZXV0cmFsLCBQdWJsaWNLZXlUb2tlbj1iNzdhNWM1NjE5MzRlMDg5XV0DAAAAB1ZlcnNpb24IQ29tcGFyZXIISGFzaFNpemUAAwAIkAFTeXN0ZW0uQ29sbGVjdGlvbnMuR2VuZXJpYy5HZW5lcmljRXF1YWxpdHlDb21wYXJlcmAxW1tTeXN0ZW0uR3VpZCwgbXNjb3JsaWIsIFZlcnNpb249NC4wLjAuMCwgQ3VsdHVyZT1uZXV0cmFsLCBQdWJsaWNLZXlUb2tlbj1iNzdhNWM1NjE5MzRlMDg5XV0IAAAAAAkCAAAAAAAAAAQCAAAAkAFTeXN0ZW0uQ29sbGVjdGlvbnMuR2VuZXJpYy5HZW5lcmljRXF1YWxpdHlDb21wYXJlcmAxW1tTeXN0ZW0uR3VpZCwgbXNjb3JsaWIsIFZlcnNpb249NC4wLjAuMCwgQ3VsdHVyZT1uZXV0cmFsLCBQdWJsaWNLZXlUb2tlbj1iNzdhNWM1NjE5MzRlMDg5XV0AAAAACw&#39; /&gt;&lt;P N=&#39;ParameterBindings&#39; T=&#39;&amp;#xD;&amp;#xA;&amp;#xD;&amp;#xA;&amp;#xD;&amp;#xA;&amp;#xD;&amp;#xA;				&amp;lt;ParameterBinding Name=&quot;dvt_sortdir&quot; Location=&quot;Postback;Connection&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;dvt_sortfield&quot; Location=&quot;Postback;Connection&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;dvt_startposition&quot; Location=&quot;Postback&quot; DefaultValue=&quot;&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;dvt_firstrow&quot; Location=&quot;Postback;Connection&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;OpenMenuKeyAccessible&quot; Location=&quot;Resource(wss,OpenMenuKeyAccessible)&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;open_menu&quot; Location=&quot;Resource(wss,open_menu)&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;select_deselect_all&quot; Location=&quot;Resource(wss,select_deselect_all)&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;idPresEnabled&quot; Location=&quot;Resource(wss,idPresEnabled)&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;NoAnnouncements&quot; Location=&quot;Resource(wss,noXinviewofY_LIST)&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;NoAnnouncementsHowTo&quot; Location=&quot;Resource(wss,noXinviewofY_DEFAULT)&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;AddNewAnnouncement&quot; Location=&quot;Resource(wss,addnewitem)&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;MoreAnnouncements&quot; Location=&quot;Resource(wss,moreItemsParen)&quot; /&amp;gt;&#39; /&gt;&lt;P N=&#39;WebId&#39; T=&#39;085d0c9c-74b2-4aa9-9669-ae7e2e46c00d&#39; /&gt;&lt;P N=&#39;NoDefaultStyle&#39; T=&#39;TRUE&#39; /&gt;&lt;P N=&#39;ViewGuid&#39; T=&#39;{9382A1A0-11B8-4249-B106-FCBB63DA657B}&#39; /&gt;&lt;P N=&#39;ViewContentTypeId&#39; T=&#39;0x&#39; /&gt;&lt;P N=&#39;Default&#39; T=&#39;FALSE&#39; /&gt;&lt;P N=&#39;ListName&#39; T=&#39;{49B3B114-CCEB-43CD-BF23-A20E20714ECF}&#39; /&gt;&lt;P N=&#39;ListId&#39; T=&#39;49b3b114-cceb-43cd-bf23-a20e20714ecf&#39; /&gt;&lt;P N=&#39;ViewId&#39; T=&#39;1&#39; /&gt;&lt;P N=&#39;ViewFlags&#39; E=&#39;0&#39; /&gt;&lt;P N=&#39;ParameterValues&#39; Serial=&#39;AAEAAAD/////AQAAAAAAAAAMAgAAAFhNaWNyb3NvZnQuU2hhcmVQb2ludCwgVmVyc2lvbj0xNS4wLjAuMCwgQ3VsdHVyZT1uZXV0cmFsLCBQdWJsaWNLZXlUb2tlbj03MWU5YmNlMTExZTk0MjljBQEAAAA9TWljcm9zb2Z0LlNoYXJlUG9pbnQuV2ViUGFydFBhZ2VzLlBhcmFtZXRlck5hbWVWYWx1ZUhhc2h0YWJsZQEAAAAFX2NvbGwDHFN5c3RlbS5Db2xsZWN0aW9ucy5IYXNodGFibGUCAAAACQMAAAAEAwAAABxTeXN0ZW0uQ29sbGVjdGlvbnMuSGFzaHRhYmxlBwAAAApMb2FkRmFjdG9yB1ZlcnNpb24IQ29tcGFyZXIQSGFzaENvZGVQcm92aWRlcghIYXNoU2l6ZQRLZXlzBlZhbHVlcwAAAwMABQULCBxTeXN0ZW0uQ29sbGVjdGlvbnMuSUNvbXBhcmVyJFN5c3RlbS5Db2xsZWN0aW9ucy5JSGFzaENvZGVQcm92aWRlcgjsUTg/AAAAAAoKAwAAAAkEAAAACQUAAAAQBAAAAAAAAAAQBQAAAAAAAAAL&#39; /&gt;&lt;P N=&#39;FilterValues&#39; Serial=&#39;AAEAAAD/////AQAAAAAAAAAMAgAAAFhNaWNyb3NvZnQuU2hhcmVQb2ludCwgVmVyc2lvbj0xNS4wLjAuMCwgQ3VsdHVyZT1uZXV0cmFsLCBQdWJsaWNLZXlUb2tlbj03MWU5YmNlMTExZTk0MjljBQEAAAA9TWljcm9zb2Z0LlNoYXJlUG9pbnQuV2ViUGFydFBhZ2VzLlBhcmFtZXRlck5hbWVWYWx1ZUhhc2h0YWJsZQEAAAAFX2NvbGwDHFN5c3RlbS5Db2xsZWN0aW9ucy5IYXNodGFibGUCAAAACgs&#39; /&gt;&lt;P N=&#39;XmlDefinition&#39; T=&#39;&amp;lt;View Name=&quot;{9382A1A0-11B8-4249-B106-FCBB63DA657B}&quot; Type=&quot;HTML&quot; TabularView=&quot;FALSE&quot; DisplayName=&quot;&quot; Url=&quot;/about/SitePages/Locations.aspx&quot; Level=&quot;1&quot; BaseViewID=&quot;1&quot; ContentTypeID=&quot;0x&quot; &amp;gt;&amp;lt;Query&amp;gt;&amp;lt;OrderBy&amp;gt;&amp;lt;FieldRef Name=&quot;TileOrder&quot; Ascending=&quot;TRUE&quot;/&amp;gt;&amp;lt;FieldRef Name=&quot;Modified&quot; Ascending=&quot;FALSE&quot;/&amp;gt;&amp;lt;/OrderBy&amp;gt;&amp;lt;/Query&amp;gt;&amp;lt;ViewFields&amp;gt;&amp;lt;FieldRef Name=&quot;Title&quot;/&amp;gt;&amp;lt;FieldRef Name=&quot;BackgroundImageLocation&quot;/&amp;gt;&amp;lt;FieldRef Name=&quot;Description&quot;/&amp;gt;&amp;lt;FieldRef Name=&quot;LinkLocation&quot;/&amp;gt;&amp;lt;FieldRef Name=&quot;LaunchBehavior&quot;/&amp;gt;&amp;lt;FieldRef Name=&quot;BackgroundImageClusterX&quot;/&amp;gt;&amp;lt;FieldRef Name=&quot;BackgroundImageClusterY&quot;/&amp;gt;&amp;lt;/ViewFields&amp;gt;&amp;lt;RowLimit Paged=&quot;TRUE&quot;&amp;gt;30&amp;lt;/RowLimit&amp;gt;&amp;lt;JSLink&amp;gt;sp.ui.tileview.js&amp;lt;/JSLink&amp;gt;&amp;lt;XslLink Default=&quot;TRUE&quot;&amp;gt;main.xsl&amp;lt;/XslLink&amp;gt;&amp;lt;Toolbar Type=&quot;None&quot;/&amp;gt;&amp;lt;/View&amp;gt;&#39; /&gt;&lt;P N=&#39;AllowXSLTEditing&#39; T=&#39;True&#39; /&gt;&lt;P N=&#39;Title&#39; ID=&#39;1&#39; T=&#39;MetroTiles(Root)&#39; /&gt;&lt;P N=&#39;FrameType&#39; E=&#39;0&#39; /&gt;&lt;P N=&#39;ZoneID&#39; T=&#39;WebPartZone2&#39; /&gt;&lt;P N=&#39;PartOrder&#39; T=&#39;1&#39; /&gt;&lt;P N=&#39;TitleUrl&#39; ID=&#39;2&#39; T=&#39;/Lists/MetroTiles&#39; /&gt;&lt;P N=&#39;DetailLink&#39; R=&#39;2&#39; /&gt;&lt;P N=&#39;ExportControlledProperties&#39; T=&#39;True&#39; /&gt;&lt;P N=&#39;ID&#39; T=&#39;g_9382a1a0_11b8_4249_b106_fcbb63da657b&#39; /&gt;&lt;P N=&#39;StorageKey&#39; T=&#39;9382a1a0-11b8-4249-b106-fcbb63da657b&#39; /&gt;&lt;P N=&#39;Qualifier&#39; T=&#39;WPQ1&#39; /&gt;&lt;P N=&#39;ClientName&#39; T=&#39;varPartWPQ1&#39; /&gt;&lt;P N=&#39;Permissions&#39; E=&#39;0&#39; /&gt;&lt;P N=&#39;EffectiveTitle&#39; R=&#39;1&#39; /&gt;&lt;P N=&#39;EffectiveStorage&#39; E=&#39;2&#39; /&gt;&lt;P N=&#39;EffectiveFrameType&#39; E=&#39;0&#39; /&gt;&lt;P N=&#39;ChromeType&#39; E=&#39;2&#39; /&gt;&lt;P N=&#39;DisplayTitle&#39; R=&#39;1&#39; /&gt;&lt;P N=&#39;ExportMode&#39; E=&#39;1&#39; /&gt;&lt;P N=&#39;IsShared&#39; T=&#39;True&#39; /&gt;&lt;P N=&#39;IsStandalone&#39; T=&#39;False&#39; /&gt;&lt;P N=&#39;IsStatic&#39; T=&#39;False&#39; /&gt;&lt;P N=&#39;WebBrowsableObject&#39; R=&#39;0&#39; /&gt;&lt;P N=&#39;ZoneIndex&#39; T=&#39;1&#39; /&gt;&lt;P N=&#39;Page&#39; ID=&#39;3&#39; /&gt;&lt;P N=&#39;TemplateControl&#39; R=&#39;3&#39; /&gt;&lt;P N=&#39;AppRelativeTemplateSourceDirectory&#39; R=&#39;-1&#39; /&gt;" __designer:Preview="&lt;Regions&gt;&lt;Region Name=&quot;0&quot; Editable=&quot;True&quot; Content=&quot;&quot; NamingContainer=&quot;True&quot; /&gt;&lt;/Regions&gt;&lt;div class=&quot;ms-webpart-chrome ms-webpart-chrome-vertical ms-webpart-chrome-fullWidth &quot;&gt;
	&lt;div WebPartID=&quot;9382a1a0-11b8-4249-b106-fcbb63da657b&quot; HasPers=&quot;false&quot; id=&quot;WebPartWPQ1&quot; width=&quot;100%&quot; class=&quot;&quot; allowDelete=&quot;false&quot; style=&quot;&quot; &gt;&lt;div id=&quot;WebPartContent&quot;&gt;
		&lt;div class=&quot;ms-webpart-chrome ms-webpart-chrome-vertical ms-webpart-chrome-fullWidth &quot;&gt;
	&lt;div WebPartID=&quot;9382a1a0-11b8-4249-b106-fcbb63da657b&quot; HasPers=&quot;false&quot; id=&quot;WebPartWPQ1&quot; width=&quot;100%&quot; class=&quot;&quot; allowDelete=&quot;false&quot; style=&quot;&quot; &gt;&lt;div id=&quot;WebPartContent&quot;&gt;The DataFormWebPart does not provide a design-time preview.&lt;/div&gt;&lt;div class=&quot;ms-clear&quot;&gt;&lt;/div&gt;&lt;/div&gt;
&lt;/div&gt;
	&lt;/div&gt;&lt;div class=&quot;ms-clear&quot;&gt;&lt;/div&gt;&lt;/div&gt;
&lt;/div&gt;" __MarkupType="vsattributemarkup" __WebPartId="{9382A1A0-11B8-4249-B106-FCBB63DA657B}" __AllowXSLTEditing="true" __designer:ExpandedXmlDef="&lt;dsQueryResponse ViewStyleID=&quot;&quot; BaseViewID=&quot;1&quot; TemplateType=&quot;170&quot; RowLimit=&quot;30&quot;&gt;&lt;x:schema xmlns:d=&quot;http://schemas.microsoft.com/sharepoint/dsp&quot; xmlns:x=&quot;http://www.w3.org/2001/XMLSchema&quot;&gt;&lt;x:element name=&quot;Rows&quot;&gt;&lt;x:complexType&gt;&lt;x:sequence maxOccurs=&quot;unbounded&quot;&gt;&lt;x:element name=&quot;Row&quot; minOccurs=&quot;0&quot;&gt;&lt;x:complexType&gt;&lt;x:attribute name=&quot;Title&quot; use=&quot;required&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;Contains;BeginsWith;&quot; d:displayName=&quot;Title&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;BackgroundImageLocation&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:urlDescription=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;Contains;BeginsWith;&quot; d:displayName=&quot;Background Image Location&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;Description&quot; d:sortable=&quot;false&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Contains;BeginsWith;&quot; d:displayName=&quot;Description&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;LinkLocation&quot; use=&quot;required&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:urlDescription=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;Contains;BeginsWith;&quot; d:displayName=&quot;Site URL&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;LaunchBehavior&quot; use=&quot;required&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Contains;BeginsWith;&quot; d:displayName=&quot;Launch Behavior&quot;&gt;&lt;x:simpleType&gt;&lt;x:restriction base=&quot;x:string&quot;&gt;&lt;x:enumeration value=&quot;In page navigation&quot; /&gt;&lt;x:enumeration value=&quot;Dialog&quot; /&gt;&lt;x:enumeration value=&quot;New tab&quot; /&gt;&lt;/x:restriction&gt;&lt;/x:simpleType&gt;&lt;/x:attribute&gt;&lt;x:attribute name=&quot;TileOrder&quot; use=&quot;required&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;Order&quot; type=&quot;x:float&quot; /&gt;&lt;x:attribute name=&quot;BackgroundImageClusterX&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;Background Image Cluster Horizontal Start&quot; type=&quot;x:float&quot; /&gt;&lt;x:attribute name=&quot;BackgroundImageClusterY&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;Background Image Cluster Vertical Start&quot; type=&quot;x:float&quot; /&gt;&lt;x:attribute name=&quot;Target_x0020_Audiences&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Contains;BeginsWith;&quot; d:displayName=&quot;Target Audiences&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;ID&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;ID&quot; type=&quot;x:int&quot; /&gt;&lt;x:attribute name=&quot;ContentType&quot; d:sortable=&quot;false&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:displayName=&quot;Content Type&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;Modified&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;Modified&quot; type=&quot;x:dateTime&quot; /&gt;&lt;x:attribute name=&quot;Created&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;Created&quot; type=&quot;x:dateTime&quot; /&gt;&lt;x:attribute name=&quot;Author&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:userField=&quot;true&quot; d:lookupField=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;Created By&quot;&gt;&lt;x:simpleType&gt;&lt;x:restriction base=&quot;x:string&quot;&gt;&lt;x:enumeration value=&quot;a.adu-amankwah@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;aaron.ajibawo@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Aaron Chan&quot; /&gt;&lt;x:enumeration value=&quot;aaron.chan@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Aaron Keegans&quot; /&gt;&lt;x:enumeration value=&quot;Aaron Lloyd&quot; /&gt;&lt;x:enumeration value=&quot;aaron.lloyd@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Aaron Metcalf&quot; /&gt;&lt;x:enumeration value=&quot;Aaron Metcalf&quot; /&gt;&lt;x:enumeration value=&quot;Aarti Parmar&quot; /&gt;&lt;x:enumeration value=&quot;abayomi.odubanjo@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Abbie Crace&quot; /&gt;&lt;x:enumeration value=&quot;abbie.crace@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Abderrahmane Boukabache&quot; /&gt;&lt;x:enumeration value=&quot;Abdul Majeed&quot; /&gt;&lt;x:enumeration value=&quot;abdul.majeed@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;abhishek.dastidar@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Abidat Bello&quot; /&gt;&lt;x:enumeration value=&quot;Abigail Colvin&quot; /&gt;&lt;x:enumeration value=&quot;Abigail Davenport&quot; /&gt;&lt;x:enumeration value=&quot;Abigail Holmes&quot; /&gt;&lt;x:enumeration value=&quot;abigail.jack@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Abigail Mason&quot; /&gt;&lt;x:enumeration value=&quot;abigail.mason@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Abigail Pattison&quot; /&gt;&lt;x:enumeration value=&quot;abigail.pattison@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;abigail.wiseman@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Abiodun Ashiru&quot; /&gt;&lt;x:enumeration value=&quot;Adaeze Kwentua&quot; /&gt;&lt;x:enumeration value=&quot;adaeze.kwentua@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Bray&quot; /&gt;&lt;x:enumeration value=&quot;Adam Britton&quot; /&gt;&lt;x:enumeration value=&quot;Adam Brown&quot; /&gt;&lt;x:enumeration value=&quot;adam.burman@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Butler&quot; /&gt;&lt;x:enumeration value=&quot;Adam Chappelle&quot; /&gt;&lt;x:enumeration value=&quot;adam.chappelle@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Claxton&quot; /&gt;&lt;x:enumeration value=&quot;adam.claxton@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Green&quot; /&gt;&lt;x:enumeration value=&quot;Adam Hermann&quot; /&gt;&lt;x:enumeration value=&quot;adam.hermann@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Kelly&quot; /&gt;&lt;x:enumeration value=&quot;adam.kelly@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Kennedy&quot; /&gt;&lt;x:enumeration value=&quot;adam.kennedy@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam King&quot; /&gt;&lt;x:enumeration value=&quot;adam.king@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Pooley&quot; /&gt;&lt;x:enumeration value=&quot;Adam Rees&quot; /&gt;&lt;x:enumeration value=&quot;adam.rees@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Sadok&quot; /&gt;&lt;x:enumeration value=&quot;Adam Smart&quot; /&gt;&lt;x:enumeration value=&quot;adam.smart@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Wickenden&quot; /&gt;&lt;x:enumeration value=&quot;adam.wickenden@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adana Joseph-Constantine&quot; /&gt;&lt;x:enumeration value=&quot;adanma.chryschikere@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adannaya Igwe&quot; /&gt;&lt;x:enumeration value=&quot;Adebukunola Alalade&quot; /&gt;&lt;x:enumeration value=&quot;Adeel Hussain&quot; /&gt;&lt;x:enumeration value=&quot;adele.clarke@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adele Duncan&quot; /&gt;&lt;x:enumeration value=&quot;adele.duncan@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adele Hamflett&quot; /&gt;&lt;x:enumeration value=&quot;adele.hamflett@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adele Law&quot; /&gt;&lt;x:enumeration value=&quot;adele.law@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adele Patterson&quot; /&gt;&lt;x:enumeration value=&quot;adele.patterson@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adele Phillips&quot; /&gt;&lt;x:enumeration value=&quot;adele.phillips@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;adenike.ogunyemi@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adeola Adegbola&quot; /&gt;&lt;x:enumeration value=&quot;adeola.adegbola@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adetola Adekanmbi&quot; /&gt;&lt;x:enumeration value=&quot;adetola.lawal@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adina Blanita&quot; /&gt;&lt;x:enumeration value=&quot;Adriana Golonkiewicz&quot; /&gt;&lt;x:enumeration value=&quot;adriana.golonkiewicz@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adrian Hallowes&quot; /&gt;&lt;x:enumeration value=&quot;Adrian Harding&quot; /&gt;&lt;x:enumeration value=&quot;Adrian Jenkins&quot; /&gt;&lt;x:enumeration value=&quot;adrian.jenkins@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adrian Lonnon&quot; /&gt;&lt;x:enumeration value=&quot;adrian.lonnon@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adrian Maycock&quot; /&gt;&lt;x:enumeration value=&quot;adrian.maycock@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adrian-Mihai Cret&quot; /&gt;&lt;x:enumeration value=&quot;adrian-mihai.cret@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adrian Rowe&quot; /&gt;&lt;x:enumeration value=&quot;adrian.rowe@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adrienne Hampson&quot; /&gt;&lt;x:enumeration value=&quot;adrienne.hampson@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;adwoa.kumi@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Afsana Ahmed&quot; /&gt;&lt;x:enumeration value=&quot;Afua Koram&quot; /&gt;&lt;x:enumeration value=&quot;afua.koram@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Afzal Ahmed&quot; /&gt;&lt;x:enumeration value=&quot;Agnes Ashbridge&quot; /&gt;&lt;/x:restriction&gt;&lt;/x:simpleType&gt;&lt;/x:attribute&gt;&lt;x:attribute name=&quot;Editor&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:userField=&quot;true&quot; d:lookupField=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;Modified By&quot;&gt;&lt;x:simpleType&gt;&lt;x:restriction base=&quot;x:string&quot;&gt;&lt;x:enumeration value=&quot;a.adu-amankwah@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;aaron.ajibawo@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Aaron Chan&quot; /&gt;&lt;x:enumeration value=&quot;aaron.chan@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Aaron Keegans&quot; /&gt;&lt;x:enumeration value=&quot;Aaron Lloyd&quot; /&gt;&lt;x:enumeration value=&quot;aaron.lloyd@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Aaron Metcalf&quot; /&gt;&lt;x:enumeration value=&quot;Aaron Metcalf&quot; /&gt;&lt;x:enumeration value=&quot;Aarti Parmar&quot; /&gt;&lt;x:enumeration value=&quot;abayomi.odubanjo@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Abbie Crace&quot; /&gt;&lt;x:enumeration value=&quot;abbie.crace@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Abderrahmane Boukabache&quot; /&gt;&lt;x:enumeration value=&quot;Abdul Majeed&quot; /&gt;&lt;x:enumeration value=&quot;abdul.majeed@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;abhishek.dastidar@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Abidat Bello&quot; /&gt;&lt;x:enumeration value=&quot;Abigail Colvin&quot; /&gt;&lt;x:enumeration value=&quot;Abigail Davenport&quot; /&gt;&lt;x:enumeration value=&quot;Abigail Holmes&quot; /&gt;&lt;x:enumeration value=&quot;abigail.jack@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Abigail Mason&quot; /&gt;&lt;x:enumeration value=&quot;abigail.mason@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Abigail Pattison&quot; /&gt;&lt;x:enumeration value=&quot;abigail.pattison@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;abigail.wiseman@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Abiodun Ashiru&quot; /&gt;&lt;x:enumeration value=&quot;Adaeze Kwentua&quot; /&gt;&lt;x:enumeration value=&quot;adaeze.kwentua@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Bray&quot; /&gt;&lt;x:enumeration value=&quot;Adam Britton&quot; /&gt;&lt;x:enumeration value=&quot;Adam Brown&quot; /&gt;&lt;x:enumeration value=&quot;adam.burman@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Butler&quot; /&gt;&lt;x:enumeration value=&quot;Adam Chappelle&quot; /&gt;&lt;x:enumeration value=&quot;adam.chappelle@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Claxton&quot; /&gt;&lt;x:enumeration value=&quot;adam.claxton@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Green&quot; /&gt;&lt;x:enumeration value=&quot;Adam Hermann&quot; /&gt;&lt;x:enumeration value=&quot;adam.hermann@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Kelly&quot; /&gt;&lt;x:enumeration value=&quot;adam.kelly@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Kennedy&quot; /&gt;&lt;x:enumeration value=&quot;adam.kennedy@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam King&quot; /&gt;&lt;x:enumeration value=&quot;adam.king@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Pooley&quot; /&gt;&lt;x:enumeration value=&quot;Adam Rees&quot; /&gt;&lt;x:enumeration value=&quot;adam.rees@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Sadok&quot; /&gt;&lt;x:enumeration value=&quot;Adam Smart&quot; /&gt;&lt;x:enumeration value=&quot;adam.smart@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adam Wickenden&quot; /&gt;&lt;x:enumeration value=&quot;adam.wickenden@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adana Joseph-Constantine&quot; /&gt;&lt;x:enumeration value=&quot;adanma.chryschikere@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adannaya Igwe&quot; /&gt;&lt;x:enumeration value=&quot;Adebukunola Alalade&quot; /&gt;&lt;x:enumeration value=&quot;Adeel Hussain&quot; /&gt;&lt;x:enumeration value=&quot;adele.clarke@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adele Duncan&quot; /&gt;&lt;x:enumeration value=&quot;adele.duncan@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adele Hamflett&quot; /&gt;&lt;x:enumeration value=&quot;adele.hamflett@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adele Law&quot; /&gt;&lt;x:enumeration value=&quot;adele.law@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adele Patterson&quot; /&gt;&lt;x:enumeration value=&quot;adele.patterson@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adele Phillips&quot; /&gt;&lt;x:enumeration value=&quot;adele.phillips@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;adenike.ogunyemi@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adeola Adegbola&quot; /&gt;&lt;x:enumeration value=&quot;adeola.adegbola@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adetola Adekanmbi&quot; /&gt;&lt;x:enumeration value=&quot;adetola.lawal@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adina Blanita&quot; /&gt;&lt;x:enumeration value=&quot;Adriana Golonkiewicz&quot; /&gt;&lt;x:enumeration value=&quot;adriana.golonkiewicz@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adrian Hallowes&quot; /&gt;&lt;x:enumeration value=&quot;Adrian Harding&quot; /&gt;&lt;x:enumeration value=&quot;Adrian Jenkins&quot; /&gt;&lt;x:enumeration value=&quot;adrian.jenkins@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adrian Lonnon&quot; /&gt;&lt;x:enumeration value=&quot;adrian.lonnon@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adrian Maycock&quot; /&gt;&lt;x:enumeration value=&quot;adrian.maycock@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adrian-Mihai Cret&quot; /&gt;&lt;x:enumeration value=&quot;adrian-mihai.cret@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adrian Rowe&quot; /&gt;&lt;x:enumeration value=&quot;adrian.rowe@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Adrienne Hampson&quot; /&gt;&lt;x:enumeration value=&quot;adrienne.hampson@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;adwoa.kumi@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Afsana Ahmed&quot; /&gt;&lt;x:enumeration value=&quot;Afua Koram&quot; /&gt;&lt;x:enumeration value=&quot;afua.koram@chda.maxuk.co.uk&quot; /&gt;&lt;x:enumeration value=&quot;Afzal Ahmed&quot; /&gt;&lt;x:enumeration value=&quot;Agnes Ashbridge&quot; /&gt;&lt;/x:restriction&gt;&lt;/x:simpleType&gt;&lt;/x:attribute&gt;&lt;x:attribute name=&quot;_UIVersionString&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;Contains;BeginsWith;&quot; d:displayName=&quot;Version&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;Attachments&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;&quot; d:displayName=&quot;Attachments&quot; type=&quot;x:boolean&quot; /&gt;&lt;x:attribute name=&quot;File_x0020_Type&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;Contains;BeginsWith;&quot; d:displayName=&quot;File Type&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;FileLeafRef&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;Contains;BeginsWith;&quot; d:displayName=&quot;Name (for use in forms)&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;FileDirRef&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;Path&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;FSObjType&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;Item Type&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;_HasCopyDestinations&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;&quot; d:displayName=&quot;Has Copy Destinations&quot; type=&quot;x:boolean&quot; /&gt;&lt;x:attribute name=&quot;_CopySource&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;Contains;BeginsWith;&quot; d:displayName=&quot;Copy Source&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;ContentTypeId&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:displayName=&quot;Content Type ID&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;_ModerationStatus&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;&quot; d:displayName=&quot;Approval Status&quot;&gt;&lt;x:simpleType&gt;&lt;x:restriction base=&quot;x:string&quot;&gt;&lt;x:enumeration value=&quot;Approved&quot; /&gt;&lt;x:enumeration value=&quot;Rejected&quot; /&gt;&lt;x:enumeration value=&quot;Pending&quot; /&gt;&lt;x:enumeration value=&quot;Draft&quot; /&gt;&lt;x:enumeration value=&quot;Scheduled&quot; /&gt;&lt;/x:restriction&gt;&lt;/x:simpleType&gt;&lt;/x:attribute&gt;&lt;x:attribute name=&quot;_UIVersion&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;UI Version&quot; type=&quot;x:int&quot; /&gt;&lt;x:attribute name=&quot;Created_x0020_Date&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;Created&quot; type=&quot;x:dateTime&quot; /&gt;&lt;x:attribute name=&quot;FileRef&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;URL Path&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;ItemChildCount&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;Item Child Count&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;FolderChildCount&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;Folder Child Count&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;AppAuthor&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;App Created By&quot; type=&quot;x:string&quot; /&gt;&lt;x:attribute name=&quot;AppEditor&quot; d:readOnly=&quot;true&quot; d:showInDisplayForm=&quot;true&quot; d:showInNewForm=&quot;true&quot; d:showInEditForm=&quot;true&quot; d:filterSupport=&quot;IsNull;IsNotNull;Eq;Neq;Lt;Gt;Leq;Geq;&quot; d:displayName=&quot;App Modified By&quot; type=&quot;x:string&quot; /&gt;&lt;/x:complexType&gt;&lt;/x:element&gt;&lt;/x:sequence&gt;&lt;/x:complexType&gt;&lt;/x:element&gt;&lt;/x:schema&gt;&lt;View Name=&quot;{9382A1A0-11B8-4249-B106-FCBB63DA657B}&quot; Type=&quot;HTML&quot; TabularView=&quot;FALSE&quot; DisplayName=&quot;&quot; Url=&quot;/about/SitePages/Locations.aspx&quot; Level=&quot;1&quot; BaseViewID=&quot;1&quot; ContentTypeID=&quot;0x&quot; UIVersion=&quot;15&quot;&gt;&lt;Query&gt;&lt;OrderBy&gt;&lt;FieldRef Name=&quot;TileOrder&quot; Ascending=&quot;TRUE&quot; /&gt;&lt;FieldRef Name=&quot;Modified&quot; Ascending=&quot;FALSE&quot; /&gt;&lt;/OrderBy&gt;&lt;/Query&gt;&lt;ViewFields&gt;&lt;FieldRef Name=&quot;Title&quot; FieldType=&quot;Text&quot; RealFieldName=&quot;Title&quot; DisplayName=&quot;Title&quot; ID=&quot;fa564e0f-0c70-4ab9-b863-0177e6ddd247&quot; Type=&quot;Text&quot; AutoHyperLink=&quot;TRUE&quot; AllowGridEditing=&quot;TRUE&quot; /&gt;&lt;FieldRef Name=&quot;BackgroundImageLocation&quot; FieldType=&quot;URL&quot; RealFieldName=&quot;BackgroundImageLocation&quot; DisplayName=&quot;Background Image Location&quot; ID=&quot;a0fc423e-0808-490e-905e-260abd3d6511&quot; Format=&quot;Hyperlink&quot; Type=&quot;URL&quot; Filterable=&quot;FALSE&quot; AllowGridEditing=&quot;TRUE&quot; /&gt;&lt;FieldRef Name=&quot;Description&quot; FieldType=&quot;Note&quot; RealFieldName=&quot;Description&quot; DisplayName=&quot;Description&quot; ID=&quot;bced0253-a215-49a2-bcd9-5025ad49560d&quot; Sortable=&quot;FALSE&quot; RichText=&quot;FALSE&quot; Type=&quot;Note&quot; NoAggregate=&quot;TRUE&quot; Filterable=&quot;FALSE&quot; AllowGridEditing=&quot;TRUE&quot; /&gt;&lt;FieldRef Name=&quot;LinkLocation&quot; FieldType=&quot;URL&quot; RealFieldName=&quot;LinkLocation&quot; DisplayName=&quot;Site URL&quot; ID=&quot;fda2f5e5-8253-4b10-8876-a42268d758e0&quot; Format=&quot;Hyperlink&quot; Type=&quot;URL&quot; Filterable=&quot;FALSE&quot; AllowGridEditing=&quot;TRUE&quot; /&gt;&lt;FieldRef Name=&quot;LaunchBehavior&quot; FieldType=&quot;Choice&quot; RealFieldName=&quot;LaunchBehavior&quot; DisplayName=&quot;Launch Behavior&quot; ID=&quot;b2424958-fe1e-4227-af83-954985029aac&quot; Type=&quot;Choice&quot; AllowGridEditing=&quot;TRUE&quot; /&gt;&lt;FieldRef Name=&quot;BackgroundImageClusterX&quot; FieldType=&quot;Number&quot; RealFieldName=&quot;BackgroundImageClusterX&quot; DisplayName=&quot;Background Image Cluster Horizontal Start&quot; ID=&quot;2a54fee9-ad68-454b-905b-f92ccee343d3&quot; Type=&quot;Number&quot; AllowGridEditing=&quot;TRUE&quot; /&gt;&lt;FieldRef Name=&quot;BackgroundImageClusterY&quot; FieldType=&quot;Number&quot; RealFieldName=&quot;BackgroundImageClusterY&quot; DisplayName=&quot;Background Image Cluster Vertical Start&quot; ID=&quot;2976fc30-0bbe-4671-bcf1-87679b512e9b&quot; Type=&quot;Number&quot; AllowGridEditing=&quot;TRUE&quot; /&gt;&lt;/ViewFields&gt;&lt;RowLimit Paged=&quot;TRUE&quot;&gt;30&lt;/RowLimit&gt;&lt;JSLink&gt;sp.ui.tileview.js&lt;/JSLink&gt;&lt;XslLink Default=&quot;TRUE&quot;&gt;main.xsl&lt;/XslLink&gt;&lt;Toolbar Type=&quot;None&quot; /&gt;&lt;List Direction=&quot;none&quot; TemplateType=&quot;170&quot; title=&quot;MetroTiles&quot; description=&quot;&quot; basetype=&quot;0&quot; RootFolder=&quot;&quot; version=&quot;25&quot; name=&quot;{49B3B114-CCEB-43CD-BF23-A20E20714ECF}&quot; moderatedlist=&quot;0&quot; SendToLocationName=&quot;&quot; SendToLocationUrl=&quot;&quot; WriteSecurity=&quot;1&quot; EnableMinorVersions=&quot;0&quot; VersioningEnabled=&quot;0&quot; ForceCheckout=&quot;0&quot; WorkflowsAssociated=&quot;1&quot; DefaultItemOpen=&quot;1&quot; RecycleBinEnabled=&quot;1&quot; ExternalDataList=&quot;0&quot; OfficialFileNames=&quot;&quot; EnableSyndication=&quot;1&quot; enablecontenttypes=&quot;0&quot; /&gt;&lt;/View&gt;&lt;ParamBindings&gt;



				&amp;lt;ParameterBinding Name=&quot;dvt_sortdir&quot; Location=&quot;Postback;Connection&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;dvt_sortfield&quot; Location=&quot;Postback;Connection&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;dvt_startposition&quot; Location=&quot;Postback&quot; DefaultValue=&quot;&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;dvt_firstrow&quot; Location=&quot;Postback;Connection&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;OpenMenuKeyAccessible&quot; Location=&quot;Resource(wss,OpenMenuKeyAccessible)&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;open_menu&quot; Location=&quot;Resource(wss,open_menu)&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;select_deselect_all&quot; Location=&quot;Resource(wss,select_deselect_all)&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;idPresEnabled&quot; Location=&quot;Resource(wss,idPresEnabled)&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;NoAnnouncements&quot; Location=&quot;Resource(wss,noXinviewofY_LIST)&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;NoAnnouncementsHowTo&quot; Location=&quot;Resource(wss,noXinviewofY_DEFAULT)&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;AddNewAnnouncement&quot; Location=&quot;Resource(wss,addnewitem)&quot; /&amp;gt;&amp;lt;ParameterBinding Name=&quot;MoreAnnouncements&quot; Location=&quot;Resource(wss,moreItemsParen)&quot; /&amp;gt;&lt;/ParamBindings&gt;&lt;Rows&gt;&lt;Row Title=&quot;HS Incident Reporting&quot; File_x0020_Type=&quot;&quot; File_x0020_Type.mapapp=&quot;&quot; HTML_x0020_File_x0020_Type.File_x0020_Type.mapcon=&quot;&quot; HTML_x0020_File_x0020_Type.File_x0020_Type.mapico=&quot;icgen.gif&quot; BackgroundImageLocation=&quot;/PublishingImages/metrotiles/TileImage09.png&quot; BackgroundImageLocation.desc=&quot;TileImage09&quot; Description=&quot;Airsweb&quot; LinkLocation=&quot;https://chda.airsweb.net/Default.aspx&quot; LinkLocation.desc=&quot;Airsweb&quot; LaunchBehavior=&quot;New tab&quot; TileOrder=&quot;1&quot; TileOrder.=&quot;1.00000000000000&quot; BackgroundImageClusterX=&quot;&quot; BackgroundImageClusterX.=&quot;&quot; BackgroundImageClusterY=&quot;&quot; BackgroundImageClusterY.=&quot;&quot; LinkTitleNoMenu=&quot;HS Incident Reporting&quot; LinkTitle=&quot;HS Incident Reporting&quot; Target_x0020_Audiences=&quot;&quot; ID=&quot;9&quot; ContentType=&quot;MetroTiles&quot; Modified=&quot;10/10/2018 15:03&quot; Modified.FriendlyDisplay=&quot;0|10 October, 2018&quot; Created=&quot;25/04/2016 16:55&quot; Created.FriendlyDisplay=&quot;0|25 April, 2016&quot; Author=&quot;22&quot; Editor=&quot;3986&quot; _UIVersionString=&quot;1.0&quot; Attachments=&quot;0&quot; FileRef=&quot;/Lists/MetroTiles/9_.000&quot; Created_x0020_Date.ifnew=&quot;&quot; FSObjType=&quot;0&quot; SortBehavior=&quot;0&quot; PermMask=&quot;0x7fffffffffffffff&quot; FileLeafRef=&quot;9_.000&quot; SyncClientId=&quot;&quot; DocIcon=&quot;&quot; MetaInfo=&quot;&quot; ItemChildCount=&quot;0&quot; FolderChildCount=&quot;0&quot; AppAuthor=&quot;&quot; AppEditor=&quot;&quot; /&gt;&lt;Row Title=&quot;Telephone Assessments&quot; File_x0020_Type=&quot;&quot; File_x0020_Type.mapapp=&quot;&quot; HTML_x0020_File_x0020_Type.File_x0020_Type.mapcon=&quot;&quot; HTML_x0020_File_x0020_Type.File_x0020_Type.mapico=&quot;icgen.gif&quot; BackgroundImageLocation=&quot;/PublishingImages/metrotiles/Telephone%20assessments-01.png&quot; BackgroundImageLocation.desc=&quot;Telephone assessments&quot; Description=&quot;&quot; LinkLocation=&quot;/teams/ops/sitepages/knowledge.aspx&quot; LinkLocation.desc=&quot;TA folder&quot; LaunchBehavior=&quot;In page navigation&quot; TileOrder=&quot;2&quot; TileOrder.=&quot;2.00000000000000&quot; BackgroundImageClusterX=&quot;&quot; BackgroundImageClusterX.=&quot;&quot; BackgroundImageClusterY=&quot;&quot; BackgroundImageClusterY.=&quot;&quot; LinkTitleNoMenu=&quot;Telephone Assessments&quot; LinkTitle=&quot;Telephone Assessments&quot; Target_x0020_Audiences=&quot;&quot; ID=&quot;8&quot; ContentType=&quot;MetroTiles&quot; Modified=&quot;05/07/2020 15:25&quot; Modified.FriendlyDisplay=&quot;0|5 July&quot; Created=&quot;25/04/2016 16:55&quot; Created.FriendlyDisplay=&quot;0|25 April, 2016&quot; Author=&quot;22&quot; Editor=&quot;4133&quot; _UIVersionString=&quot;1.0&quot; Attachments=&quot;0&quot; FileRef=&quot;/Lists/MetroTiles/8_.000&quot; Created_x0020_Date.ifnew=&quot;&quot; FSObjType=&quot;0&quot; SortBehavior=&quot;0&quot; PermMask=&quot;0x7fffffffffffffff&quot; FileLeafRef=&quot;8_.000&quot; SyncClientId=&quot;&quot; DocIcon=&quot;&quot; MetaInfo=&quot;&quot; ItemChildCount=&quot;0&quot; FolderChildCount=&quot;0&quot; AppAuthor=&quot;&quot; AppEditor=&quot;&quot; /&gt;&lt;Row Title=&quot;Human Resources&quot; File_x0020_Type=&quot;&quot; File_x0020_Type.mapapp=&quot;&quot; HTML_x0020_File_x0020_Type.File_x0020_Type.mapcon=&quot;&quot; HTML_x0020_File_x0020_Type.File_x0020_Type.mapico=&quot;icgen.gif&quot; BackgroundImageLocation=&quot;/PublishingImages/metrotiles/TileImage04.png&quot; BackgroundImageLocation.desc=&quot;TileImage04&quot; Description=&quot;Cascade&quot; LinkLocation=&quot;https://maxuk.cascadecloud.co.uk/&quot; LinkLocation.desc=&quot;Cascade&quot; LaunchBehavior=&quot;New tab&quot; TileOrder=&quot;3&quot; TileOrder.=&quot;3.00000000000000&quot; BackgroundImageClusterX=&quot;&quot; BackgroundImageClusterX.=&quot;&quot; BackgroundImageClusterY=&quot;&quot; BackgroundImageClusterY.=&quot;&quot; LinkTitleNoMenu=&quot;Human Resources&quot; LinkTitle=&quot;Human Resources&quot; Target_x0020_Audiences=&quot;&quot; ID=&quot;4&quot; ContentType=&quot;MetroTiles&quot; Modified=&quot;23/03/2020 12:53&quot; Modified.FriendlyDisplay=&quot;0|23 March&quot; Created=&quot;25/04/2016 16:55&quot; Created.FriendlyDisplay=&quot;0|25 April, 2016&quot; Author=&quot;22&quot; Editor=&quot;3746&quot; _UIVersionString=&quot;1.0&quot; Attachments=&quot;0&quot; FileRef=&quot;/Lists/MetroTiles/4_.000&quot; Created_x0020_Date.ifnew=&quot;&quot; FSObjType=&quot;0&quot; SortBehavior=&quot;0&quot; PermMask=&quot;0x7fffffffffffffff&quot; FileLeafRef=&quot;4_.000&quot; SyncClientId=&quot;&quot; DocIcon=&quot;&quot; MetaInfo=&quot;&quot; ItemChildCount=&quot;0&quot; FolderChildCount=&quot;0&quot; AppAuthor=&quot;&quot; AppEditor=&quot;&quot; /&gt;&lt;Row Title=&quot;People Manager&quot; File_x0020_Type=&quot;&quot; File_x0020_Type.mapapp=&quot;&quot; HTML_x0020_File_x0020_Type.File_x0020_Type.mapcon=&quot;&quot; HTML_x0020_File_x0020_Type.File_x0020_Type.mapico=&quot;icgen.gif&quot; BackgroundImageLocation=&quot;/PublishingImages/metrotiles/TileImage10.png&quot; BackgroundImageLocation.desc=&quot;TileImage10&quot; Description=&quot;Advisor+&quot; LinkLocation=&quot;https://adfs.chda.maxuk.co.uk/adfs/ls/idpinitiatedsignon.aspx?logintorp=mpm&quot; LinkLocation.desc=&quot;Advisor+&quot; LaunchBehavior=&quot;New tab&quot; TileOrder=&quot;4&quot; TileOrder.=&quot;4.00000000000000&quot; BackgroundImageClusterX=&quot;&quot; BackgroundImageClusterX.=&quot;&quot; BackgroundImageClusterY=&quot;&quot; BackgroundImageClusterY.=&quot;&quot; LinkTitleNoMenu=&quot;People Manager&quot; LinkTitle=&quot;People Manager&quot; Target_x0020_Audiences=&quot;&quot; ID=&quot;3&quot; ContentType=&quot;MetroTiles&quot; Modified=&quot;26/03/2020 11:50&quot; Modified.FriendlyDisplay=&quot;0|26 March&quot; Created=&quot;25/04/2016 16:55&quot; Created.FriendlyDisplay=&quot;0|25 April, 2016&quot; Author=&quot;22&quot; Editor=&quot;3746&quot; _UIVersionString=&quot;1.0&quot; Attachments=&quot;0&quot; FileRef=&quot;/Lists/MetroTiles/3_.000&quot; Created_x0020_Date.ifnew=&quot;&quot; FSObjType=&quot;0&quot; SortBehavior=&quot;0&quot; PermMask=&quot;0x7fffffffffffffff&quot; FileLeafRef=&quot;3_.000&quot; SyncClientId=&quot;&quot; DocIcon=&quot;&quot; MetaInfo=&quot;&quot; ItemChildCount=&quot;0&quot; FolderChildCount=&quot;0&quot; AppAuthor=&quot;&quot; AppEditor=&quot;&quot; /&gt;&lt;Row Title=&quot;Expenses Portal&quot; File_x0020_Type=&quot;&quot; File_x0020_Type.mapapp=&quot;&quot; HTML_x0020_File_x0020_Type.File_x0020_Type.mapcon=&quot;&quot; HTML_x0020_File_x0020_Type.File_x0020_Type.mapico=&quot;icgen.gif&quot; BackgroundImageLocation=&quot;/PublishingImages/metrotiles/Expenses.-Blue-2-BG.png&quot; BackgroundImageLocation.desc=&quot;TileImage02&quot; Description=&quot;SAP Concur&quot; LinkLocation=&quot;https://adfs.chda.maxuk.co.uk/adfs/ls/idpinitiatedsignon.aspx?LoginToRP=Concur&quot; LinkLocation.desc=&quot;SAP Concur&quot; LaunchBehavior=&quot;New tab&quot; TileOrder=&quot;5&quot; TileOrder.=&quot;5.00000000000000&quot; BackgroundImageClusterX=&quot;&quot; BackgroundImageClusterX.=&quot;&quot; BackgroundImageClusterY=&quot;&quot; BackgroundImageClusterY.=&quot;&quot; LinkTitleNoMenu=&quot;Expenses Portal&quot; LinkTitle=&quot;Expenses Portal&quot; Target_x0020_Audiences=&quot;&quot; ID=&quot;2&quot; ContentType=&quot;MetroTiles&quot; Modified=&quot;01/10/2019 08:28&quot; Modified.FriendlyDisplay=&quot;0|1 October, 2019&quot; Created=&quot;25/04/2016 16:50&quot; Created.FriendlyDisplay=&quot;0|25 April, 2016&quot; Author=&quot;22&quot; Editor=&quot;4133&quot; _UIVersionString=&quot;1.0&quot; Attachments=&quot;0&quot; FileRef=&quot;/Lists/MetroTiles/2_.000&quot; Created_x0020_Date.ifnew=&quot;&quot; FSObjType=&quot;0&quot; SortBehavior=&quot;0&quot; PermMask=&quot;0x7fffffffffffffff&quot; FileLeafRef=&quot;2_.000&quot; SyncClientId=&quot;&quot; DocIcon=&quot;&quot; MetaInfo=&quot;&quot; ItemChildCount=&quot;0&quot; FolderChildCount=&quot;0&quot; AppAuthor=&quot;&quot; AppEditor=&quot;&quot; /&gt;&lt;/Rows&gt;&lt;/dsQueryResponse&gt;" __designer:CustomXsl="fldtypes_Ratings.xsl" WebPart="true" Height="" Width=""><ParameterBindings>




				<ParameterBinding Name="dvt_sortdir" Location="Postback;Connection" /><ParameterBinding Name="dvt_sortfield" Location="Postback;Connection" /><ParameterBinding Name="dvt_startposition" Location="Postback" DefaultValue="" /><ParameterBinding Name="dvt_firstrow" Location="Postback;Connection" /><ParameterBinding Name="OpenMenuKeyAccessible" Location="Resource(wss,OpenMenuKeyAccessible)" /><ParameterBinding Name="open_menu" Location="Resource(wss,open_menu)" /><ParameterBinding Name="select_deselect_all" Location="Resource(wss,select_deselect_all)" /><ParameterBinding Name="idPresEnabled" Location="Resource(wss,idPresEnabled)" /><ParameterBinding Name="NoAnnouncements" Location="Resource(wss,noXinviewofY_LIST)" /><ParameterBinding Name="NoAnnouncementsHowTo" Location="Resource(wss,noXinviewofY_DEFAULT)" /><ParameterBinding Name="AddNewAnnouncement" Location="Resource(wss,addnewitem)" /><ParameterBinding Name="MoreAnnouncements" Location="Resource(wss,moreItemsParen)" /></ParameterBindings>
<DataFields>
</DataFields>
<XmlDefinition>
<View Name="{9382A1A0-11B8-4249-B106-FCBB63DA657B}" Type="HTML" TabularView="FALSE" DisplayName="" Url="/about/SitePages/Locations.aspx" Level="1" BaseViewID="1" ContentTypeID="0x" ><Query><OrderBy><FieldRef Name="TileOrder" Ascending="TRUE"/><FieldRef Name="Modified" Ascending="FALSE"/></OrderBy></Query><ViewFields><FieldRef Name="Title"/><FieldRef Name="BackgroundImageLocation"/><FieldRef Name="Description"/><FieldRef Name="LinkLocation"/><FieldRef Name="LaunchBehavior"/><FieldRef Name="BackgroundImageClusterX"/><FieldRef Name="BackgroundImageClusterY"/></ViewFields><RowLimit Paged="TRUE">30</RowLimit><JSLink>sp.ui.tileview.js</JSLink><XslLink Default="TRUE">main.xsl</XslLink><Toolbar Type="None"/></View></XmlDefinition>
</WebPartPages:XsltListViewWebPart>

</ZoneTemplate></WebPartPages:WebPartZone>                	
            </div> <!-- **** End MetroTiles **** -->							  
        </div> <!-- **** End Middle Container **** -->
    </div> <!-- **** End MetroTile Section **** -->

    <script type="text/javascript">

        var siteURL = _spPageContextInfo.webAbsoluteUrl;
        var lcid = _spPageContextInfo.currentLanguage;
		var context;
		var session;
		var store;
		var group;
		var officeSet;
		var officeTerms;
		var height = $(window).height();
		var width = $(window).width();
		var adjHeight = height / 2;
		var adjWidth = width / 1.5;
		var reduceWidth = width / 2.75;		
		
		$(function () {
	 
			var scriptbase = _spPageContextInfo.webServerRelativeUrl + "/_layouts/15/";		 
			$.getScript(scriptbase + "SP.Runtime.js",function () {
				$.getScript(scriptbase + "SP.js", function () {		 
					$.getScript(scriptbase + "SP.Taxonomy.js", function () {
			        	
			        	context = SP.ClientContext.get_current();
			            session = SP.Taxonomy.TaxonomySession.getTaxonomySession(context);            
			            store = session.get_termStores().getByName("Managed Metadata Service");	
			            group = store.get_groups().getByName("Intranet");		
			            officeSet = group.get_termSets().getByName("Offices");				 								 		 
						getTabs();	
						
					});		 
				});		 
			});										
		});		

        function getTabs() {
        	var areaCount=1;
        	
            officeTerms = officeSet.get_terms();
		    context.load(officeTerms);
		    
	        context.executeQueryAsync(function () {
	            var termEnumerator = officeTerms.getEnumerator();
	            while (termEnumerator.moveNext()) {
	                var areaTerm = termEnumerator.get_current();
	                var areaSetId = areaTerm.get_id();
	                var areaName = areaTerm.get_name();
	                if(areaName != "CHDA Head Office"){
	                	//console.log("area set="+areaName+" area set id="+areaSetId);
	                	
						
						if(areaCount===1){
							$('#areaTabs').append('<li onclick="makeActive(' + areaCount + ');" class="btn tabButton active" data-toggle="pill" href="#tab'+areaCount+'">'+areaName+'</li>');
							$('#areaContent').append('<div id="tab'+areaCount+'" class="tab-pane fade in active col-sm-4 col-md-4 col-lg-4 scrollbar locationSites">'+
													'<div class="panel-group" id="tab'+areaCount+'accordion'+areaCount+'"></div>'+
													'</div>');			
						}else{
							$('#areaTabs').append('<li onclick="makeActive(' + areaCount + ');" class="btn tabButton" data-toggle="pill" href="#tab'+areaCount+'">'+areaName+'</li>');
							$('#areaContent').append('<div id="tab'+areaCount+'" class="tab-pane fade in col-sm-4 col-md-4 col-lg-4 scrollbar locationSites">'+
													'<div class="panel-group" id="tab'+areaCount+'accordion'+areaCount+'"></div>'+
													'</div>');			
						}
	                	
	                	getLocations(areaTerm, areaCount);
	                	areaCount++;	                	              								                	
	            	}            	
	            }

		        $('#tab'+(areaCount-1)).after('<div class="locationViewer col-sm-7 col-md-7 col-lg-7">'+
		            					'<div class="row locationDetails" id="locationData">'+
		            					'</div>'+
		            					'<div class="row locationMap" id="locationMap">'+
		            					'</div>'+
		        						'</div>');	            
	        }, function (sender, args) {
	            console.log(args.get_message());
	        });		        
        };
        
		function getLocations(areaTerm, areaCount) {
			var locationCount=1;
			var terms = areaTerm.get_terms();			 
			context.load(terms);
				                	
			context.executeQueryAsync(function () {			 
				var termsEnum = terms.getEnumerator();			 
				while (termsEnum.moveNext()) {			 
					var locationTerm = termsEnum.get_current();			 
					var locationName = locationTerm.get_name(); 
					var locationId = locationTerm.get_id(); 
					
			 		$('#tab'+areaCount+'accordion'+areaCount).append('<div class="panel panel-default">'+
													'<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion'+areaCount+'" href="#tab'+areaCount+'location'+locationCount+'">'+
														'<div class="panel-heading">'+
													    	'<h4 class="panel-title">'+locationName+'</h4>'+
														'</div>'+
													'</a>'+
													'<div id="tab'+areaCount+'location'+locationCount+'" class="panel-collapse collapse in">'+
												    	'<ul class="list-group" id="siteData">'+
												    	'</ul>'+
													'</div>'+
											  	'</div>');
			 		
					//Check if term has child terms 
					if (locationTerm.get_termsCount() > 0) {			 
						getSites(locationTerm,areaCount,locationCount);		 
					}		 
					locationCount++;	 
				}		 
			},			 
			function () {			 
				//failure to load terms.				 
			});			
		};        
	                      
	    function getSites(locationTerm,areaCount,locationCount){
			var terms = locationTerm.get_terms();			 
			context.load(terms);
				                	
			context.executeQueryAsync(function () {			 
				var termsEnum = terms.getEnumerator();			 
				while (termsEnum.moveNext()) {			 
					var siteTerm = termsEnum.get_current();			 
					var siteName = siteTerm.get_name(); 
					var siteId = siteTerm.get_id(); 
					
					var id = siteId.toString();
					
			 		$('#tab'+areaCount+'location'+locationCount).append('<a href="#" onclick="getSiteDetails(\''+id+'\',\''+siteName+'\')" class="siteLink"><li class="list-group-item">'+siteName+'</li></a>');
			 		
					//Check if term has child terms 
					//if (siteTerm.get_termsCount() > 0) {			 	
						//getSiteDetails(siteTerm,siteId,locationCount)	 
					//}		 
				}		 
			},			 
			function () {			 
				//failure to load terms.				 
			});		    
	    };                  
		
		function getSiteDetails(siteID, siteName){
			//var terms = siteTerm.get_terms();			 
			var siteDataHTML = "";
			var siteMapHTML = "";
			var count=0;
			var parentTerm = store.getTerm(siteID);
			var terms = parentTerm.get_terms();			
			context.load(terms);
				                	
			context.executeQueryAsync(function () {			 
				var termsEnum = terms.getEnumerator();			 
				while (termsEnum.moveNext()) {			 								
					var siteDataTerm = termsEnum.get_current();
					var siteDataName = siteDataTerm.get_name().toString(); 
					switch (count) {
						case 0:
							//site name
							siteDataHTML = '<h4>'+siteDataName+'</h4>';							
							break;
						/*case 1:
							//site address
							siteDataHTML += '<h5>'+siteDataName+'</h5>';
							break;*/
						case 1:
							//google map
							siteDataHTML += '<a href="#" onclick="window.open(\'' + siteDataName + '\',\'Google Map\',\'location=no,menubar=no,titlebar=no,top=100,left=100,width='+adjWidth+',height='+adjHeight+'\')">Google Map</a>';
							break;
						/*case 3:
							//site address
							siteDataHTML += '<h4>'+siteDataName+'</h4>';
							break;
						case 4:
							//site phone
							siteDataHTML += '<h5>'+siteDataName+'</h5>';
							break;*/
					}
					count++;
				}
				
				$('#locationData').empty();
				$('#googleMap').empty();
				$('#locationData').append(siteDataHTML);
				getPDFMap(siteName);
				//$('#googleMap').append(siteMapHTML);		 
			},			 
			function () {			 
				//failure to load terms.				 
			});	
		};

		function getPDFMap(siteName){
		
			$('#locationMap').empty();
			
			var method = "GetListItems";
			var list = "Maps";
	        var fields = "<ViewFields>" +
	            "<FieldRef Name='Location' />" +
	            "<FieldRef Name='LinkFilenameNoMenu' />" +
	            "</ViewFields>";			
			var query = "<Query><Where><Eq><FieldRef Name='Location' /><Value Type='Metadata'>"+siteName+"</Value></Eq></Where></Query>";
			
	        $().SPServices({
	            operation: method,
	            async: false,
	            listName: list,
	            CAMLViewFields: fields,
	            CAMLQuery: query,	
	            completefunc: function (xData, Status) {
	                $(xData.responseXML).SPFilterNode("z:row").each(function () {
	                	var docName = $(this).attr("ows_LinkFilenameNoMenu");
	                	var docFQN = siteURL + '/' + list + '/' + docName + "#zoom=100";
						$('#locationMap').append('<iframe id="docViewer" width="100%" height="100%" src="'+docFQN+'"></iframe>');
					});
				}
			});
		};
		
		function makeActive(tabNum) {
		    $('#tabNames li').removeClass('buttonOn');
		    $("#tabNames li:nth-child(" + tabNum + ")").addClass('buttonOn');
		}
	            						         
/*

		function getSites(setID) {

			//We need to load and populat the matching Term Set first.
			 
			//var termSetEnum = officeSet.getEnumerator();
			 
			//while (termSetEnum.moveNext()) {			 
				var currentTermSet = store.getTermSet(setID);			 
				//if (currentTermSet.get_id() == setId) {
			 
					//If termSet Matches, then get all terms.			 
					context.load(currentTermSet);			 
					context.executeQueryAsync(function () {			 
						//Load terms			 
						var terms = currentTermSet.get_terms();			 
						context.load(terms);			 
						context.executeQueryAsync(function () {			 
							var termsEnum = terms.getEnumerator();			 
							while (termsEnum.moveNext()) {			 
								var currentTerm = termsEnum.get_current();			 
								var termName = currentTerm.get_name(); 
								var termId = currentTerm.get_id(); 
								//termsList += termName + ": " + termId; 
				 
								//Check if term has child terms 
								if (currentTerm.get_termsCount() > 0) {			 
									console.log("getting child terms");
									//Term has sub terms.			 
									recursiveTerms(currentTerm, 1);												 
								}		 
								//console.log(termList);
								console.log("site="+termName);				 
							}		 
						},			 
						function () {			 
						//failure to load terms.
				 
						});			 
					},			 
					function () {			 
					//failure to load current term set			 
					});			 
					break; 
				}			 
			//}			 
		};
			 
		function recursiveTerms(currentTerm, nestedLoop) {
		 
			//Loop count for formatting purpose.			 
			var loop = nestedLoop + 1;
			 
			//Get Term child terms			 
			var terms = currentTerm.get_terms();			 
			context.load(terms);		 
			context.executeQueryAsync(function () {
			 
				var termsEnum = terms.getEnumerator();			 
				while (termsEnum.moveNext()) {			 
					var newCurrentTerm = termsEnum.get_current();			 
					var termName = newCurrentTerm.get_name();			 
					termId = newCurrentTerm.get_id();
			 			 
					//Tab Out format. 
					//for (var i = 0; i < loop; i++) {			 
						//termsList += "\t";			 
					//}			 
					//termsList += termName + ": " + termId;
			 
					//Check if term has child terms.			 
					if (currentTerm.get_termsCount() > 0) {			 

						//Term has sub terms.			 
						recursiveTerms(newCurrentTerm, loop);			 
					} 
				}			 
			},			 
			function () {			 
				//failure to load terms 
			});			 			
		};


    		//var officeSites = store.getTermSetsByName(termSetName, lcid);
            //var officeSites = officeTerms.get_terms();
		    
		    context.load(officeSites);
		    
	        context.executeQueryAsync(function () {
	            var termEnumerator = officeSites.getEnumerator();
	            while (termEnumerator.moveNext()) {
	                var currentSite = termEnumerator.get_current();
	                console.log("site="+currentSite.get_name());
	                
				   	for(var i = 0; i < officeSites.get_count();i++){
				    	var term = officeSites.getItemAtIndex(i);
				    	console.log(term.get_name());
				   	}	                
	            }
	        }, function (sender, args) {
	            console.log(args.get_message());
	        });			    	

        function getLocations() {

            var locList = "Locations";
            var locationFields = "<ViewFields>" +
                "<FieldRef Name='Title' />" +
                "<FieldRef Name='Phone' />" +
                "<FieldRef Name='Address' />" +
                "<FieldRef Name='GoogleMap' />" +
                "</ViewFields>";

            $().SPServices({
                operation: "GetListItems",
                async: false,
                listName: locList,
                CAMLViewFields: locationFields,
                completefunc: function (xData, Status) {
                    $(xData.responseXML).SPFilterNode("z:row").each(function () {

                        // Setup Variables and assign SP list item
                        var ID = ($(this).attr("ows_ID"));
                        var office = ($(this).attr("ows_Title"));
                        var phone = ($(this).attr("ows_Phone"));
                        var address = ($(this).attr("ows_Address"));
                        var map = ($(this).attr("ows_GoogleMap"));

                        //var directions = ($(this).attr("ows_Directions"));
                        //var plane = ($(this).attr("ows_Airport"));
                        //var train = ($(this).attr("ows_Rail"));
                        //var car = ($(this).attr("ows_Car"));

                        // Assign variable to HTML #Tag so it is displayed on the page
                        $("#office" + ID).append("<h3>" + office + "</h3>");
                        $("#phone" + ID).append("<h4>" + phone + "</h4>");
                        $("#location" + ID).append(address);
                        $("#map" + ID).append(map);
                    });
                }
            });
        };


		$(window).load(function() {
	        $('#areaContent').append('<div class="locationViewer col-sm-7 col-md-7 col-lg-7">'+
	            					'<div class="row locationDetails blue">'+
		            				'<a href="" target="_blank"><div id="office"></div></a>'+
		            				'<div id="phone"></div>'+
		            				'<textarea id="address" readonly rows="6" cols="30" class="officeAddr"></textarea>'+                
	            					'</div>'+
	            					'<div class="row locationMap green" id="googleMap">'+
	                				'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2482.099388322576!2d-0.10370878352414033!3d51.529736879638875!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48761b5b947e373d%3A0xcf954a1df86f007!2s22%20Angel%20Gate%2C%20The%20Angel%2C%20London%20EC1V%202PT!5e0!3m2!1sen!2suk!4v1570699371386!5m2!1sen!2suk" frameborder="0" style="border:0;" allowfullscreen=""></iframe>'+
	            					'</div>'+
	        						'</div>');		
		});
 */   
    </script>

</asp:Content>
