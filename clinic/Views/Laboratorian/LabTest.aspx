<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Laboratorian/LaboratorianMaster.Master" AutoEventWireup="true" CodeBehind="LabTest.aspx.cs" Inherits="clinic.Views.Laboratorian.LabTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <body>
        <div class="container mt-3" style="width: 40%; margin-left: 400px;">

            <h1>Lab Test Details</h1>
            <form>
                <div class="mb-3 mt-3">

                    <asp:Label ID="Label1" runat="server" Text="Test Name:"></asp:Label>
                    <asp:TextBox ID="test_name" runat="server" Style="border: 1px solid black; background-color: lightblue;" required="required"></asp:TextBox>


                </div>

                <div class="mb-3">
                    <asp:Label ID="Label4" runat="server" Text="Test cost:"></asp:Label>
                    <asp:TextBox ID="test_cost" runat="server" Style="border: 1px solid black; background-color: lightblue;" required="required"></asp:TextBox>


                </div>
            </form>
            <center>
                <div class="mb-3">
                    <asp:Button ID="EditButton" runat="server" Text="Edit" class="btn btn-warning" OnClick="EditButton_Click" />
                    <asp:Button ID="Savebutton" runat="server" Text="Save" class="btn btn-success" OnClick="SaveButton_Click" />
                    <asp:Button ID="DeleteButton" runat="server" Text="Delete" class="btn btn-danger" OnClick="DeleteButton_Click" /><br /><br />

                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>

                </div>
            </center>
        </div>

    </body>
</asp:Content>
