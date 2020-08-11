<%-- **************************************************
     Site   	: About 
     Page   	: Home
     Author 	: Jason Clark
     Date   	: Aug 2016
     Modified By:
     Date		:
     Notes		:
     ************************************************** --%>
<%-- _lcid="1033" _version="15.0.4420" _dal="1" --%>
<%-- _LocalBinding --%>

<%@ Page Language="C#" MasterPageFile="/_catalogs/masterpage/ShareBoot/ShareBoot.master" Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document" meta:webpartpageexpansion="full" %>

<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="PlaceHolderAdditionalPageHead">
    <!-- SCRIPTS -->
    <script type="text/javascript" src="/Style Library/scripts/jquery.min.js"></script>
    <script type="text/javascript" src="/Style Library/scripts/jquery.SPServices.min.js"></script>
    <script type="text/javascript" src="/Style Library/scripts/siteLinks.js"></script>
    <script type="text/javascript" src="/Style Library/scripts/siteContacts.js"></script>
    <script type="text/javascript" src="/Style Library/scripts/siteLogo.js"></script>

    <!-- STYLES -->
</asp:Content>

<%-- *** Change the browser tab / favourite page name --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitle" runat="server">
    CHDA Intranet | 
    <SharePoint:ProjectProperty Property="Title" runat="server" />
</asp:Content>

<%-- *** Change the displayed page name --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    <span id="pageTitle"></span>
</asp:Content>

<asp:Content ContentPlaceHolderID="PlaceHolderPageLogo" runat="server">
    <?xml version="1.0" encoding="utf-8" ?>
    <div id="siteLogo"></div>
</asp:Content>

<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">
    <div class="ms-core-tableNoSpace ms-webpartPage-root" id="_invisibleIfEmpty" name="_invisibleIfEmpty">
        <div class="row">
            <!-- ***** Main Row ***** -->

            <!-- ************************* -->
            <!-- **** Left Container ***** -->
            <!-- ************************* -->
            <div class="col-sm-7 col-md-7 col-lg-7 text-justify pageLeftContainer">
                <WebPartPages:WebPartZone runat="server" Title="Left Section" ID="WebPartZone1" FrameType="TitleBarOnly">
                <zonetemplate>
                <WebPartPages:ContentEditorWebPart runat="server" __MarkupType="xmlmarkup" WebPart="true" __WebPartId="{65CCACAA-0F3E-460A-9119-09D9BD0F38EF}" >
                <WebPart xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://schemas.microsoft.com/WebPart/v2">
                  <Title>Content Editor</Title>
                  <FrameType>None</FrameType>
                  <Description>Allows authors to enter rich text content.</Description>
                  <IsIncluded>true</IsIncluded>
                  <PartOrder>2</PartOrder>
                  <FrameState>Normal</FrameState>
                  <Height />
                  <Width />
                  <AllowRemove>true</AllowRemove>
                  <AllowZoneChange>true</AllowZoneChange>
                  <AllowMinimize>true</AllowMinimize>
                  <AllowConnect>true</AllowConnect>
                  <AllowEdit>true</AllowEdit>
                  <AllowHide>true</AllowHide>
                  <IsVisible>true</IsVisible>
                  <DetailLink />
                  <HelpLink />
                  <HelpMode>Modeless</HelpMode>
                  <Dir>Default</Dir>
                  <PartImageSmall />
                  <MissingAssembly>Cannot import this Web Part.</MissingAssembly>
                  <PartImageLarge>/_layouts/15/images/mscontl.gif</PartImageLarge>
                  <IsIncludedFilter />
                  <ExportControlledProperties>true</ExportControlledProperties>
                  <ConnectionID>00000000-0000-0000-0000-000000000000</ConnectionID>
                  <ID>g_65ccacaa_0f3e_460a_9119_09d9bd0f38ef</ID>
                  <ContentLink xmlns="http://schemas.microsoft.com/WebPart/v2/ContentEditor" />
                  <Content xmlns="http://schemas.microsoft.com/WebPart/v2/ContentEditor"><![CDATA[<h2><span class="ms-rteThemeForeColor-2-0">​Who are we....</span></h2><div dir="ltr" style="text-align: left;"><span lang="EN-GB"><p>
					                Centre for Health and Disability Assessments (CHDA) is a 
					                subsidiary of MAXIMUS, a leading global provider of 
					                government health programmes. For more about MAXIMUS visit 
					                their websites from the useful links section on the right of 
					                this page.</p>
					                <img src="/about/PublishingImages/maximus.png" alt="" style="width: 543px;"/>
					
					                </span></div>]]></Content>
                  <PartStorage xmlns="http://schemas.microsoft.com/WebPart/v2/ContentEditor" />
                </WebPart>
                </WebPartPages:ContentEditorWebPart>
				</zonetemplate>
                </WebPartPages:WebPartZone>
            </div>

            <!-- *************************** -->
            <!-- **** Middle Container ***** -->
            <!-- *************************** -->
            <div class="col-sm-3 col-md-3 col-lg-3 text-justify pageMiddleContainer">
                <div class="row teamMetroTiles">
                    <WebPartPages:WebPartZone runat="server" Title="Middle Section" ID="WebPartZone2" FrameType="TitleBarOnly">
                    <zonetemplate>
					<WebPartPages:XsltListViewWebPart runat="server" ViewFlag="" ViewSelectorFetchAsync="False" InplaceSearchEnabled="False" ServerRender="False" ClientRender="True" InitialAsyncDataFetch="False" WebId="085d0c9c-74b2-4aa9-9669-ae7e2e46c00d" IsClientRender="False" GhostedXslLink="main.xsl" NoDefaultStyle="TRUE" ViewGuid="{80BB9058-9F1E-4F91-BE39-10153F72B62F}" EnableOriginalValue="False" ViewContentTypeId="0x" Default="FALSE" ListName="{49B3B114-CCEB-43CD-BF23-A20E20714ECF}" ListId="49b3b114-cceb-43cd-bf23-a20e20714ecf" PageSize="-1" UseSQLDataSourcePaging="True" DataSourceID="" ShowWithSampleData="False" AsyncRefresh="False" ManualRefresh="False" AutoRefresh="False" AutoRefreshInterval="60" Title="MetroTiles(Root)" FrameType="None" SuppressWebPartChrome="False" Description="" IsIncluded="True" ZoneID="WebPartZone2" PartOrder="2" FrameState="Normal" AllowRemove="True" AllowZoneChange="True" AllowMinimize="True" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" TitleUrl="/Lists/MetroTiles" DetailLink="/Lists/MetroTiles" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="" IsIncludedFilter="" ExportControlledProperties="True" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_80bb9058_9f1e_4f91_be39_10153f72b62f" ChromeType="None" ExportMode="All" __MarkupType="vsattributemarkup" __WebPartId="{80BB9058-9F1E-4F91-BE39-10153F72B62F}" __AllowXSLTEditing="true" __designer:CustomXsl="fldtypes_Ratings.xsl" WebPart="true" Height="" Width=""><ParameterBindings>
					<ParameterBinding Name="dvt_sortdir" Location="Postback;Connection" /><ParameterBinding Name="dvt_sortfield" Location="Postback;Connection" /><ParameterBinding Name="dvt_startposition" Location="Postback" DefaultValue="" /><ParameterBinding Name="dvt_firstrow" Location="Postback;Connection" /><ParameterBinding Name="OpenMenuKeyAccessible" Location="Resource(wss,OpenMenuKeyAccessible)" /><ParameterBinding Name="open_menu" Location="Resource(wss,open_menu)" /><ParameterBinding Name="select_deselect_all" Location="Resource(wss,select_deselect_all)" /><ParameterBinding Name="idPresEnabled" Location="Resource(wss,idPresEnabled)" /><ParameterBinding Name="NoAnnouncements" Location="Resource(wss,noXinviewofY_LIST)" /><ParameterBinding Name="NoAnnouncementsHowTo" Location="Resource(wss,noXinviewofY_DEFAULT)" /><ParameterBinding Name="AddNewAnnouncement" Location="Resource(wss,addnewitem)" /><ParameterBinding Name="MoreAnnouncements" Location="Resource(wss,moreItemsParen)" /></ParameterBindings>
                    <DataFields>
                    </DataFields>
                    <XmlDefinition>
                    <View Name="{80BB9058-9F1E-4F91-BE39-10153F72B62F}" Type="HTML" TabularView="FALSE" DisplayName="" Url="/about/SitePages/Home.aspx" Level="1" BaseViewID="1" ContentTypeID="0x" ><Query><OrderBy><FieldRef Name="TileOrder" Ascending="TRUE"/><FieldRef Name="Modified" Ascending="FALSE"/></OrderBy></Query><ViewFields><FieldRef Name="Title"/><FieldRef Name="BackgroundImageLocation"/><FieldRef Name="Description"/><FieldRef Name="LinkLocation"/><FieldRef Name="LaunchBehavior"/><FieldRef Name="BackgroundImageClusterX"/><FieldRef Name="BackgroundImageClusterY"/></ViewFields><RowLimit Paged="TRUE">30</RowLimit><JSLink>sp.ui.tileview.js</JSLink><XslLink Default="TRUE">main.xsl</XslLink><Toolbar Type="None"/></View></XmlDefinition>
                    </WebPartPages:XsltListViewWebPart>
					</zonetemplate>
                    </WebPartPages:WebPartZone>
                </div>
            </div>

            <!-- *************************** -->
            <!-- ***** Right Container ***** -->
            <!-- *************************** -->
            <div class="col-sm-2 col-md-2 col-lg-2 text-justify pageRightContainer">
                <div class="row linkContainer">
                    <div class="panel-group" id="accordion">

                        <div class="panel panel-default">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#group2" style="text-decoration: none">
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
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#group3" style="text-decoration: none">
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
                    </div>
                    <!-- end panel group -->
                </div>
                <!-- end link container -->
            </div>
            <!-- Right Container End -->
        </div>
        <!-- Row Main End -->
    </div>
    <!-- SP Table Container End -->

    <script type="text/javascript">

        if (typeof (MSOLayout_MakeInvisibleIfEmpty) == "function") {
            MSOLayout_MakeInvisibleIfEmpty();
        };

        var siteURL = _spPageContextInfo.webAbsoluteUrl;
        var siteName;
        var siteTitle;

        $(function () {

            $.ajax({
                url: siteURL + "/_api/web/title",
                method: "GET",
                headers: { "Accept": "application/json; odata=verbose" },
                success: function (data) {
                    siteTitle = data.d.Title;
                    siteName = siteURL.split('co.uk/')[1];

                    getLogo(siteTitle);

                    $('#pageTitle').append('<SharePoint:ProjectProperty Property="Title" runat="server" __designer:Preview="About Us" __designer:Values="&lt;P N=&#39;Property&#39; T=&#39;Title&#39; /&gt;&lt;P N=&#39;InDesign&#39; T=&#39;False&#39; /&gt;&lt;P N=&#39;ID&#39; ID=&#39;1&#39; T=&#39;ctl01&#39; /&gt;&lt;P N=&#39;Page&#39; ID=&#39;2&#39; /&gt;&lt;P N=&#39;TemplateControl&#39; R=&#39;2&#39; /&gt;&lt;P N=&#39;AppRelativeTemplateSourceDirectory&#39; R=&#39;-1&#39; /&gt;"/>');

                    getLinkData(siteTitle);
                    //getContacts(siteURL,'Contacts');
                },
                error: function (data) {
                    alert("Error: " + data);
                }
            });
        });

    </script>

</asp:Content>

<asp:Content ContentPlaceHolderID="PlaceHolderSearchArea" runat="server">
    <SharePoint:DelegateControl runat="server"
        ControlId="SmallSearchInputBox" />
</asp:Content>

<asp:Content ContentPlaceHolderID="PlaceHolderPageDescription" runat="server">
    <SharePoint:ProjectProperty Property="Description" runat="server" />
</asp:Content>