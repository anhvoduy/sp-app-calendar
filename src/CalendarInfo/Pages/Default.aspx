﻿<%-- The following 4 lines are ASP.NET directives needed when using SharePoint components --%>

<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" %>

<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- The markup and script in the following Content element will be placed in the <head> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <!-- Add your JS library to the following file -->
    <script type="text/javascript" src="../Content/jquery/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="../Content/angularjs/angular.min.js"></script>
    <script type="text/javascript" src="../Content/moment/moment.min.js"></script>
    <script type="text/javascript" src="../Content/fullcalendar/js/fullcalendar.min.js"></script>    

    <SharePoint:ScriptLink name="sp.js" runat="server" OnDemand="true" LoadAfterUI="true" Localizable="false" />
    <meta name="WebPartPageExpansion" content="full" />

    <!-- Add your css to the following file -->
    <link rel="Stylesheet" type="text/css" href="../Content/fullcalendar/css/fullcalendar.min.css" />
    <link rel="Stylesheet" type="text/css" href="../Content/fullcalendar/css/fullcalendar.print.min.css" media='print'/>
    <link rel="Stylesheet" type="text/css" href="../Content/App.css" />
   
    <!-- Add your javascript to the following file -->
    <script type="text/javascript" src="../Scripts/App.js"></script>    
    <script type="text/javascript" src="../Scripts/calendarController.js"></script>
    <script type="text/javascript" src="../Scripts/calendarDirective.js"></script>
    <script type="text/javascript" src="../Scripts/calendarService.js"></script>    
</asp:Content>

<%-- The markup in the following Content element will be placed in the TitleArea of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    SharePoint App Calendar
</asp:Content>

<%-- The markup and script in the following Content element will be placed in the <body> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">    
    <div id='calendar'></div>
</asp:Content>
