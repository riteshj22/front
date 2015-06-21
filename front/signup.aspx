<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="front.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

</head>
<body>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-2.1.4.min.js"></script>
    <form id="form1" runat="server">
    <div class=" container">
        <div class="jumbotron">
            <h2>Singup</h2>
    </div>
       
     
        <div>
				<span><label>Firstname</label></span>
				<span><asp:TextBox ID="TextBox5" placeholder="enter firstname" runat="server" class="form-control"></asp:TextBox></span>
	    </div>
        <div>
				<span><label>Lasttname</label></span>
				<span><asp:TextBox ID="TextBox6" placeholder="enter lastname" runat="server" class="form-control"></asp:TextBox></span>
	    </div>

        <div>
		    <span><label>Email-id</label></span>
          		<span><asp:TextBox ID="TextBox1" placeholder="enter email-id" runat="server" class="form-control"></asp:TextBox></span>

        </div>

        


		<div>
				<span><label>Password</label></span>
				<span> <asp:TextBox ID="TextBox2" placeholder="enter password" runat="server" class="form-control" Type="password"></asp:TextBox></span>
	    </div>	
        
         <div>
		    <span><label>Phone</label></span>
          		<span><asp:TextBox ID="TextBox3" placeholder="enter phone" runat="server" class="form-control"></asp:TextBox></span>

        </div>	
         <div>
		    <span><label>Date-of-Birth</label></span>
          		<span><asp:TextBox ID="TextBox4" placeholder="enter date-of-birth" runat="server" class="form-control"></asp:TextBox></span>

        </div>

        <div>
		    <span><label>Gender</label></span>
          		<span><asp:TextBox ID="TextBox7" placeholder="enter gender" runat="server" class="form-control"></asp:TextBox></span>

        </div>



           <div>
				<span><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Signup" class="button" /></span>
		 </div>	
        
            </div><!--container-->
            
            
            
         
    </form>
</body>
</html>
