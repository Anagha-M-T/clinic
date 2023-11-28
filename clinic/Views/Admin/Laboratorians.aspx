<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Laboratorians.aspx.cs" Inherits="clinic.Views.Admin.Laboratorians" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <body>

        <div class="container-fluid " style="background-image: url(../../Assets/Images/360.jpg); background-repeat: no-repeat; background-size: cover; height: 620px">

            <h1 style="text-align: center;">Laboratorian Details</h1>
            <form>
                <div class="mb-3 mt-3" style="margin-left: 532px">
                    <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                    <asp:TextBox ID="lab_name" runat="server" Style="border: 1px solid black; background-color: lightblue;" required="required"></asp:TextBox>



                </div>
                <div class="mb-3" style="margin-left: 536px">
                    <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
                    <asp:TextBox ID="lab_email" runat="server" Style="border: 1px solid black; background-color: lightblue;" required="required"></asp:TextBox>



                </div>
                <div class="mb-3" style="margin-left: 508px">
                    <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
                    <asp:TextBox ID="lab_password" runat="server" Style="border: 1px solid black; background-color: lightblue;" required="required"></asp:TextBox>



                </div>
                <div class="mb-3" style="margin-left: 507px">
                    <asp:Label ID="Label4" runat="server" Text="Phone no:"></asp:Label>
                    <asp:TextBox ID="lab_phone" runat="server" Style="border: 1px solid black; background-color: lightblue;" required="required"></asp:TextBox>



                </div>
                <div class="mb-3" style="margin-left: 517px">
                    <asp:Label ID="Label5" runat="server" Text="Address:"></asp:Label>
                    <asp:TextBox ID="lab_aadr" runat="server" Style="border: 1px solid black; background-color: lightblue;" required="required"></asp:TextBox>


                </div>

                <div class="mb-3" style="margin-left: 526px">
                    <asp:Label ID="gender" runat="server" Text="Gender:"></asp:Label>
                    <asp:RadioButton ID="male" runat="server" GroupName="genderGroup" />
                    <asp:Label ID="mal" runat="server" Text="Male"></asp:Label>
                    <asp:RadioButton ID="female" runat="server" GroupName="genderGroup" />
                    <asp:Label ID="femal" runat="server" Text="Female"></asp:Label><br />

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
                    <div class="col" style="margin-left:383px">
                        <h1 style="margin-left:98px">Laboratorian Details</h1>
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>

    </body>
</asp:Content>
