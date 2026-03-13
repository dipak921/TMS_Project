<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Student_Signup.aspx.cs" Inherits="TMS_Project.Student_Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />

    <div class="container" style="box-shadow: -2px 2px 29px 1px rgba(0,0,0,0.75);
-webkit-box-shadow: -2px 2px 29px 1px rgba(0,0,0,0.75);
-moz-box-shadow: -2px 2px 29px 1px rgba(0,0,0,0.75);">
        <br />
        <div class="row">
            <div class="col-md-12">

            <h1 class="jumbotron bg-primary text-white text-center">Student SignUp</h1>
              
            </div>
      

            <div class="col-md-4">
                <asp:TextBox ID="NameTextBox" CssClass="form-control" placeholder="Enter Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="FatherNameTextBox" CssClass="form-control" placeholder="Enter Father Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="FatherNameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Father Name is Required"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="SurNameTextBox" CssClass="form-control" placeholder="Enter Sur Name" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ControlToValidate="SurNameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Sur Name is Required"></asp:RequiredFieldValidator>
                <br />

                <asp:DropDownList ID="GenderDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
               <asp:RequiredFieldValidator InitialValue="Select Gender" ControlToValidate="GenderDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Gender is Required"></asp:RequiredFieldValidator>

                <br />

               <asp:TextBox ID="AgeTextBox" CssClass="form-control" placeholder="Enter a Age" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ControlToValidate="AgeTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Age is Required"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age shold be withing 5 to 60" ControlToValidate="AgeTextBox" Display="Dynamic" ForeColor="Red" MaximumValue="60" MinimumValue="5" Type="Integer"></asp:RangeValidator>
                <br />

              <asp:TextBox ID="ConutryTextBox" CssClass="form-control" placeholder="Enter a Country" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ControlToValidate="ConutryTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Contry is Required"></asp:RequiredFieldValidator>
           
            </div>

        <div class="col-md-4">
        <asp:TextBox ID="CityTextBox" CssClass="form-control" placeholder="Enter a City" runat="server"></asp:TextBox>
       <asp:RequiredFieldValidator ControlToValidate="CityTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator7" runat="server" ErrorMessage="City is Required"></asp:RequiredFieldValidator>
            <br />

        <asp:TextBox ID="AddressTextBox" TextMode="MultiLine" Rows="4" Columns="20" CssClass="form-control" placeholder="Enter a Address" runat="server"></asp:TextBox>
       <asp:RequiredFieldValidator ControlToValidate="AddressTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator8" runat="server" ErrorMessage="Address is Required"></asp:RequiredFieldValidator> 
            <br />

        <asp:TextBox ID="ClassTextBox" CssClass="form-control" placeholder="Enter a Class" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="ClassTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator9" runat="server" ErrorMessage="Class is Required"></asp:RequiredFieldValidator>
            <br />


             <asp:DropDownList ID="GoingToDropDownList" CssClass="form-control" runat="server">
                  <asp:ListItem>Select Going To</asp:ListItem>
                  <asp:ListItem>School</asp:ListItem>
                  <asp:ListItem>College</asp:ListItem>
                  <asp:ListItem>Univeristy</asp:ListItem>
                  <asp:ListItem>Other</asp:ListItem>
             </asp:DropDownList>
            <asp:RequiredFieldValidator InitialValue="Select Going To" ControlToValidate="GoingToDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator10" runat="server" ErrorMessage="Where is going is Required"></asp:RequiredFieldValidator>
            <br />

            <asp:TextBox ID="SubjectTextBox" CssClass="form-control" placeholder="Enter a Subject" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="SubjectTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator11" runat="server" ErrorMessage="Subject is Required"></asp:RequiredFieldValidator>

        </div>

            <div class="col-md-4">
            <asp:TextBox ID="ContactTextBox" CssClass="form-control" placeholder="Enter a Contact" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="ContactTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator14" runat="server" ErrorMessage="Contact is Required"></asp:RequiredFieldValidator> 

            <br />
                 <asp:DropDownList ID="TuitionTypeDropDownList" CssClass="form-control" runat="server">
                        <asp:ListItem>Select Tuition Type</asp:ListItem>
                        <asp:ListItem>Online</asp:ListItem>
                        <asp:ListItem>Physical</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Tuition Type" ControlToValidate="TuitionTypeDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator12" runat="server" ErrorMessage="Tuition Type is Required"></asp:RequiredFieldValidator>
                <br />

                 <asp:DropDownList ID="TutorPreferDropDownList" CssClass="form-control" runat="server">
                        <asp:ListItem>Select Tutor Preferred</asp:ListItem>
                        <asp:ListItem>Graduate</asp:ListItem>
                        <asp:ListItem>Masters</asp:ListItem>
                        <asp:ListItem>MPHIL</asp:ListItem>
                        <asp:ListItem>PHD</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Tutor Preferred" ControlToValidate="TutorPreferDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator13" runat="server" ErrorMessage="Tutor Preferred is Required"></asp:RequiredFieldValidator>
                <br />

             <asp:TextBox ID="UserNameTextBox" CssClass="form-control" placeholder="Enter a UserName" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ControlToValidate="UserNameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator15" runat="server" ErrorMessage="UserName is Required"></asp:RequiredFieldValidator> 
                <br />

             <asp:TextBox ID="PasswordTextBox" CssClass="form-control" placeholder="Enter a Password" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ControlToValidate="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator16" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator> 
<asp:RegularExpressionValidator 
    ControlToValidate="PasswordTextBox"
    ID="RegularExpressionValidator1"
    runat="server"
    ForeColor="Red"
    Display="Dynamic"
    SetFocusOnError="true"
    ErrorMessage="Password must be at least 8 characters and contain uppercase, lowercase, number and special character"
    ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&]).{8,}$">
</asp:RegularExpressionValidator>                <br />

             <asp:TextBox ID="ConfirmPasswordTextBox" CssClass="form-control" placeholder="Re-Enter a Password" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ControlToValidate="ConfirmPasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator17" runat="server" ErrorMessage="Confirem Password is Required"></asp:RequiredFieldValidator> 
                <asp:CompareValidator ID="CompareValidator1" ControlToValidate="ConfirmPasswordTextBox" ControlToCompare="PasswordTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" runat="server" ErrorMessage="Both Pasword Must be Identical"></asp:CompareValidator>
            </div>
         </div>
        <br />


        <div class="row">
            <div class="col-md-6 mx-auto">
                <asp:Button ID="StudentSignUpButton" OnClick="StudentSignUpButton_Click" runat="server" Text="SignUp" CssClass="btn bg-primary btn-block" />
            </div>
            
        </div>
        <br />
        </div>

    <br />


</asp:Content>
