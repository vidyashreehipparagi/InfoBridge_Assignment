<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeDetails.aspx.cs" Inherits="InfoBridge_Assignment.EmployeeDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-color:#dad0dd;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 582px;
        }
        .auto-style3 {
            width: 582px;
            height: 29px;
        }
        .auto-style4 {
            height: 29px;
            width: 1042px;
        }
        .auto-style5 {
            width: 582px;
            height: 33px;
        }
        .auto-style6 {
            margin-top: 0px;
            margin-left: 106px;
        }
        .register{
            height:570px;
            width:280px;
            border:1px solid black;
            margin-left:40px;
            padding-left:20px;
            background-color:#d4b5de;
            }
        .grid{
            margin-left:100px
        }
       
        </style>
</head>
<body>
    <h1>Registration form</h1>
      <form id="form1" runat="server">
        <div class="register">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        &nbsp;&nbsp;
                        <asp:Label ID="lbId" runat="server" Text="Id" Font-Bold="True"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtId" ErrorMessage="Id is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        <br />
                       <asp:TextBox ID="txtId" runat="server" Height="44px" Width="245px"></asp:TextBox> <br />


                    </td>
                    <td class="auto-style4" rowspan="9" style="margin-left:50px" > 
                        <h1 style="margin-left:50px">Employee Details</h1>
                        <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="auto-style6" ForeColor="Black" Height="484px" Width="745px" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField HeaderText="Id" DataField="Id" />
                                <asp:BoundField DataField="Name" HeaderText="Name" />
                                <asp:BoundField ApplyFormatInEditMode="True" DataField="DateOfBirth" HeaderText="DateOfBirth" />
                                <asp:BoundField DataField="Sex" HeaderText="Sex" />
                                <asp:BoundField DataField="Phone" HeaderText="Phone" />
                                <asp:BoundField DataField="Address" HeaderText="Address" />
                                

                               
                                

                                <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                                    <ControlStyle Height="80px" Width="80px" />
                                </asp:ImageField>
                                

                               
                                

                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;&nbsp;
                        <asp:Label ID="LbName" runat="server" Text="Name" Font-Bold="True"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txtName" runat="server" Height="43px" Width="241px"></asp:TextBox><br />
                    </td>
                 </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;&nbsp;
                        <asp:Label ID="LbDOB" runat="server" Text="DOB" Font-Bold="True"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDob" ErrorMessage="Date of Birth is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        <br />
                         <asp:TextBox ID="txtDob" runat="server" Height="46px" Width="239px"></asp:TextBox><br />
                    </td>
                    </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;&nbsp;
                        <asp:Label ID="lbSex" runat="server" Text="Sex" Font-Bold="True"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtSex" ErrorMessage="Sex is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        <br />
                          <asp:TextBox ID="txtSex" runat="server" Height="45px" Width="239px"></asp:TextBox><br />
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;&nbsp;
                        <asp:Label ID="lbPhone" runat="server" Text="Phone" Font-Bold="True"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone number is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txtPhone" runat="server" Height="46px" Width="239px" OnTextChanged="txtPhone_TextChanged"></asp:TextBox><br />
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;&nbsp;
                        <asp:Label ID="lbAddress" runat="server" Text="Address" Font-Bold="True"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="239px"></asp:TextBox><br />
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;&nbsp;
                        <asp:Label ID="Image" runat="server" Text="Image" Font-Bold="True"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Image is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:FileUpload ID="FileUpload1" runat="server" Height="41px" />
                        <br />
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="BtSave" runat="server" Text="Save" Width="65px" OnClick="BtSave_Click" />
                        <asp:Button ID="lbUpdate" runat="server" Text="Update" OnClick="lbUpdate_Click" />
                        <asp:Button ID="btDelete" runat="server" Text="Delete" OnClick="btDelete_Click" />
                        <asp:Button ID="BtnSearch" runat="server" CausesValidation="False" OnClick="BtnSearch_Click1" Text="Search" UseSubmitBehavior="False" />
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style2">
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="lblMsg" runat="server"></asp:Label>
                    </td>
                    
                </tr>
                
            </table>
        </div>
       
    </form>
</body>
</html>
