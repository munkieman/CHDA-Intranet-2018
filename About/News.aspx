<%-- **************************************************
     Site   	: About
     Page   	: News
     Author 	: Jason Clark
     Date   	: April 2017
     Modified By:
     Date		:
     Notes		:
     ************************************************** --%>

<%@ Page Language="C#" masterpagefile="~masterurl/custom.master" title="Untitled 2" inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document" meta:webpartpageexpansion="full" %>
<%@ Register tagprefix="SharePoint" namespace="Microsoft.SharePoint.WebControls" assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="PlaceHolderAdditionalPageHead">
	<!-- SCRIPTS -->
    <script type="text/javascript" src="/Style Library/scripts/jquery.min.js"></script>
    <script type="text/javascript" src="/Style Library/scripts/jquery.SPServices.min.js"></script>
    <script type="text/javascript" src="/Style Library/scripts/siteLinks.js"></script>
	<script type="text/javascript" src="/Style Library/scripts/siteContacts.js"></script>
    <script type="text/javascript" src="/Style Library/scripts/siteLogo.js"></script>
	<script type="text/javascript" src="/Style Library/scripts/siteNews.js"></script>

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
	<SharePoint:ProjectProperty Property="Title" runat="server"/></a> &gt; News  
</asp:Content>

<%-- *** Page Logo --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageLogo" runat="server">	
	<?xml version="1.0" encoding="utf-8"?>
    <div id="siteLogo"></div>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">

	<!-- SCRIPTS -->
	<script type="text/javascript">
        $("#zz1_TopNavigationMenu ul li:nth-child(6)").removeClass("selected");
        $("#zz1_TopNavigationMenu ul li:nth-child(4)").removeClass("selected");
	</script>
	
	<div class="ms-core-tableNoSpace ms-webpartPage-root" id="_invisibleIfEmpty" name="_invisibleIfEmpty">
    	<div class="container-fluid content">     	    
	    	<div class="row rowMain">
	    	
	    		<!-- ************************ -->
				<!-- ***** Left Section ***** -->
				<!-- ************************ -->
	    		<div class="col-lg-10 col-md-10 col-sm-10 text-justify pageLeftContainer">
	    			<ul class="nav nav-pills newsTabs">
		                <li class="active"><a onclick="clearDetails()" data-toggle="pill" href="#tab1">
						Current News</a></li>
		                <li><a onclick="clearDetails()" data-toggle="pill" href="#tab2">
						Archive</a></li>
		            </ul>

		            <div class="tab-content newsMastContainer">
		                <div id="tab1" class="tab-pane fade in active">
		                    <div id="newsMastCurrent"></div>             
		                </div>
		                <div id="tab2" class="tab-pane fade">
		                    <div id="newsMastArchive"></div>                                                    	                   
		                </div>
		            </div>
		            <div class="newsDetailContainer">
		                <div id="newsDetail"></div> 
		            </div>
	        	</div> <!-- end left section -->   	

				<!-- ************************* -->
				<!-- ***** Right Section ***** -->
				<!-- ************************* -->
                <div class="col-sm-2 col-md-2 col-lg-2 text-justify pageRightContainer">
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
			</div> <!-- Row Main End --> 
		</div> <!-- Main Container End -->
	</div> <!-- SP Table Container End -->

    <script type="text/javascript">

        if (typeof (MSOLayout_MakeInvisibleIfEmpty) == "function") {
            MSOLayout_MakeInvisibleIfEmpty();
        };

        var siteURL = _spPageContextInfo.webAbsoluteUrl;
        var siteName;
        var siteTitle;
        var teamMetaID;

        if (typeof (MSOLayout_MakeInvisibleIfEmpty) == "function") {
            MSOLayout_MakeInvisibleIfEmpty();
        };

        $(function () {

            $.ajax({
                url: siteURL + "/_api/web/title",
                method: "GET",
                headers: { "Accept": "application/json; odata=verbose" },
                success: function (data) {
                    siteTitle = data.d.Title;
                    siteName = siteURL.split('co.uk/')[1];

                    //teamMetaID = getTeamID(siteTitle);                    
                    getLogo(siteTitle);
                    getLinkData(siteTitle);

                    $('#pageTitle').append('<a class="siteTitle" href="/about/sitepages/home.aspx"><SharePoint:ProjectProperty Property="Title" runat="server" __designer:Preview="About Us" __designer:Values="&lt;P N=&#39;Property&#39; T=&#39;Title&#39; /&gt;&lt;P N=&#39;InDesign&#39; T=&#39;False&#39; /&gt;&lt;P N=&#39;ID&#39; ID=&#39;1&#39; T=&#39;ctl02&#39; /&gt;&lt;P N=&#39;Page&#39; ID=&#39;2&#39; /&gt;&lt;P N=&#39;TemplateControl&#39; R=&#39;2&#39; /&gt;&lt;P N=&#39;AppRelativeTemplateSourceDirectory&#39; R=&#39;-1&#39; /&gt;"/></a> > News');
                    getNewsItems(siteTitle);
                },
                error: function (data) {
                    alert("Error: " + data);
                }
            });
        });

    </script>

</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderSearchArea" runat="server">
	<SharePoint:DelegateControl runat="server"
		ControlId="SmallSearchInputBox"/>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderPageDescription" runat="server">
	<SharePoint:ProjectProperty Property="Description" runat="server"/>
</asp:Content>