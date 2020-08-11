<%-- **************************************************
     Site   : CHDA - ABOUT Our Industry
     Page   : Homepage
     Author : Jason Clark
     Date   : March 2016

     ************************************************** --%>

<%-- _lcid="1033" _version="15.0.4420" _dal="1" --%>
<%-- _LocalBinding --%>
<%@ Page language="C#" MasterPageFile="~masterurl/custom.master"    Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document"  %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- *** Change the browser tab / favourite page name --%>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
    CHDA Intranet | About
</asp:Content>

<%-- *** Change the displayed page name --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    About > Our Industry
    <%--<SharePoint:ListItemProperty Property="BaseName" maxlength="40" runat="server"/>--%>
</asp:Content>

<asp:Content ContentPlaceHolderID="PlaceHolderPageLogo" runat="server"><img class="pageLogo" src="/PublishingImages/aboutIcon.png" /></asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">

    <div class="ms-core-tableNoSpace ms-webpartPage-root" id="_invisibleIfEmpty" name="_invisibleIfEmpty">
        <div class="row rowMain">
	        <div class="col-sm-8 col-md-6 colMain text-justify" id="_invisibleIfEmpty" name="_invisibleIfEmpty" valign="top">
                <h2>Our Industry</h2>
                <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lacinia dignissim sollicitudin. Curabitur est est, feugiat in orci id, feugiat euismod felis. Morbi iaculis faucibus libero, a luctus neque pellentesque eget. Nulla vel faucibus lectus, sed rutrum turpis. Vestibulum ultrices lectus eu mauris pretium, id egestas lorem sagittis. Fusce gravida ex vitae dolor ultrices, luctus eleifend velit malesuada. Aliquam erat volutpat. Aliquam mollis libero nec tortor venenatis tempor. Integer suscipit mollis posuere. Donec odio dui, aliquet quis pharetra nec, bibendum non odio. Vestibulum fringilla, leo ac feugiat lobortis, risus nunc dapibus ligula, a rutrum risus sem ac massa. Fusce vel luctus erat. 
                </p>
                <p>
                Maecenas interdum laoreet mattis. Aenean suscipit sapien nec eros venenatis facilisis. Curabitur fermentum posuere nulla sed cursus. Ut placerat sapien posuere nibh pulvinar, laoreet suscipit lorem ultrices. Etiam id nisi magna. Pellentesque vel metus sit amet mi ornare porta sed sit amet lectus. Morbi sed libero enim. Integer condimentum turpis ac metus feugiat sagittis. Sed aliquam bibendum nunc, auctor vestibulum augue facilisis eget. Nulla id risus sed neque bibendum pretium in in ante. 
                </p>
			</div>

            <div class="col-sm-6 col-md-4 colMain" id="_invisibleIfEmpty" name="_invisibleIfEmpty" valign="top">			    
 
            </div>
             
            <div class="col-sm-2 col-md-2 colMain" id="_invisibleIfEmpty" name="_invisibleIfEmpty" valign="top">

            </div>
        </div> 
    </div> <!-- end metroContainer -->

    <SharePoint:ScriptBlock runat="server">
	    if(typeof(MSOLayout_MakeInvisibleIfEmpty) == "function") 				 
	    {
            MSOLayout_MakeInvisibleIfEmpty();
        }
    </SharePoint:ScriptBlock>
	
    <div class="ms-hide">
        <WebPartPages:WebPartZone runat="server" title="loc:TitleBar" id="TitleBar" AllowLayoutChange="false" AllowPersonalization="false" Style="display:none;">
            <ZoneTemplate></ZoneTemplate>
        </WebPartPages:WebPartZone>
    </div>

</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderSearchArea" runat="server">
	<SharePoint:DelegateControl runat="server"
		ControlId="SmallSearchInputBox"/>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderPageDescription" runat="server">
	<SharePoint:ProjectProperty Property="Description" runat="server"/>
</asp:Content>

