<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%
    if (Request.IsAuthenticated) {
%>
        Добро пожаловать, <strong><%: Page.User.Identity.Name %></strong>!
        [ <%: Html.ActionLink("Выход", "LogOff", "Account") %> ]
<%
    }
    else {
%> 
        [ <%: Html.ActionLink("Вход", "LogOn", "Account") %> ]
<%
    }
%>
