<!DOCTYPE html>
<script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    <script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs)

    End Sub
</script>


    Protected Sub Button1_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs)

    End Sub
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 80%;
            height: 695px;
        }
        .auto-style2 {
            width: 181px;
        }
        .auto-style3 {
            margin-left: 20px;
            margin-top: 11px;
        }
        .auto-style4 {
            margin-top: 0px;
        }
        .auto-style5 {
            margin-left: 0px;
            margin-top: 11px;
        }
        .newStyle1 {
            background-color: #808000;
        }
        .auto-style6 {
            width: 181px;
            height: 230px;
        }
        .auto-style7 {
            height: 230px;
            width: 604px;
        }
        .auto-style8 {
            width: 604px;
        }
        .auto-style9 {
            height: 858px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style9">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Reservation"></asp:Label>
        <br />
        Reservation Page Testing<table class="auto-style1" border="2">
            <tr>
                <td class="auto-style2">Customer Name</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="365px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">No. of person</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox2" runat="server" Height="34px" Width="365px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Select Date</td>
                <td class="auto-style8">
                    <asp:Calendar ID="Calendar1" runat="server" Height="246px" Width="347px"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Select Time</td>
                <td class="auto-style8">Start Time
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>10:00 AM</asp:ListItem>
                        <asp:ListItem>10:30AM</asp:ListItem>
                        <asp:ListItem>11:00 AM</asp:ListItem>
                        <asp:ListItem>11:30 AM</asp:ListItem>
                        <asp:ListItem>12:00 AM</asp:ListItem>
                        <asp:ListItem>12:30 PM</asp:ListItem>
                        <asp:ListItem>1:00 PM</asp:ListItem>
                        <asp:ListItem>1:30 PM</asp:ListItem>
                        <asp:ListItem>2:00 PM</asp:ListItem>
                        <asp:ListItem>4:00 PM</asp:ListItem>
                        <asp:ListItem>4:30 PM</asp:ListItem>
                        <asp:ListItem>5:00 PM</asp:ListItem>
                        <asp:ListItem>5:30 PM</asp:ListItem>
                        <asp:ListItem>6:00 PM</asp:ListItem>
                        <asp:ListItem>6:30 PM</asp:ListItem>
                        <asp:ListItem>7:00 PM</asp:ListItem>
                        <asp:ListItem>7:30 PM</asp:ListItem>
                        <asp:ListItem>8:00 PM</asp:ListItem>
                        <asp:ListItem>8:30 PM</asp:ListItem>
                        <asp:ListItem>9:00 PM</asp:ListItem>
                        <asp:ListItem>9:30 PM</asp:ListItem>
                        <asp:ListItem>10:00 PM</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp; End Time
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style4">
                        <asp:ListItem>10:00 AM</asp:ListItem>
                        <asp:ListItem>10:30AM</asp:ListItem>
                        <asp:ListItem>11:00 AM</asp:ListItem>
                        <asp:ListItem>11:30 AM</asp:ListItem>
                        <asp:ListItem>12:00 AM</asp:ListItem>
                        <asp:ListItem>12:30 PM</asp:ListItem>
                        <asp:ListItem>1:00 PM</asp:ListItem>
                        <asp:ListItem>1:30 PM</asp:ListItem>
                        <asp:ListItem>2:00 PM</asp:ListItem>
                        <asp:ListItem>4:00 PM</asp:ListItem>
                        <asp:ListItem>4:30 PM</asp:ListItem>
                        <asp:ListItem>5:00 PM</asp:ListItem>
                        <asp:ListItem>5:30 PM</asp:ListItem>
                        <asp:ListItem>6:00 PM</asp:ListItem>
                        <asp:ListItem>6:30 PM</asp:ListItem>
                        <asp:ListItem>7:00 PM</asp:ListItem>
                        <asp:ListItem>7:30 PM</asp:ListItem>
                        <asp:ListItem>8:00 PM</asp:ListItem>
                        <asp:ListItem>8:30 PM</asp:ListItem>
                        <asp:ListItem>9:00 PM</asp:ListItem>
                        <asp:ListItem>9:30 PM</asp:ListItem>
                        <asp:ListItem>10:00 PM</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="Button1" runat="server" BackColor="#66FF66" BorderColor="#99CC00" CssClass="auto-style3" Height="29px" Text="Check Availability " Width="104px" OnClick="Button1_Click" />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style8">
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style7">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Visible="False">
                        <asp:ListItem>Table 1</asp:ListItem>
                        <asp:ListItem>Table 2</asp:ListItem>
                        <asp:ListItem>Table 3</asp:ListItem>
                        <asp:ListItem>Table 4</asp:ListItem>
                        <asp:ListItem>Table 5</asp:ListItem>
                        <asp:ListItem>Table 6</asp:ListItem>
                        <asp:ListItem>Table 7</asp:ListItem>
                        <asp:ListItem>Table 8</asp:ListItem>
                        <asp:ListItem>Table 9</asp:ListItem>
                        <asp:ListItem>Table 10</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    <asp:Button ID="Button2" runat="server" BackColor="#66FF66" BorderColor="#99CC00" CssClass="auto-style5" Height="29px" Text="Book Now" Width="142px" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
        <asp:Label ID="Label4" runat="server" Height="33px" Width="300px"></asp:Label>
&nbsp;</form>
</body>
</html>
