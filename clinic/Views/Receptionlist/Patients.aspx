<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Receptionlist/ReceptionistMaster.Master" AutoEventWireup="true" CodeBehind="Patients.aspx.cs" Inherits="clinic.Views.Receptionlist.Patients" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container mt-3" style="width:40%; margin-left:400px;">

        <h1>Patients Details</h1>
        <form>
            <div class="mb-3 mt-3" >
             
                <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                    <asp:TextBox ID="pat_name" runat="server" Style="border: 1px solid black; background-color: lightblue;" required="required"></asp:TextBox>


            </div>

             <div class="mb-3">
                <asp:Label ID="Label4" runat="server" Text="Phone no:"></asp:Label>
                    <asp:TextBox ID="pat_phone" runat="server" Style="border: 1px solid black; background-color: lightblue;"  required="required"></asp:TextBox>

                
            </div>
                  <div class="mb-3">
                      <asp:Label ID="Label2" runat="server" Text="Date of birth:"></asp:Label>
                    <asp:TextBox ID="pat_dob" runat="server" Style="border: 1px solid black; background-color: lightblue;"  required="required"></asp:TextBox>

                
            </div>

            
                <div class="mb-3">
                    <asp:Label ID="Label5" runat="server" Text="Address:"></asp:Label>
                    <asp:TextBox ID="pat_addr" runat="server" Style="border: 1px solid black; background-color: lightblue;"  required="required"></asp:TextBox>

            </div>
                <div class="mb-3">
                    <asp:Label ID="Label3" runat="server" Text="Allergies:"></asp:Label>
                    <asp:TextBox ID="pat_allergies" runat="server" Style="border: 1px solid black; background-color: lightblue;"  required="required"></asp:TextBox>

               
            </div>
            
            <div class="mb-3">
                <asp:Label ID="pat_gen" runat="server" Text="Gender:"></asp:Label><br />
                <asp:RadioButton ID="male" runat="server" />
                <asp:Label ID="mal" runat="server" Text="Male:"></asp:Label>
                <asp:RadioButton ID="female" runat="server" />
                <asp:Label ID="femal" runat="server" Text="Female:"></asp:Label><br />

            </div>
            <center>
            <div class="mb-3">
           <asp:Button ID="EditButton" runat="server" Text="Edit" class="btn btn-warning" OnClick="EditButton_Click"  />
            <asp:Button ID="Savebutton" runat="server" Text="Save" class="btn btn-success" OnClick="SaveButton_Click" />
          <asp:Button ID="DeleteButton" runat="server" Text="Delete" class="btn btn-danger" OnClick="DeleteButton_Click"  />

            </div>
           </center>
        </form>
        
        <div>
            <div class="row">
                <div class="col">
                    <h1>Patients Detail</h1>
                    
                </div>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
