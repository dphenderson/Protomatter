<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/Nav.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="CURRENTDATE" Src="~/Admin/Skins/currentdate.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/styles.ascx" %>

<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.UI.Skins" Assembly="DotNetNuke" %>

<div id="main">
  <!--[if lte IE 9]>
  <div id="header">
  <![endif]-->
  <!--[if !IE]> -->
  <header id="header">
  <!-- <![endif]-->
  <div class="breadcrumb">You are here: <dnn:Breadcrumb runat="server" Separator=" > " CssClass="breadcrumb-object" RootLevel="0" UseTitle="True" /> </div>
  <div class="currentdate"> <dnn:CurrentDate runat="server" CssClass="currentdate-object" /> </div>
  <div id="logo-box">
    <div class="logo"><dnn:LOGO runat="server" /></div>
    <div class="namepane" id="NamePane" runat="server"></div>
    <div class="datepane" id="DatePane" runat="server"></div>
    <div class="issuepane" id="IssuePane" runat="server"></div>
  </div>
    <!--[if lte IE 9]>
    <div id="nav">
    <![endif]-->
    <!--[if !IE]> -->
    <nav id="nav">
    <!-- <![endif]-->
      <dnn:NAV ProviderName="DNNMenuNavigationProvider" CSSControl="mainMenu" runat="server" IndicateChildren="false">
      <CustomAttributes>
      <dnn:CustomAttribute Name="RenderMode" Value="UnorderedList" />
      </CustomAttributes>
      </dnn:NAV>
    <!--[if lte IE 9]>
    </div>
    <![endif]-->
    <!--[if !IE]> -->
    </nav>
    <!-- <![endif]-->
  <!--[if lte IE 9]>
  </div>
  <![endif]-->
  <!--[if !IE]> -->
  </header>
  <!-- <![endif]-->
  <div class="matterContainer" id="ContentPane" runat="server">
  </div>
  <!--[if lte IE 9]>
  <div id="footer">
  <![endif]-->
  <!--[if !IE]> -->
  <footer id="footer">
  <!-- <![endif]-->
  <ul id="sitelinks">
    <li><dnn:PRIVACY runat="server" CssClass="sitelink-object" /></li>
    <li><dnn:TERMS runat="server" CssClass="sitelink-object" /></li>
    <li><dnn:USER runat="server" CssClass="sitelink-object" /></li>
    <li><dnn:LOGIN runat="server" CssClass="sitelink-object" /></li>
  </ul>
  <div id="copyrightnotice"><dnn:COPYRIGHT runat="server" /></div>
  <!--[if lte IE 9]>
  </div>
  <![endif]-->
  <!--[if !IE]> -->
  </footer>
  <!-- <![endif]-->
</div>

<dnn:Styles runat="server" ID="GoogFonts" Name="GF" StyleSheet="http://fonts.googleapis.com/css?family=Open+Sans:400italic,300italic,600italic,300,400,600" UseSkinPath="False" IsFirst="True" />
<dnn:Styles runat="server" ID="StylesIE9" Name="IE9" Condition="(gte IE 7)&(lte IE 9)" StyleSheet="ie.css" IsFirst="False" UseSkinPath="True"/>
<dnn:Styles runat="server" ID="StylesIE6" Name="IE6" Condition="lte IE 6" StyleSheet="ie6.css" IsFirst="False" UseSkinPath="True" />
