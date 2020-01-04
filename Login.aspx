<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HotelOccupancy2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>
    <webopt:bundlereference runat="server" path="~/Content/css" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-sm-6" style="text-align:center">
                <h2>Puri Police</h2>
                <h3>Hotel Occupancy Details</h3>
                <p>An initiative to ensure safty and security of tourists.</p>
            </div>
            
            <div class="col-sm-6">
                <div class="form">
                    <div class="form-group">
                        <label for="username">User Name</label>
                        <asp:TextBox ID="username" CssClass="form-control" runat="server" placeholder="Username"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="*" CssClass="text-danger" ControlToValidate="username"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <asp:TextBox ID="password" CssClass="form-control" runat="server" TextMode="Password" placeholder="********"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="*" CssClass="text-danger" ControlToValidate="password"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:CheckBox ID="RemeberMe" runat="server" Text="Remember Me" />
                    </div>
                    <div class="form-group">
                        <asp:Button ID="Submit" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="Submit_Click" />
                    </div>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
