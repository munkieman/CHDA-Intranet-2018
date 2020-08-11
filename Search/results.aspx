<%@ Register TagPrefix="WpNs0" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%-- _lcid="1033" _version="15.0.4420" _dal="1" --%>
<%-- _LocalBinding --%>
<%@ Page language="C#" MasterPageFile="~masterurl/custom.master"    Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document" meta:webpartpageexpansion="full"  %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- *** Browser tab / favourite page name --%>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
    CHDA Intranet | 
	<SharePoint:ProjectProperty Property="Title" runat="server"/>
</asp:Content>

<%-- Page Title --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
	<a href="https://intranet.chda.maxuk.co.uk/" class="homeLink">
        CHDA Intranet
	</a> &gt; <SharePoint:ProjectProperty Property="Title" runat="server"/> Results            
</asp:Content>

<%-- *** Page Logo --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageLogo" runat="server">
	<?xml version="1.0" encoding="utf-8"?>
	<svg class="pageLogo" xmlns="http://www.w3.org/2000/svg" height="128" width="128" viewBox="0 0 128 128">
	  <g>
	    <rect height="128" width="128" fill="#716439" />
	    <path id="path1" transform="rotate(0,64,64) translate(15.0016909903609,15) scale(3.06240398737804,3.06240398737804)  " fill="#FFFFFF" d="M11.170988,2.0000026C6.1139962,2.0000026 1.9999944,6.1120075 1.9999944,11.16603 1.9999944,16.219991 6.1139962,20.331996 11.170988,20.331996 16.227981,20.331996 20.341006,16.219991 20.341006,11.16603 20.341006,6.1120075 16.227981,2.0000026 11.170988,2.0000026z M11.170988,0C17.33003,0 22.341001,5.0089787 22.341001,11.16603 22.341001,13.76351 21.449155,16.156669 19.95551,18.055608L19.942527,18.071714 31.999898,30.615001 30.5589,32.001003 18.567029,19.525854 18.476871,19.605846C16.516895,21.303544 13.961804,22.332 11.170988,22.332 5.0119487,22.332 1.6168633E-07,17.32302 0,11.16603 1.6168633E-07,5.0089787 5.0119487,0 11.170988,0z" />
	  </g>
	</svg>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">

    <div class="ms-searchCenter-result-main">
        <WebPartPages:WebPartZone 
            runat="server" 
            AllowPersonalization="false" 
            FrameType="TitleBarOnly" 
            title="<%$Resources:Microsoft.Office.Server.Search,LayoutPageZone_MainZone%>" 
            id="MainZone" orientation="Vertical" 
            QuickAdd-GroupNames="Search" 
            QuickAdd-ShowListsAndLibraries="false"><ZoneTemplate>
		<spsswc:ResultScriptWebPart runat="server" DataProviderJSON="{&quot;QueryGroupName&quot;:&quot;Default&quot;,&quot;QueryPropertiesTemplateUrl&quot;:&quot;querygroup://webroot/SitePages/results.aspx?groupname=Default&quot;,&quot;IgnoreQueryPropertiesTemplateUrl&quot;:false,&quot;SourceID&quot;:&quot;ad1338c2-d674-4904-9fbf-6463ded1148c&quot;,&quot;SourceName&quot;:&quot;Intranet Results Source&quot;,&quot;SourceLevel&quot;:&quot;Ssa&quot;,&quot;CollapseSpecification&quot;:&quot;&quot;,&quot;QueryTemplate&quot;:&quot;{SearchBoxQuery}  Path=https://intranet.chda.maxuk.co.uk/*&quot;,&quot;FallbackSort&quot;:[{&quot;p&quot;:&quot;Rank&quot;,&quot;d&quot;:1}],&quot;FallbackSortJson&quot;:&quot;[{\&quot;p\&quot;:\&quot;Rank\&quot;,\&quot;d\&quot;:1}]&quot;,&quot;RankRules&quot;:null,&quot;RankRulesJson&quot;:&quot;null&quot;,&quot;AsynchronousResultRetrieval&quot;:false,&quot;SendContentBeforeQuery&quot;:true,&quot;BatchClientQuery&quot;:true,&quot;FallbackLanguage&quot;:-1,&quot;FallbackRankingModelID&quot;:&quot;9e09f192-e036-422f-ad3b-534574e8f894&quot;,&quot;EnableStemming&quot;:true,&quot;EnablePhonetic&quot;:false,&quot;EnableNicknames&quot;:false,&quot;EnableInterleaving&quot;:true,&quot;EnableQueryRules&quot;:true,&quot;EnableOrderingHitHighlightedProperty&quot;:false,&quot;HitHighlightedMultivaluePropertyLimit&quot;:-1,&quot;IgnoreContextualScope&quot;:false,&quot;ScopeResultsToCurrentSite&quot;:false,&quot;TrimDuplicates&quot;:true,&quot;Properties&quot;:{&quot;ListId&quot;:&quot;0e46e412-cf5f-4fa0-9206-819327cf07f2&quot;,&quot;ListItemId&quot;:1},&quot;PropertiesJson&quot;:&quot;{\&quot;ListId\&quot;:\&quot;0e46e412-cf5f-4fa0-9206-819327cf07f2\&quot;,\&quot;ListItemId\&quot;:1}&quot;,&quot;ClientType&quot;:&quot;&quot;,&quot;UpdateAjaxNavigate&quot;:true,&quot;SummaryLength&quot;:180,&quot;DesiredSnippetLength&quot;:90,&quot;PersonalizedQuery&quot;:false,&quot;FallbackRefinementFilters&quot;:null,&quot;IgnoreStaleServerQuery&quot;:false,&quot;RenderTemplateId&quot;:&quot;DefaultDataProvider&quot;,&quot;AlternateErrorMessage&quot;:null,&quot;Title&quot;:&quot;&quot;}" ItemTemplateId="" ItemBodyTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Search/Item_CommonItem_Body.js" ResultTypeId="" SelectedPropertiesJson="null" HitHighlightedPropertiesJson="[&quot;Title&quot;,&quot;Path&quot;,&quot;Author&quot;,&quot;SectionNames&quot;,&quot;SiteDescription&quot;]" AvailableSortsJson="[{&quot;name&quot;:&quot;Relevance&quot;,&quot;sorts&quot;:[]},{&quot;name&quot;:&quot;Date(Newest)&quot;,&quot;sorts&quot;:[{&quot;p&quot;:&quot;Write&quot;,&quot;d&quot;:1}]},{&quot;name&quot;:&quot;Date(Oldest)&quot;,&quot;sorts&quot;:[{&quot;p&quot;:&quot;Write&quot;,&quot;d&quot;:0}]},{&quot;name&quot;:&quot;Lifetime Views&quot;,&quot;sorts&quot;:[{&quot;p&quot;:&quot;ViewsLifeTime&quot;,&quot;d&quot;:1}]},{&quot;name&quot;:&quot;Recent Views&quot;,&quot;sorts&quot;:[{&quot;p&quot;:&quot;ViewsRecent&quot;,&quot;d&quot;:1}]}]" ShowLanguageOptions="False" ShowAdvancedLink="False" ShowPreferencesLink="False" PreloadedItemTemplateIdsJson="[&quot;~sitecollection/_catalogs/masterpage/Display Templates/Search/Group_Default.js&quot;,&quot;~sitecollection/_catalogs/masterpage/Display Templates/Search/Item_Default.js&quot;,&quot;~sitecollection/_catalogs/masterpage/Display Templates/Search/Item_Site.js&quot;,&quot;~sitecollection/_catalogs/masterpage/Display Templates/Search/Item_Word.js&quot;,&quot;~sitecollection/_catalogs/masterpage/Display Templates/Search/Item_PowerPoint.js&quot;,&quot;~sitecollection/_catalogs/masterpage/Display Templates/Search/Item_Person_CompactHorizontal.js&quot;,&quot;~sitecollection/_catalogs/masterpage/Display Templates/Search/Item_BestBet.js&quot;,&quot;~sitecollection/_catalogs/masterpage/Display Templates/Search/Item_WebPage.js&quot;]" ShowAlertMe="False" QueryGroupName="Default" RenderTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Search/Control_SearchResults.js" StatesJson="{}" ServerIncludeScriptsJson="null" Title="Search Results" FrameType="None" SuppressWebPartChrome="False" Description="Displays the search results and the properties associated with them." IsIncluded="True" ZoneID="MainZone" PartOrder="2" FrameState="Normal" AllowRemove="True" AllowZoneChange="True" AllowMinimize="True" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" DetailLink="" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="" IsIncludedFilter="" ExportControlledProperties="True" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_1a5ad074_6a27_4d88_a172_e0f9727e1161" ChromeType="None" ExportMode="All" __MarkupType="vsattributemarkup" __WebPartId="{1A5AD074-6A27-4D88-A172-E0F9727E1161}" WebPart="true" Height="" Width=""></spsswc:ResultScriptWebPart>

		</ZoneTemplate></WebPartPages:WebPartZone>
    </div> 

</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderSearchArea" runat="server">
	<SharePoint:DelegateControl runat="server"
		ControlId="SmallSearchInputBox"/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageDescription" runat="server">
	<SharePoint:ProjectProperty Property="Description" runat="server"/>
</asp:Content>