<%@ Page language="C#" MasterPageFile="~masterurl/default.master"    Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" meta:webpartpageexpansion="full" meta:progid="SharePoint.WebPartPage.Document"  %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
	<SharePoint:ListFormPageTitle runat="server"/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">
	<span class="die">
		<SharePoint:ListProperty Property="LinkTitle" runat="server" id="ID_LinkTitle"/>
	</span>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageImage" runat="server">
	<img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='1' alt="" />
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
<SharePoint:UIVersionedContent UIVersion="4" runat="server">
	<ContentTemplate>
	<div style="padding-left:5px"></div>
	</ContentTemplate>
</SharePoint:UIVersionedContent>

	<table class="ms-core-tableNoSpace" id="onetIDListForm">
	 <tr>
	  <td>
	 <WebPartPages:WebPartZone runat="server" FrameType="None" ID="Main" Title="loc:Main"><ZoneTemplate>
		<WebPartPages:DataFormWebPart runat="server" EnableOriginalValue="False" DisplayName="KeyContacts" ViewFlag="1048584" ViewContentTypeId="" Default="FALSE" ListUrl="" ListDisplayName="" ListName="{79622431-CF27-4382-9B92-43A19CD55EA2}" ListId="79622431-cf27-4382-9b92-43a19cd55ea2" PageType="PAGE_EDITFORM" PageSize="-1" UseSQLDataSourcePaging="True" DataSourceID="" ShowWithSampleData="False" AsyncRefresh="False" ManualRefresh="False" AutoRefresh="False" AutoRefreshInterval="60" NoDefaultStyle="TRUE" InitialAsyncDataFetch="False" Title="KeyContacts" FrameType="None" SuppressWebPartChrome="False" Description="" IsIncluded="True" PartOrder="2" FrameState="Normal" AllowRemove="True" AllowZoneChange="True" AllowMinimize="True" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" DetailLink="" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="" IsIncludedFilter="" ExportControlledProperties="True" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_a2e31af4_cddf_4331_a8ab_65f410cdcbe8" ChromeType="None" ExportMode="All" __MarkupType="vsattributemarkup" __WebPartId="{A2E31AF4-CDDF-4331-A8AB-65F410CDCBE8}" __AllowXSLTEditing="true" WebPart="true" Height="" Width=""><DataSources>
<SharePoint:SPDataSource runat="server" DataSourceMode="ListItem" SelectCommand="&lt;View&gt;&lt;Query&gt;&lt;Where&gt;&lt;Eq&gt;&lt;FieldRef Name=&quot;ContentType&quot;/&gt;&lt;Value Type=&quot;Text&quot;&gt;Item&lt;/Value&gt;&lt;/Eq&gt;&lt;/Where&gt;&lt;/Query&gt;&lt;/View&gt;" UseInternalName="True" UseServerDataFormat="True"><SelectParameters><WebPartPages:DataFormParameter ParameterKey="ListItemId" PropertyName="ParameterValues" DefaultValue="0" Name="ListItemId"></WebPartPages:DataFormParameter><WebPartPages:DataFormParameter ParameterKey="weburl" PropertyName="ParameterValues" DefaultValue="https://intranet.chda.maxuk.co.uk/about" Name="weburl"></WebPartPages:DataFormParameter><WebPartPages:DataFormParameter ParameterKey="ListID" PropertyName="ParameterValues" DefaultValue="{79622431-CF27-4382-9B92-43A19CD55EA2}" Name="ListID"></WebPartPages:DataFormParameter>
			</SelectParameters><UpdateParameters><WebPartPages:DataFormParameter ParameterKey="ListItemId" PropertyName="ParameterValues" DefaultValue="0" Name="ListItemId"></WebPartPages:DataFormParameter><WebPartPages:DataFormParameter ParameterKey="weburl" PropertyName="ParameterValues" DefaultValue="https://intranet.chda.maxuk.co.uk/about" Name="weburl"></WebPartPages:DataFormParameter><WebPartPages:DataFormParameter ParameterKey="ListID" PropertyName="ParameterValues" DefaultValue="{79622431-CF27-4382-9B92-43A19CD55EA2}" Name="ListID"></WebPartPages:DataFormParameter>
			</UpdateParameters><InsertParameters><WebPartPages:DataFormParameter ParameterKey="ListItemId" PropertyName="ParameterValues" DefaultValue="0" Name="ListItemId"></WebPartPages:DataFormParameter><WebPartPages:DataFormParameter ParameterKey="weburl" PropertyName="ParameterValues" DefaultValue="https://intranet.chda.maxuk.co.uk/about" Name="weburl"></WebPartPages:DataFormParameter><WebPartPages:DataFormParameter ParameterKey="ListID" PropertyName="ParameterValues" DefaultValue="{79622431-CF27-4382-9B92-43A19CD55EA2}" Name="ListID"></WebPartPages:DataFormParameter>
			</InsertParameters><DeleteParameters><WebPartPages:DataFormParameter ParameterKey="ListItemId" PropertyName="ParameterValues" DefaultValue="0" Name="ListItemId"></WebPartPages:DataFormParameter><WebPartPages:DataFormParameter ParameterKey="weburl" PropertyName="ParameterValues" DefaultValue="https://intranet.chda.maxuk.co.uk/about" Name="weburl"></WebPartPages:DataFormParameter><WebPartPages:DataFormParameter ParameterKey="ListID" PropertyName="ParameterValues" DefaultValue="{79622431-CF27-4382-9B92-43A19CD55EA2}" Name="ListID"></WebPartPages:DataFormParameter>
			</DeleteParameters>
</SharePoint:SPDataSource>
</DataSources>
<Xsl>

<xsl:stylesheet xmlns:x="http://www.w3.org/2001/XMLSchema" xmlns:dsp="http://schemas.microsoft.com/sharepoint/dsp" version="1.0" exclude-result-prefixes="xsl msxsl ddwrt" xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" xmlns:asp="http://schemas.microsoft.com/ASPNET/20" xmlns:__designer="http://schemas.microsoft.com/WebParts/v2/DataView/designer" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:SharePoint="Microsoft.SharePoint.WebControls" xmlns:ddwrt2="urn:frontpage:internal">
	<xsl:output method="html" indent="no"/>
	<xsl:decimal-format NaN=""/>
	<xsl:param name="dvt_apos">&apos;</xsl:param>
	<xsl:param name="ManualRefresh"></xsl:param>
	<xsl:variable name="dvt_1_automode">0</xsl:variable>
	<xsl:template match="/" xmlns:x="http://www.w3.org/2001/XMLSchema" xmlns:dsp="http://schemas.microsoft.com/sharepoint/dsp" xmlns:asp="http://schemas.microsoft.com/ASPNET/20" xmlns:__designer="http://schemas.microsoft.com/WebParts/v2/DataView/designer" xmlns:SharePoint="Microsoft.SharePoint.WebControls">
		<xsl:choose>
			<xsl:when test="($ManualRefresh = 'True')">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td valign="top">
							<xsl:call-template name="dvt_1"/>
						</td>
						<td width="1%" class="ms-vb" valign="top">
							<img src="/_layouts/15/images/staticrefresh.gif" id="ManualRefresh" border="0" onclick="javascript: {ddwrt:GenFireServerEvent('__cancel')}" alt="Click here to refresh the dataview."/>
						</td>
					</tr>
				</table>
			</xsl:when>
			<xsl:otherwise>
				<xsl:call-template name="dvt_1"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	<xsl:template name="dvt_1">
		<xsl:variable name="dvt_StyleName">ListForm</xsl:variable>
		<xsl:variable name="Rows" select="/dsQueryResponse/Rows/Row"/>
		<div>
			<span id="part1">
				<table border="0" width="100%">
					<xsl:call-template name="dvt_1.body">
						<xsl:with-param name="Rows" select="$Rows"/>
					</xsl:call-template>
				</table>
			</span>
			<SharePoint:AttachmentUpload runat="server" ControlMode="Edit"/>
			<SharePoint:ItemHiddenVersion runat="server" ControlMode="Edit"/>
		</div>
	</xsl:template>
	<xsl:template name="dvt_1.body">
		<xsl:param name="Rows"/>
		<!--<tr>
			<td class="ms-toolbar" nowrap="nowrap">
				<table>
					<tr>
						<td width="99%" class="ms-toolbar" nowrap="nowrap"><IMG SRC="/_layouts/15/images/blank.gif" width="1" height="18"/></td>
						<td class="ms-toolbar" nowrap="nowrap">
							<SharePoint:SaveButton runat="server" ControlMode="Edit" id="savebutton1"/>
						</td>
						<td class="ms-separator">&#160;</td>
						<td class="ms-toolbar" nowrap="nowrap" align="right">
							<SharePoint:GoBackButton runat="server" ControlMode="Edit" id="gobackbutton1"/>
						</td>
					</tr>
				</table>
			</td>
		</tr>-->
		<tr>
			<td class="ms-toolbar" nowrap="nowrap">
				<SharePoint:FormToolBar runat="server" ControlMode="Edit"/>
				<SharePoint:ItemValidationFailedMessage runat="server" ControlMode="Edit"/>
			</td>
		</tr>
		<xsl:for-each select="$Rows">
			<xsl:call-template name="dvt_1.rowedit"/>
		</xsl:for-each>
		<tr>
			<td class="ms-toolbar" nowrap="nowrap">
				<table>
					<tr>
						<td class="ms-descriptiontext" nowrap="nowrap">
							<SharePoint:CreatedModifiedInfo ControlMode="Edit" runat="server"/>
						</td>
						<td width="99%" class="ms-toolbar" nowrap="nowrap"><IMG SRC="/_layouts/15/images/blank.gif" width="1" height="18"/></td>
						<td class="ms-toolbar" nowrap="nowrap">
							<SharePoint:SaveButton runat="server" ControlMode="Edit" id="savebutton2"/>
						</td>
						<td class="ms-separator">&#160;</td>
						<td class="ms-toolbar" nowrap="nowrap" align="right">
							<SharePoint:GoBackButton runat="server" ControlMode="Edit" id="gobackbutton2"/>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</xsl:template>
	<xsl:template name="dvt_1.rowedit">
		<xsl:param name="Pos" select="position()"/>
		<tr>
			<td>
				<table border="0" cellspacing="0" width="100%">
					<tr>
						<td width="190px" valign="top" class="ms-formlabel">
							<H3 class="ms-standardheader">
								<nobr><span class="ms-formvalidation">*</span> Tab data is for : 
								</nobr>
							</H3>
						</td>
						<td width="400px" valign="top" class="ms-formbody">
							<div id="tabName">
								<SharePoint:FormField runat="server" id="FormField1" ControlMode="Edit" FieldName="Header" __designer:bind="{ddwrt:DataBind('u',concat('ff1',$Pos),'Value','ValueChanged','ID',ddwrt:EscapeDelims(string(@ID)),'@Header')}"/>
							</div>
							<SharePoint:FieldDescription runat="server" id="FieldDescription1" FieldName="Header" ControlMode="Edit"/>
						</td>
					</tr>
					<tr id="section" class="hidden">
						<td width="190px" valign="top" class="ms-formlabel">
							<H3 class="ms-standardheader">
								<nobr>Section : </nobr>
							</H3>
						</td>
						<td width="400px" valign="top" class="ms-formbody">
							<SharePoint:FormField runat="server" id="FormField2" ControlMode="Edit" FieldName="Section" __designer:bind="{ddwrt:DataBind('u',concat('ff2',$Pos),'Value','ValueChanged','ID',ddwrt:EscapeDelims(string(@ID)),'@Section')}"/>
							<SharePoint:FieldDescription runat="server" id="FieldDescription2" FieldName="Section" ControlMode="Edit"/>
						</td>
					</tr>
					<tr id="area" class="hidden">
						<td width="190px" valign="top" class="ms-formlabel">
							<H3 class="ms-standardheader">
								<nobr>Area : </nobr>
							</H3>
						</td>
						<td width="400px" valign="top" class="ms-formbody">
							<SharePoint:FormField runat="server" id="FormField3" ControlMode="Edit" FieldName="Area" __designer:bind="{ddwrt:DataBind('u',concat('ff3',$Pos),'Value','ValueChanged','ID',ddwrt:EscapeDelims(string(@ID)),'@Area')}"/>
							<SharePoint:FieldDescription runat="server" id="FieldDescription3" FieldName="Area" ControlMode="Edit"/>
						</td>
					</tr>
					<tr id="office" class="hidden">
						<td width="190px" valign="top" class="ms-formlabel">
							<H3 class="ms-standardheader">
								<nobr>Office : </nobr>
							</H3>
						</td>
						<td width="400px" valign="top" class="ms-formbody">
							<SharePoint:FormField runat="server" id="FormField4" ControlMode="Edit" FieldName="Office" __designer:bind="{ddwrt:DataBind('u',concat('ff4',$Pos),'Value','ValueChanged','ID',ddwrt:EscapeDelims(string(@ID)),'@Office')}"/>
							<SharePoint:FieldDescription runat="server" id="FieldDescription4" FieldName="Office" ControlMode="Edit"/>
						</td>
					</tr>
					<tr id="specialty" class="hidden">
						<td width="190px" valign="top" class="ms-formlabel">
							<H3 class="ms-standardheader">
								<nobr>Specialty : </nobr>
							</H3>
						</td>
						<td width="400px" valign="top" class="ms-formbody">
							<SharePoint:FormField runat="server" id="FormField5" ControlMode="Edit" FieldName="Specialty" __designer:bind="{ddwrt:DataBind('u',concat('ff5',$Pos),'Value','ValueChanged','ID',ddwrt:EscapeDelims(string(@ID)),'@Specialty')}"/>
							<SharePoint:FieldDescription runat="server" id="FieldDescription5" FieldName="Specialty" ControlMode="Edit"/>
						</td>
					</tr>
					<tr id="group" class="hidden">
						<td width="190px" valign="top" class="ms-formlabel">
							<H3 class="ms-standardheader">
								<nobr>Group : </nobr>
							</H3>
						</td>
						<td width="400px" valign="top" class="ms-formbody">
							<SharePoint:FormField runat="server" id="FormField6" ControlMode="Edit" FieldName="Group" __designer:bind="{ddwrt:DataBind('u',concat('ff6',$Pos),'Value','ValueChanged','ID',ddwrt:EscapeDelims(string(@ID)),'@Group')}"/>
							<SharePoint:FieldDescription runat="server" id="FieldDescription6" FieldName="Group" ControlMode="Edit"/>
						</td>
					</tr>
					<tr id="team" class="hidden">
						<td width="190px" valign="top" class="ms-formlabel">
							<H3 class="ms-standardheader">
								<nobr>Team : </nobr>
							</H3>
						</td>
						<td width="400px" valign="top" class="ms-formbody">
							<SharePoint:FormField runat="server" id="FormField7" ControlMode="Edit" FieldName="Team" __designer:bind="{ddwrt:DataBind('u',concat('ff7',$Pos),'Value','ValueChanged','ID',ddwrt:EscapeDelims(string(@ID)),'@Team')}"/>
							<SharePoint:FieldDescription runat="server" id="FieldDescription7" FieldName="Team" ControlMode="Edit"/>
						</td>
					</tr>
					<tr id="department" class="hidden">
						<td width="190px" valign="top" class="ms-formlabel">
							<H3 class="ms-standardheader">
								<nobr>Department : </nobr>
							</H3>
						</td>
						<td width="400px" valign="top" class="ms-formbody">
							<SharePoint:FormField runat="server" id="FormField8" ControlMode="Edit" FieldName="Department" __designer:bind="{ddwrt:DataBind('u',concat('ff8',$Pos),'Value','ValueChanged','ID',ddwrt:EscapeDelims(string(@ID)),'@Department')}"/>
							<SharePoint:FieldDescription runat="server" id="FieldDescription8" FieldName="Department" ControlMode="Edit"/>
						</td>
					</tr>
					<tr id="contact" class="hidden">
						<td width="190px" valign="top" class="ms-formlabel">
							<H3 class="ms-standardheader">
								<nobr>Contact : </nobr>
							</H3>
						</td>
						<td width="400px" valign="top" class="ms-formbody">
							<SharePoint:FormField runat="server" id="FormField9" ControlMode="Edit" FieldName="Contact" __designer:bind="{ddwrt:DataBind('u',concat('ff9',$Pos),'Value','ValueChanged','ID',ddwrt:EscapeDelims(string(@ID)),'@Contact')}"/>
							<SharePoint:FieldDescription runat="server" id="FieldDescription9" FieldName="Contact" ControlMode="Edit"/>
						</td>
					</tr>
					<tr id="jobtitle" class="hidden">
						<td width="190px" valign="top" class="ms-formlabel">
							<H3 class="ms-standardheader">
								<nobr>JobTitle : </nobr>
							</H3>
						</td>
						<td width="400px" valign="top" class="ms-formbody">
							<SharePoint:FormField runat="server" id="FormField10" ControlMode="Edit" FieldName="Job_x0020_Title" __designer:bind="{ddwrt:DataBind('u',concat('ff10',$Pos),'Value','ValueChanged','ID',ddwrt:EscapeDelims(string(@ID)),'@Job_x0020_Title')}"/>
							<SharePoint:FieldDescription runat="server" id="FieldDescription10" FieldName="Job_x0020_Title" ControlMode="Edit"/>
						</td>
					</tr>
					<tr id="phone" class="hidden">
						<td width="190px" valign="top" class="ms-formlabel">
							<H3 class="ms-standardheader">
								<nobr>Phone : </nobr>
							</H3>
						</td>
						<td width="400px" valign="top" class="ms-formbody">
							<SharePoint:FormField runat="server" id="FormField11" ControlMode="Edit" FieldName="Phone" __designer:bind="{ddwrt:DataBind('u',concat('ff11',$Pos),'Value','ValueChanged','ID',ddwrt:EscapeDelims(string(@ID)),'@Phone')}"/>
							<SharePoint:FieldDescription runat="server" id="FieldDescription11" FieldName="Phone" ControlMode="Edit"/>
						</td>
					</tr>
					<tr id="mobile" class="hidden">
						<td width="190px" valign="top" class="ms-formlabel">
							<H3 class="ms-standardheader">
								<nobr>Mobile : </nobr>
							</H3>
						</td>
						<td width="400px" valign="top" class="ms-formbody">
							<SharePoint:FormField runat="server" id="FormField12" ControlMode="Edit" FieldName="Mobile" __designer:bind="{ddwrt:DataBind('u',concat('ff12',$Pos),'Value','ValueChanged','ID',ddwrt:EscapeDelims(string(@ID)),'@Mobile')}"/>
							<SharePoint:FieldDescription runat="server" id="FieldDescription12" FieldName="Mobile" ControlMode="Edit"/>
						</td>
					</tr>
					<tr id="extension" class="hidden">
						<td width="190px" valign="top" class="ms-formlabel">
							<H3 class="ms-standardheader">
								<nobr>Extension : </nobr>
							</H3>
						</td>
						<td width="400px" valign="top" class="ms-formbody">
							<SharePoint:FormField runat="server" id="FormField13" ControlMode="Edit" FieldName="Extension" __designer:bind="{ddwrt:DataBind('u',concat('ff13',$Pos),'Value','ValueChanged','ID',ddwrt:EscapeDelims(string(@ID)),'@Extension')}"/>
							<SharePoint:FieldDescription runat="server" id="FieldDescription13" FieldName="Extension" ControlMode="Edit"/>
						</td>
					</tr>
					<tr id="email" class="hidden">
						<td width="190px" valign="top" class="ms-formlabel">
							<H3 class="ms-standardheader">
								<nobr>Email : </nobr>
							</H3>
						</td>
						<td width="400px" valign="top" class="ms-formbody">
							<SharePoint:FormField runat="server" id="FormField14" ControlMode="Edit" FieldName="Email" __designer:bind="{ddwrt:DataBind('u',concat('ff14',$Pos),'Value','ValueChanged','ID',ddwrt:EscapeDelims(string(@ID)),'@Email')}"/>
							<SharePoint:FieldDescription runat="server" id="FieldDescription14" FieldName="Email" ControlMode="Edit"/>
						</td>
					</tr>
					<tr id="title" class="hidden">
						<td width="190px" valign="top" class="ms-formlabel">
							<H3 class="ms-standardheader">
								<nobr>Title : </nobr>
							</H3>
						</td>
						<td width="400px" valign="top" class="ms-formbody">
							<SharePoint:FormField runat="server" id="FormField15" ControlMode="Edit" FieldName="Title" __designer:bind="{ddwrt:DataBind('u',concat('ff15',$Pos),'Value','ValueChanged','ID',ddwrt:EscapeDelims(string(@ID)),'@Title')}"/>
							<SharePoint:FieldDescription runat="server" id="FieldDescription15" FieldName="Title" ControlMode="Edit"/>
						</td>
					</tr>
					<tr id="location" class="hidden">
						<td width="190px" valign="top" class="ms-formlabel">
							<H3 class="ms-standardheader">
								<nobr>Location : </nobr>
							</H3>
						</td>
						<td width="400px" valign="top" class="ms-formbody">
							<SharePoint:FormField runat="server" id="FormField16" ControlMode="Edit" FieldName="Location" __designer:bind="{ddwrt:DataBind('u',concat('ff16',$Pos),'Value','ValueChanged','ID',ddwrt:EscapeDelims(string(@ID)),'@Location')}"/>
							<SharePoint:FieldDescription runat="server" id="FieldDescription16" FieldName="Location" ControlMode="Edit"/>
						</td>
					</tr>
					<tr id="googlemap" class="hidden">
						<td width="190px" valign="top" class="ms-formlabel">
							<H3 class="ms-standardheader">
								<nobr>GoogleMap : </nobr>
							</H3>
						</td>
						<td width="400px" valign="top" class="ms-formbody">
							<SharePoint:FormField runat="server" id="FormField17" ControlMode="Edit" FieldName="GoogleMapLink" __designer:bind="{ddwrt:DataBind('u',concat('ff17',$Pos),'Value','ValueChanged','ID',ddwrt:EscapeDelims(string(@ID)),'@GoogleMapLink')}"/>
							<SharePoint:FieldDescription runat="server" id="FieldDescription17" FieldName="GoogleMapLink" ControlMode="Edit"/>
						</td>
					</tr>
					<!--<tr>
						<td width="190px" valign="top" class="ms-formlabel">
							<H3 class="ms-standardheader">
								<nobr>Person or Group</nobr>
							</H3>
						</td>
						<td width="400px" valign="top" class="ms-formbody">
							<SharePoint:FormField runat="server" id="ff18{$Pos}" ControlMode="Edit" FieldName="sygt" __designer:bind="{ddwrt:DataBind('u',concat('ff18',$Pos),'Value','ValueChanged','ID',ddwrt:EscapeDelims(string(@ID)),'@sygt')}"/>
							<SharePoint:FieldDescription runat="server" id="ff18description{$Pos}" FieldName="sygt" ControlMode="Edit"/>
						</td>
					</tr>
					<tr id="idAttachmentsRow">
						<td nowrap="true" valign="top" class="ms-formlabel" width="20%">
							<SharePoint:FieldLabel ControlMode="Edit" FieldName="Attachments" runat="server"/>
						</td>
						<td valign="top" class="ms-formbody" width="80%">
							<SharePoint:FormField runat="server" id="AttachmentsField" ControlMode="Edit" FieldName="Attachments" __designer:bind="{ddwrt:DataBind('u','AttachmentsField','Value','ValueChanged','ID',ddwrt:EscapeDelims(string(@ID)),'@Attachments')}"/>
							<script>
          var elm = document.getElementById(&quot;idAttachmentsTable&quot;);
          if (elm == null || elm.rows.length == 0)
          document.getElementById(&quot;idAttachmentsRow&quot;).style.display=&apos;none&apos;;
        </script>
						</td>
					</tr>-->
					<xsl:if test="$dvt_1_automode = '1'" ddwrt:cf_ignore="1">
						<tr>
							<td colspan="99" class="ms-vb">
								<span ddwrt:amkeyfield="ID" ddwrt:amkeyvalue="ddwrt:EscapeDelims(string(@ID))" ddwrt:ammode="view"></span>
							</td>
						</tr>
					</xsl:if>
				</table>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>	</Xsl>
<DataFields>
</DataFields>
<ParameterBindings>
		 <ParameterBinding Name="ListItemId" Location="QueryString(ID)" DefaultValue="0"/>
		 <ParameterBinding Name="weburl" Location="None" DefaultValue="https://intranet.chda.maxuk.co.uk/about"/>
		 <ParameterBinding Name="ListID" Location="None" DefaultValue="{79622431-CF27-4382-9B92-43A19CD55EA2}"/>
		 <ParameterBinding Name="dvt_apos" Location="Postback;Connection"/>
		 <ParameterBinding Name="ManualRefresh" Location="WPProperty[ManualRefresh]"/>
		 <ParameterBinding Name="UserID" Location="CAMLVariable" DefaultValue="CurrentUserName"/>
		 <ParameterBinding Name="Today" Location="CAMLVariable" DefaultValue="CurrentDate"/>
	 </ParameterBindings>
</WebPartPages:DataFormWebPart>

		</ZoneTemplate></WebPartPages:WebPartZone>
	  </td>
	 </tr>
	</table>

	<script type="text/javascript">
        var tabSelect='';
			
        $('#tabName').change(function () {
            var selection = "";
            $("select option:selected").each(function () {
                selection += $(this).text() + "/";
            });
            tabSelect = selection.split('/')[0];       

			switch(tabSelect) {
				case 'MAXIMUS Shared Services':
				 	$('#team').removeClass('hidden');
				 	$('#phone').removeClass('hidden');
				 	$('#extension').removeClass('hidden');
				 	$('#email').removeClass('hidden');

					$('#section').addClass('hidden');
				 	$('#area').addClass('hidden');
				 	$('#office').addClass('hidden');
				 	$('#specialty').addClass('hidden');
				 	$('#group').addClass('hidden');
				 	$('#department').addClass('hidden');
				 	$('#mobile').addClass('hidden');
				 	$('#contact').addClass('hidden');
					$('#jobtitle').addClass('hidden');
				 	$('#location').addClass('hidden');
					$('#googlemap').addClass('hidden');					
					break;
					
				case 'Employee Representative Group':
				 	$('#area').removeClass('hidden');
				 	$('#office').removeClass('hidden');
				 	$('#specialty').removeClass('hidden');
				 	$('#contact').removeClass('hidden');
					$('#jobtitle').removeClass('hidden');
				 	$('#phone').removeClass('hidden');
				 	$('#email').removeClass('hidden');
				 	
				 	$('#section').addClass('hidden');
				 	$('#group').addClass('hidden');
					$('#team').addClass('hidden');
					$('#department').addClass('hidden');
					$('#mobile').addClass('hidden');
				 	$('#extension').addClass('hidden');				 	
				 	$('#location').addClass('hidden');
					$('#googlemap').addClass('hidden');					
					break;
				
				case 'Functional Champions': 
					$('#department').removeClass('hidden');
					$('#phone').removeClass('hidden');
				 	$('#email').removeClass('hidden');

				 	$('#area').addClass('hidden');
				 	$('#office').addClass('hidden');
				 	$('#specialty').addClass('hidden');
				 	$('#contact').addClass('hidden');
					$('#jobtitle').addClass('hidden');
				 	$('#section').addClass('hidden');
				 	$('#group').addClass('hidden');
					$('#team').addClass('hidden');
					$('#mobile').addClass('hidden');
				 	$('#extension').addClass('hidden');				
				 	$('#location').addClass('hidden');
					$('#googlemap').addClass('hidden');					
					break;	
				
				case 'Union Contacts': 
					$('#group').removeClass('hidden');
					$('#contact').removeClass('hidden');
					$('#email').removeClass('hidden');
					$('#specialty').removeClass('hidden');
					$('#jobtitle').removeClass('hidden');
					$('#office').removeClass('hidden');
					
					$('#section').addClass('hidden');
				 	$('#area').addClass('hidden');
				 	$('#phone').addClass('hidden');
					$('#team').addClass('hidden');
					$('#department').addClass('hidden');
					$('#mobile').addClass('hidden');
				 	$('#extension').addClass('hidden');	
				 	$('#location').addClass('hidden');
					$('#googlemap').addClass('hidden');					
					break;
					
				default:		
					$('#section').removeClass('hidden');
					$('#group').removeClass('hidden');
					$('#contact').removeClass('hidden');
					$('#phone').removeClass('hidden');
					$('#mobile').removeClass('hidden');
					$('#email').removeClass('hidden');
					$('#jobtitle').removeClass('hidden');
					$('#office').removeClass('hidden');
					$('#location').removeClass('hidden');
					$('#googlemap').removeClass('hidden');
					
					$('#area').addClass('hidden');
				 	$('#specialty').addClass('hidden');
					$('#team').addClass('hidden');
					$('#department').addClass('hidden');
				 	$('#extension').addClass('hidden');	
					break;
			};

        })
        .change();

	</script>
		
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
	<SharePoint:DelegateControl runat="server" ControlId="FormCustomRedirectControl" AllowMultipleControls="true"/>
	<SharePoint:UIVersionedContent UIVersion="4" runat="server"><ContentTemplate>
		<SharePoint:CssRegistration Name="forms.css" runat="server"/>
	</ContentTemplate></SharePoint:UIVersionedContent>

	<!-- SCRIPTS -->
    <script type="text/javascript" src="/Style Library/scripts/jquery.min.js"></script>
    <script type="text/javascript" src="/Style Library/scripts/jquery.SPServices.min.js"></script>

    <!-- STYLES -->
    <link type="text/css" rel="stylesheet" href="/_catalogs/masterpage/ShareBoot/css/bootstrap.css">
	<link type="text/css" rel="stylesheet" href="/Style Library/Styles/custom.css">	
	<style type="text/css">
    	#s4-ribbonrow { display: none!important; }
    	h3 {color:#545487; font-weight:bold!important; font-size:1.2em!important;float:right!important}
		/*.ms-ButtonHeightWidth{background-color:#545487!important;color:white!important;height:40px;}
		.ms-ButtonHeightWidth:hover{background-color: #ca5c28!important;text-shadow: 0 1px hsla(0, 0%, 100%, 0.5)!important;color: white;} */
		label{margin:5px 0 2px 5px!important}
	</style>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderTitleLeftBorder" runat="server">
<table cellpadding="0" height="100%" width="100%" cellspacing="0">
 <tr><td class="ms-areaseparatorleft"><img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='1' alt="" /></td></tr>
</table>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderTitleAreaClass" runat="server">
<script type="text/javascript" id="onetidPageTitleAreaFrameScript">
	if (document.getElementById("onetidPageTitleAreaFrame") != null)
	{
		document.getElementById("onetidPageTitleAreaFrame").className="ms-areaseparator";
	}
</script>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderBodyAreaClass" runat="server">
<SharePoint:StyleBlock runat="server">
.ms-bodyareaframe {
	padding: 8px;
	border: none;
}
</SharePoint:StyleBlock>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderBodyLeftBorder" runat="server">
<div class='ms-areaseparatorleft'><img src="/_layouts/15/images/blank.gif?rev=23" width='8' height='100%' alt="" /></div>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderTitleRightMargin" runat="server">
<div class='ms-areaseparatorright'><img src="/_layouts/15/images/blank.gif?rev=23" width='8' height='100%' alt="" /></div>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderBodyRightMargin" runat="server">
<div class='ms-areaseparatorright'><img src="/_layouts/15/images/blank.gif?rev=23" width='8' height='100%' alt="" /></div>
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderTitleAreaSeparator" runat="server"/>