<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>RSVPForm</title>
</head>
<body>
<h1>RSVP</h1>
    <%= Html.ValidationSummary() %>
    <% using (Html.BeginForm()) { %>
      <p>Your Name: <%= Html.TextBox("Name")%></p>
      <p>Your Email: <%= Html.TextBox("EMail")%></p>
      <p>Your Phone: <%= Html.TextBox("Phone")%></p>
          <p>
          Will you attend?
          <%= Html.DropDownList("willattend", new[]{
                new SelectListItem{Text = "Yas",Value = bool.TrueString},
                new SelectListItem{Text = "No", Value = bool.FalseString}
                }, "Chouse an options")%>
          </p>
          <input type="submit" value= "Sumbite RSVP" />
     <%} %>
</body>
</html>
