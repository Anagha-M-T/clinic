<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="clinic.Views.Guest.Feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image:url(../../Assets/Images/360.jpg);background-repeat:no-repeat;background-size:cover">
    <center>
    <h1 style="margin-top:150px;color:blue">Feedback</h1>
    <form id="form1" runat="server">
        <div style="text-align:center;font-size:20px">
            <asp:Label ID="Label1" runat="server" Text="Enter your feedback here:"></asp:Label><br /><br />
         
            <asp:TextBox ID="feedback" runat="server" height="50px"></asp:TextBox><br /><br />
            <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="lightblue" Font-Bold="true" OnClick="Button1_Click"/>
            
        </div>
    </form>
        </center>
</body>
</html>
