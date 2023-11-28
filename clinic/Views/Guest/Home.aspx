<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="clinic.Views.Guest.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../../Libs/bootstrap/css/bootstrap.min.css" />
</head>
<body>
    <!--<form id="form1" runat="server">
        <div>
        </div>
    </form>-->
     <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="#" style="color: blue"><b>Clinic</b></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Contact.aspx" style="color: blue">Contact Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Feedback.aspx" style="color: blue">Feedback</a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="container-fluid" style="background-image:url(../../Assets/Images/young.jpg); background-repeat:no-repeat;background-size:cover;height:520px">
       <div class="container-fluid " style="padding-top:90px">
            <h1>Making Health Care<br /> Better Together</h1>
        <p>Quality improvement is the framework used to systematically improve care. <br />Quality improvement seeks to standardize processes and structure to reduce variation, <br />achieve predictable results, and improve outcomes for patients, healthcare systems,<br /> and organizations.</p>
       </div>
 
        <div class="row bg-primary" style="padding:6px; text-align:center">
            <div class="col bg-white" style="border:1px solid black; margin:20px" >
                <h5>Surgery</h5>
                <p>surgery, branch of medicine that is concerned with the treatment of injuries, diseases, and other disorders by manual and instrumental means</p>
            </div>
            <div class="col bg-white"  style="border:1px solid black; margin:20px">
                <h5>Urology</h5>
                <p>Urology is a part of health care that deals with diseases of the male and female urinary tract (kidneys, ureters, bladder and urethra).</p>
            </div>
            <div class="col bg-white"  style="border:1px solid black; margin:20px">
                <h5>Ophthalmology</h5>
                <p>Ophthalmology is a surgical subspecialty within medicine that deals with the diagnosis and treatment of eye disorders. A former term is oculism.</p>
            </div>
        </div>
    </div>
</body>
</html>
