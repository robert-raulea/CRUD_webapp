<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="proiect_SGBD._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .padding-y {
            padding: 5px 0;
        }

        .margin-y {
            margin: 5px 0;
        }

        .btn-user {
            padding: 5px 10px;
            border-radius: 5px;
        }

        .form-outline {
            background-color: lightblue;
            padding: 20px 0;
            border-radius: 20px;
            color: black;
        }

        .gridview {
            background-color: white;
            color: #333;
        }

        .gridview td {
            padding: 7px;
        }

        .gridview th {
            padding: 9px;
            background-color: aliceblue;
        }
        .auto-style1 {
            width: 135px;
            height: 28px;
        }
        .auto-style2 {
            width: 340px;
            height: 28px;
        }
        .auto-style3 {
            height: 28px;
        }
        .auto-style4 {
            width: 340px;
        }
        .auto-style5 {
            height: 29px;
            width: 340px;
        }
    </style>


    <div>
        <div style="font-size:x-large" align="center">Student Info Form</div>
        <br />
    </div>

  <div class="form-outline">
    <table class="nav-justified">
        <tr>
            <td style="width: 135px; height: 28px;"></td>
            <td style="font-size:16px; font-weight: bold;" class="auto-style2">Student ID</td>
            <td style="height: 28px">
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" CssClass="margin-y"></asp:TextBox>
            &nbsp;&nbsp;
                <asp:Button ID="Button6" runat="server" CssClass="btn-user" Font-Bold="True" Font-Italic="False" Font-Size="Medium" OnClick="Button6_Click" Text="Get" BackColor="#9999FF" BorderStyle="None" />
            </td>
        </tr>
        <tr>
            <td style="width: 135px; height: 28px"></td>
            <td style="font-size:16px; font-weight: bold;" class="auto-style2">Name</td>
            <td style="height: 28px">
                <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" CssClass="margin-y"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 135px; height: 28px;"></td>
            <td style="font-size:16px; font-weight: bold;" class="auto-style2">Address</td>
            <td style="height: 28px">
                <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" CssClass="margin-y"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 135px; height: 28px;"></td>
            <td style="font-size:16px; font-weight: bold;" class="auto-style2">Age</td>
            <td style="height: 28px">
                <asp:TextBox ID="TextBox5" runat="server" Font-Size="Medium" CssClass="margin-y"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 135px; height: 28px;"></td>
            <td style="font-size:16px; font-weight: bold;" class="auto-style2">Phone Number</td>
            <td style="height: 28px">
                <asp:TextBox ID="TextBox6" runat="server" Font-Size="Medium" CssClass="margin-y"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td style="font-size:16px; font-weight: bold;" class="auto-style2">First Semester Grade</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox7" runat="server" Font-Size="Medium" CssClass="margin-y"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 135px; height: 28px;"></td>
            <td style="font-size:16px; font-weight: bold;" class="auto-style2">Second Semester Grade</td>
            <td style="height: 28px">
                <asp:TextBox ID="TextBox8" runat="server" Font-Size="Medium" CssClass="margin-y"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 135px">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 135px; height: 29px;"></td>
            <td class="auto-style5">
                &nbsp;</td>
            <td style="height: 29px">
                <asp:Button ID="Button1" runat="server" CssClass="btn-user" Font-Bold="True" Font-Italic="False" Font-Size="Medium" OnClick="Button1_Click" Text="Insert" BackColor="#9999FF" BorderStyle="None" />
            &nbsp;
                <asp:Button ID="Button2" runat="server" CssClass="btn-user" Font-Bold="True" Font-Italic="False" Font-Size="Medium" OnClick="Button2_Click" Text="Update" BackColor="#9999FF" BorderStyle="None" />
            &nbsp;
                <asp:Button ID="Button3" runat="server" CssClass="btn-user" Font-Bold="True" Font-Italic="False" Font-Size="Medium" OnClick="Button3_Click" OnClientClick="return confirm('Are you sure you want to delete?')" Text="Delete" BackColor="#9999FF" BorderStyle="None" />
            &nbsp;
                <asp:Button ID="Button4" runat="server" CssClass="btn-user" Font-Bold="True" Font-Italic="False" Font-Size="Medium" OnClick="Button4_Click" Text="Search" BackColor="#9999FF" BorderStyle="None" />
            &nbsp;
                <asp:Button ID="Button5" runat="server" CssClass="btn-user" Font-Bold="True" Font-Italic="False" Font-Size="Medium" OnClick="Button5_Click" Text="Reset" BackColor="#9999FF" BorderStyle="None" />
            </td>
        </tr>
        <tr>
            <td style="width: 135px">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 135px">&nbsp;</td>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" Width="800px" CssClass="table-hover gridview">
                </asp:GridView>
            </td>
        </tr>
    </table>
  </div>

</asp:Content>
