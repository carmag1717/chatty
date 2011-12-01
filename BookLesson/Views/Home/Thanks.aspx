<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<BookLesson.Models.GuestResponse>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Thanks</title>
</head>
<body>
    <h1>Thank you, <%=Html.Encode(Model.Name) %></h1>
    <%if (Model.WillAttend == true)
      { %>
    its grate that you are comming.
    <%}
      else
      { %>
    Sory to heart you
    <% } %>
</body>
</html>
