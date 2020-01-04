<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HotelOccupancy2._Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <hr />
    <div class="row">
        <div class="col-sm-2">
            <asp:CheckBox ID="isForigner" runat="server" AutoPostBack="true" Text="Is a forigner" OnCheckedChanged="isForigner_CheckedChanged" />
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">
            <label for="name">Name</label>
            <asp:TextBox ID="name" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="col-sm-4">
            <label for="fathersName">Father's Name</label>
            <asp:TextBox ID="fathersName" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="fathersName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="col-sm-4">
            <label for="address">Address</label>
            <asp:TextBox ID="address" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="address" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
            <div class="col-sm-4">
            <label for="country">Country</label>
            <asp:TextBox ID="country" runat="server" CssClass="form-control" AutoPostBack="true" OnTextChanged="state_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="country" InitialValue="Select State" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="col-sm-4">
            <label for="state">State</label>
            <asp:DropDownList ID="state" runat="server" CssClass="form-control" AutoPostBack="true" OnTextChanged="state_TextChanged"></asp:DropDownList>
            <asp:RequiredFieldValidator runat="server" ID="rfvState" ControlToValidate="State" InitialValue="Select State" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="col-sm-4">
            <label for="district">District</label>
            <asp:DropDownList ID="district" runat="server" CssClass="form-control"></asp:DropDownList>
            <asp:RequiredFieldValidator runat="server" ID="rfvDistrict" ControlToValidate="district" InitialValue="Select district" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="col-sm-4">
            <label for="pincode">Pincode</label>
            <asp:TextBox ID="pincode" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="rfvPincode" ControlToValidate="pincode" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="col-sm-4">
            <label for="mobile">Mobile</label>
            <asp:TextBox ID="mobile" runat="server" CssClass="form-control" TextMode="Number" MaxLength="13"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="mobile" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="col-sm-4">
            <label for="idCardType">Id Card Type</label>
            <asp:DropDownList ID="idCardType" runat="server" CssClass="form-control">
                <asp:ListItem>Aadhar</asp:ListItem>
                <asp:ListItem>Voter ID</asp:ListItem>
                <asp:ListItem>Driving License</asp:ListItem>
                <asp:ListItem>PAN Card</asp:ListItem>
                <asp:ListItem>Passport</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="idCardType" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="col-sm-4">
            <label for="idCardNo">Id Card Number</label>
            <asp:TextBox ID="idCardNo" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="idCardNo" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="col-sm-4">
            <label for="roomNo">Room Numbers</label>
            <asp:TextBox ID="roomNo" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="roomNo" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
         <div class="col-sm-4">
            <label for="checkDate">Check In Date</label>
            <asp:TextBox ID="checkDate" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="checkDate" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <ajax:CalendarExtender runat="server" TargetControlID="checkDate" Format="dd-MMM-yyyy" />
        </div>
          <div class="col-sm-4">
            <label for="duration">Duration (Days)</label>
            <asp:TextBox ID="duration" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="duration" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="col-sm-4">
            <label for="accompanies">Accompanies</label>
            <asp:TextBox ID="accompanies" runat="server" CssClass="form-control"></asp:TextBox>           
        </div>
           <div class="col-sm-4">
            <label for="photo">Photo</label>
            <asp:FileUpload ID="photo" runat="server" CssClass="form-control"></asp:FileUpload>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="photo" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="btnSubmit_Click" />
        </div>
    </div>

</asp:Content>
