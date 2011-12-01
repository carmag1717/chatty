<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<html>
    <head>

    </head>
        <body>
        <h1>Happy Birthday</h1>
            <p>
            <%=ViewData["greeting"] %> , Мы идём тусить!
            </p>
                <%= Html.ActionLink("RSVP now", "RSVPForm") %>
            
        </body>
</html>


