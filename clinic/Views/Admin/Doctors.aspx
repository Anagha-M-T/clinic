<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Doctors.aspx.cs" Inherits="clinic.Views.Admin.Doctors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
   

    <body >
        <div class="container-fluid" style="width: 100%;background-image:url(../../Assets/Images/360.jpg); background-repeat:no-repeat;background-size:cover;height:620px"">

            <h1 style="text-align:center;">Doctor Details</h1>
            <form>
                <div>
                <div class="mb-3 mt-3" style="margin-left:540px">
                    <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                    <asp:TextBox ID="doc_name" runat="server" Style="border: 1px solid black; background-color: lightblue;" required="required"></asp:TextBox>

                </div>
                <div class="mb-3" style="margin-left:515px">
                    <asp:Label ID="Label4" runat="server" Text="Phone no:"></asp:Label>
                    <asp:TextBox ID="doc_phone" runat="server" Style="border: 1px solid black; background-color: lightblue;" required="required"></asp:TextBox>

                </div>
                <div class="mb-3" style="margin-left:506px">
                    <asp:Label ID="Label2" runat="server" Text="Experience:" ></asp:Label>
                    <asp:TextBox ID="doc_exp" runat="server" Style="border: 1px solid black; background-color: lightblue;" required="required"></asp:TextBox>

                </div>
                <div class="mb-3" style="margin-left:486px">
                    <asp:Label ID="Label3" runat="server" Text=" Specialisation:"></asp:Label>
                    <asp:TextBox ID="doc_spec" runat="server" Style="border: 1px solid black; background-color: lightblue;" required="required"></asp:TextBox>

                </div>
                <div class="mb-3" style="margin-left:516px">
                    <asp:Label ID="Label5" runat="server" Text="Password:"></asp:Label>
                    <asp:TextBox ID="doc_password" runat="server" Style="border: 1px solid black; background-color: lightblue;" required="required"></asp:TextBox>

                </div>
           
                <div class="mb-3" style="margin-left:525px">
                    <asp:Label ID="Label6" runat="server" Text="Address:"></asp:Label>
                    <asp:TextBox ID="doc_addr" runat="server" Style="border: 1px solid black; background-color: lightblue;" required="required"></asp:TextBox>

                </div>
                <div class="mb-3"style="margin-left:493px">
                    <asp:Label ID="Label7" runat="server" Text="Date of Birth:"></asp:Label>
                    <asp:TextBox ID="doc_dob" runat="server" Style="border: 1px solid black; background-color: lightblue;" required="required"></asp:TextBox>
                </div>
                         <div class="mb-3" style="margin-left:533px">
                    <asp:Label ID="doc_gen" runat="server" Text="Gender:"></asp:Label>
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
                    </div>
            </form>

            <div>

                <div class="row" >

                    <div class="col" style="margin-left:215px">
                        <h1 style="margin-left:320px">Doctors Detail  </h1>
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>


                    </div>
                </div>
            </div>
        </div>

    </body>
</asp:Content>
