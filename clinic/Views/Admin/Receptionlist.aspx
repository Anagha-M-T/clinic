<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Receptionlist.aspx.cs" Inherits="clinic.Views.Admin.Receptionlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <body>

        <div class="container-fluid " style="background-image: url(../../Assets/Images/360.jpg); background-repeat: no-repeat; background-size: cover; height: 620px">

            <h1 style="text-align: center;">Receptionist Details</h1>
            <form>
                <div class="mb-3 mt-3" style="margin-left: 530px">
                    <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                    <asp:TextBox ID="rec_name" runat="server" Style="border: 1px solid black; background-color: lightblue;" required="required"></asp:TextBox>


                </div>
                <div class="mb-3" style="margin-left: 534px">
                    <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
                    <asp:TextBox ID="rec_email" runat="server" Style="border: 1px solid black; background-color: lightblue;" required="required"></asp:TextBox>


                </div>
                <div class="mb-3" style="margin-left: 506px">
                    <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
                    <asp:TextBox ID="rec_password" runat="server" Style="border: 1px solid black; background-color: lightblue;" required="required"></asp:TextBox>

                </div>
                <div class="mb-3" style="margin-left: 506px">
                    <asp:Label ID="Label4" runat="server" Text="Phone no:"></asp:Label>
                    <asp:TextBox ID="rec_phone" runat="server" Style="border: 1px solid black; background-color: lightblue;" required="required"></asp:TextBox>


                </div>
                <div class="mb-3" style="margin-left: 516px">
                    <asp:Label ID="Label5" runat="server" Text="Address:"></asp:Label>
                    <asp:TextBox ID="rec_addr" runat="server" Style="border: 1px solid black; background-color: lightblue;" required="required"></asp:TextBox>


                </div>
                <center>
                    <div class="mb-3">

                        <asp:Button ID="EditButton" runat="server" Text="Edit" class="btn btn-warning" OnClick="EditButton_Click" />
                        <asp:Button ID="Savebutton" runat="server" Text="Save" class="btn btn-success" OnClick="Savebutton_Click" />
                        <asp:Button ID="DeleteButton" runat="server" Text="Delete" class="btn btn-danger" OnClick="DeleteButton_Click" />

                    </div>
                </center>
            </form>
            <div>
                <div class="row">
                    <div class="col" style="margin-left: 350px">
                        <h1 style="margin-left: 130px">Receptionist Details</h1>
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>

    </body>
</asp:Content>
