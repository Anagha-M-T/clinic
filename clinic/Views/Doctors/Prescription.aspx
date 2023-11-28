<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Doctors/DoctorMaster.Master" AutoEventWireup="true" CodeBehind="Prescription.aspx.cs" Inherits="clinic.Views.Doctors.Prescription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <div class="container mt-3" style="width:40%; margin-left:400px;">

        <h1>Prescription Details</h1>
        <form>
            <div class="mb-3 mt-3" >
                <asp:Label ID="Label1" runat="server" Text="Doctor:"></asp:Label>
                    <asp:TextBox ID="doctor" runat="server" Style="border: 1px solid black; background-color: lightblue;" required="required"></asp:TextBox>


                
            </div>
                  <div class="mb-3">
                      <asp:Label ID="Label2" runat="server" Text="Patient:"></asp:Label>
                    <asp:TextBox ID="patient" runat="server" Style="border: 1px solid black; background-color: lightblue;"  required="required"></asp:TextBox>


                
            </div>
                <div class="mb-3">
                    <asp:Label ID="Label3" runat="server" Text="Medicines:"></asp:Label>
                    <asp:TextBox ID="medicines" runat="server" Style="border: 1px solid black; background-color: lightblue;"  required="required"></asp:TextBox>


               
            </div>
            <div class="mb-3">
                <asp:Label ID="Label4" runat="server" Text="Lab Test:"></asp:Label>
                    <asp:TextBox ID="labtest" runat="server" Style="border: 1px solid black; background-color: lightblue;"  required="required"></asp:TextBox>


                
            </div>
                <div class="mb-3">
                    <asp:Label ID="Label5" runat="server" Text="Cost:"></asp:Label>
                    <asp:TextBox ID="cost" runat="server" Style="border: 1px solid black; background-color: lightblue;"  required="required"></asp:TextBox>


            </div>
         
        
           
        
       
            <center>
            <div class="mb-3">
          
            <asp:Button ID="Savebutton" runat="server" Text="Save" class="btn btn-success" OnClick="Savebutton_Click" />
          

                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
          

            </div>
           </center>
        </form>
        
        <div>
            <div class="row">
                <div class="col">
                    <h1>Prescription Detail</h1>
                    
                </div>
               
            </div>
        </div>
    </div>
</asp:Content>
