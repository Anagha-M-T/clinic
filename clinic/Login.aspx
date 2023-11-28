<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="clinic.Views.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Libs/bootstrap/css/bootstrap.min.css" />

</head>
<body style="background-image: url(../../Assets/Images/patients.jpg);background-repeat: no-repeat;background-size: cover;">
     
    <form id="form1" runat="server" autocomplete="off">   
        <h1 style="margin-top:80px; text-align: center;color: midnightblue;">Health Care Clinic</h1><br />
         
    <div class="aaa" style="margin-left: 612px;">
        <div class="" >
           
        <asp:label runat="server" for="username" ID="L">username</asp:label><br />
        <asp:textbox runat="server"  type="username" id="username" name="username" placeholder="username" autocomplete="off" style="width:100px;  border: 2px solid black;  border-radius: 10px; width: 250px; margin-top: 20px;"/>
        </div>
        <div class="mb-3">
            <asp:label runat="server" for="password" ID="p">Password:</asp:label><br />
            <asp:textbox runat="server" type="password" id="pswd" name="password" placeholder="password" autocomplete="off" style="width:100px;  border: 2px solid black;  border-radius: 10px; width: 250px; margin-top: 20px;"/>
        </div>
   
        <div>
             <asp:label runat="server" for="role">Select Role:</asp:label>
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
                <asp:ListItem >Select Role</asp:ListItem>
                <asp:ListItem>Admin</asp:ListItem>
                <asp:ListItem>Doctor</asp:ListItem>
                <asp:ListItem>Receptionist</asp:ListItem>
                <asp:ListItem>Laboratorian</asp:ListItem>
            </asp:DropDownList>
        </div>
        <br />
       
        <div class="mb-3" style="margin-left:80px">
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" style="width:100px;  border: 2px solid black;  border-radius: 10px; width: 150px; margin-top: 20px;"/>
            
        </div>
            </div>
        
    </form>
   
</body>
</html>
