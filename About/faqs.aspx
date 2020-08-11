<%-- **************************************************
     Site   	: Team
     Page   	: FAQs
     Author 	: Jason Clark
     Date   	: March 2017
     Modified By:
     Date		:
     Notes		:
     ************************************************** --%>

<%-- _lcid="1033" _version="15.0.4420" _dal="1" --%>
<%-- _LocalBinding --%>
<%@ Page language="C#" MasterPageFile="/_catalogs/masterpage/ShareBoot/ShareBoot.master"    Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document" meta:webpartpageexpansion="full"  %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="PlaceHolderAdditionalPageHead">

	<!-- SCRIPTS -->
    <script type="text/javascript" src="/Style Library/scripts/jquery.min.js"></script>
    <script type="text/javascript" src="/Style Library/scripts/jquery.SPServices.min.js"></script>
	<script type="text/javascript" src="/Style Library/scripts/siteLinks.js"></script>
	<script type="text/javascript" src="/Style Library/scripts/siteContacts.js"></script>
    <script type="text/javascript" src="/Style Library/scripts/siteLogo.js"></script>
	<script type="text/javascript" src="/Style Library/scripts/siteFAQs.js"></script>

    <!-- STYLES -->

</asp:Content>

<%-- *** Change the browser tab / favourite page name --%>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
    CHDA Intranet | 
    <SharePoint:ProjectProperty Property="Title" runat="server"/>
</asp:Content>

<%-- *** Change the displayed page name --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
	<a href= "/about/sitepages/home.aspx" class="homeLink">
	<SharePoint:ProjectProperty Property="Title" runat="server"/></a> &gt; 
	Suggestion Box                   
</asp:Content>

<%-- *** Page Logo --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageLogo" runat="server">	
	<?xml version="1.0" encoding="utf-8"?>
    <div id="siteLogo"></div>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
	<div class="ms-core-tableNoSpace ms-webpartPage-root" id="_invisibleIfEmpty">
        <div class="row">
        
            <!-- *********************** -->
            <!-- **** Left Section ***** -->
            <!-- *********************** -->
            <div class="col-lg-7 col-md-7 col-sm-7 text-justify pageLeftContainer">
            	<div class="titleRow">	            	
            		<h2>Welcome to the Suggestion Box</h2> 
            		<p>
            			If you have an idea or suggestion that you believe could 
						help improve our business, processes or service delivery 
						then please email: <a href="mailto:CHDASuggestions@maximusuk.co.uk"><span class="glyphicon glyphicon-envelope"></span> 
						Suggestion Box</a>.<br/>
						All ideas / suggestions and responses will be posted on 
						this page.
            		</p>	            		
            	</div>
                <div class="suggestionContainer">                    
                	<!-- ***** FAQs Section ***** -->                  
                    <div class="col-sm-4 col-md-4 col-lg-4 suggestionTabs">                     		    
	                    <ul class="nav nav-pills nav-stacked" id="tabNames"></ul>
                	</div>
 
		            <div class="col-sm-8 col-md-8 co-lg-8 suggestionContent">		                
		                <div class="tab-content" id="tabData"></div>                             		               
		            </div>					
				</div>
	    	</div>

            <!-- ************************** -->
            <!-- ***** Middle Section ***** -->
            <!-- ************************** -->
            <div class="col-lg-3 col-md-3 col-sm-3 pageMiddleContainer">
                <div class="row faqsMetroTiles">
                	<WebPartPages:WebPartZone runat="server" Title="Middle Section" ID="WebPartZone7" FrameType="TitleBarOnly"><ZoneTemplate>
					<WebPartPages:XsltListViewWebPart runat="server" ViewFlag="" ViewSelectorFetchAsync="False" InplaceSearchEnabled="False" ServerRender="False" ClientRender="True" InitialAsyncDataFetch="False" WebId="085d0c9c-74b2-4aa9-9669-ae7e2e46c00d" IsClientRender="False" GhostedXslLink="main.xsl" NoDefaultStyle="TRUE" ViewGuid="{4D5DACED-C4EF-4487-AC37-7E6479A666CB}" EnableOriginalValue="False" ViewContentTypeId="0x" Default="FALSE" ListUrl="" ListDisplayName="" ListName="{49B3B114-CCEB-43CD-BF23-A20E20714ECF}" ListId="49b3b114-cceb-43cd-bf23-a20e20714ecf" PageSize="-1" UseSQLDataSourcePaging="True" DataSourceID="" ShowWithSampleData="False" AsyncRefresh="False" ManualRefresh="False" AutoRefresh="False" AutoRefreshInterval="60" Title="MetroTiles(Root)" FrameType="None" SuppressWebPartChrome="False" Description="" IsIncluded="True" ZoneID="WebPartZone7" PartOrder="2" FrameState="Normal" AllowRemove="True" AllowZoneChange="True" AllowMinimize="True" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" TitleUrl="/Lists/MetroTiles" DetailLink="/Lists/MetroTiles" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="" IsIncludedFilter="" ExportControlledProperties="True" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_4d5daced_c4ef_4487_ac37_7e6479a666cb" ChromeType="None" ExportMode="All" __MarkupType="vsattributemarkup" __WebPartId="{4D5DACED-C4EF-4487-AC37-7E6479A666CB}" __AllowXSLTEditing="true" __designer:CustomXsl="fldtypes_Ratings.xsl" WebPart="true" Height="" Width=""><ParameterBindings>



					<ParameterBinding Name="dvt_sortdir" Location="Postback;Connection" /><ParameterBinding Name="dvt_sortfield" Location="Postback;Connection" /><ParameterBinding Name="dvt_startposition" Location="Postback" DefaultValue="" /><ParameterBinding Name="dvt_firstrow" Location="Postback;Connection" /><ParameterBinding Name="OpenMenuKeyAccessible" Location="Resource(wss,OpenMenuKeyAccessible)" /><ParameterBinding Name="open_menu" Location="Resource(wss,open_menu)" /><ParameterBinding Name="select_deselect_all" Location="Resource(wss,select_deselect_all)" /><ParameterBinding Name="idPresEnabled" Location="Resource(wss,idPresEnabled)" /><ParameterBinding Name="NoAnnouncements" Location="Resource(wss,noXinviewofY_LIST)" /><ParameterBinding Name="NoAnnouncementsHowTo" Location="Resource(wss,noXinviewofY_DEFAULT)" /><ParameterBinding Name="AddNewAnnouncement" Location="Resource(wss,addnewitem)" /><ParameterBinding Name="MoreAnnouncements" Location="Resource(wss,moreItemsParen)" /></ParameterBindings>
<DataFields>
</DataFields>
<XmlDefinition>
<View Name="{4D5DACED-C4EF-4487-AC37-7E6479A666CB}" Type="HTML" TabularView="FALSE" DisplayName="" Url="/about/SitePages/faqs.aspx" Level="1" BaseViewID="1" ContentTypeID="0x" ><Query><OrderBy><FieldRef Name="TileOrder" Ascending="TRUE"/><FieldRef Name="Modified" Ascending="FALSE"/></OrderBy></Query><ViewFields><FieldRef Name="Title"/><FieldRef Name="BackgroundImageLocation"/><FieldRef Name="Description"/><FieldRef Name="LinkLocation"/><FieldRef Name="LaunchBehavior"/><FieldRef Name="BackgroundImageClusterX"/><FieldRef Name="BackgroundImageClusterY"/></ViewFields><RowLimit Paged="TRUE">30</RowLimit><JSLink>sp.ui.tileview.js</JSLink><XslLink Default="TRUE">main.xsl</XslLink><Toolbar Type="None"/></View></XmlDefinition>
</WebPartPages:XsltListViewWebPart>

					</ZoneTemplate></WebPartPages:WebPartZone> 
                </div>
            </div> <!-- end metrotiles section -->

			<!-- *************************** -->
			<!-- ***** Right Container ***** -->
			<!-- *************************** -->            
            <div class="col-sm-2 col-md-2 col-lg-2 text-justify pageRightContainer" id="usefulLinks">
				<div class="row linkContainer">
                    <div class="panel-group" id="accordion">
                    	
                        <div class="panel panel-default">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#group2" style="text-decoration:none">
                                <div class="panel-heading">
                                    <div class="panel-title">
                                        <strong id="groupTitle2"></strong> 
                                    </div>
                                </div>
                            </a>                        
                            <div id="group2" class="panel-collapse collapse">
                                <div class='list-group' id="links2"></div>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#group3" style="text-decoration:none">
                                <div class="panel-heading">
                                    <div class="panel-title">
                                        <strong id="groupTitle3"></strong>
                                    </div>
                                </div>
                            </a>                        
                            <div id="group3" class="panel-collapse collapse">
                                <div class='list-group' id="links3"></div>
                            </div>
                        </div>	                        
                    </div> <!-- end panel group -->            
				</div> <!-- end link container -->
			</div> <!-- Right Container End -->
            
        </div> <!-- end main row -->
    </div> <!-- end SP table -->
    
    <script type="text/javascript">

        var siteURL = _spPageContextInfo.webAbsoluteUrl;
        var siteTitle;
        var siteName;

        if (typeof (MSOLayout_MakeInvisibleIfEmpty) == "function") {
            MSOLayout_MakeInvisibleIfEmpty();
        }

        $(function () {

            //var item = new SP.Taxonomy.TaxonomyFieldValue();
            //var team = item.get_item('Finance');
            //var teamCatLabel = team.get_label();
            //var teamID = team.get_termGuid();

            //alert('teamID='+teamID);

            $.ajax({
                url: siteURL + "/_api/web/title",
                method: "GET",
                headers: { "Accept": "application/json; odata=verbose" },
                success: function (data) {
                    siteTitle = data.d.Title;
                    siteName = siteURL.split('co.uk/')[1];

                    getLogo(siteTitle);

                    getLinkData(siteTitle);
                    //getContacts(siteURL,'Contacts');
                    getTabs(siteURL);
                    getItems(siteURL);
                },
                error: function (data) {
                    alert("Error: " + data);
                }
            });
        })

    </script>

</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderSearchArea" runat="server">
	<SharePoint:DelegateControl runat="server" ControlId="SmallSearchInputBox"/>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderPageDescription" runat="server">
	<SharePoint:ProjectProperty Property="Description" runat="server"/>
</asp:Content>