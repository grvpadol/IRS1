<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu1.aspx.cs" Inherits="IRS1.Menu1" %>

<!DOCTYPE html>

<html>
    <head>
        <title>International Restaurant</title>
           <link rel ="stylesheet" type="text/css" href ="Style.css">
       <link href="https://fonts.googleapis.com/css?family=Bangers" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Bangers|Playball" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <style type="text/css">
            .auto-style1 {
                margin-left: 0px;
            }
        </style>
        
        </head>
    <body>
        <form id="form1" runat="server">
        <>    
            <nav>
                <div class ="row clearfix">
                    <img src ="image/logo.png" class = "logo"><ul class="Main-nav animated slideInDown" id="checkone">
                        <li><a href = "Home.aspx">Home</a></li>
                        <li><a href = "about.aspx">about</a></li>
                        <li><a>menu</a></li>
                        <li><a href="Reservation.aspx">Reservation</a></li>
                         <li><a href="Staff.aspx">staff</a></li>
                        <li><a href="Signin.aspx">signin</a></li>
                         <li><a href="Contact.aspx">Contact</a></li>
                    </ul>
                   
                    <a href="#" class ="Mobile-icon" onclick = "slideshow()">
                          <i class="fa fa-bars"></i>
                    </a>  
                </div>
            </nav>
           
           
         <table id="tables" style="margin-left: 20%; margin-right: 20%">
           <tr>
            <td>
              <div id="menu_discDiv">
               <p>
                All burgers are served with lettuce, tomato, red onions and house cut fries. Sweet
                potato fries or onion rings just R2 extra. Be sure to ask your server about our
                daily dessert specials and our house made artisan ice cream! All sandwiches are
                served with fries and coleslaw. Sweet potato fries, quinoa salad, side tossed salad
                available for R2 each.
                </p>
               </div>
            </td>
                <td>
                    <div id="orderDetailDiv">
                        <table>
                            <tr>
                                <th style="text-align: center">
                                    Order Information
                                </th>
                            </tr>
                            <tr>
                            <td align="center">
                                <br />
                                Number of items added:&nbsp;<asp:Label ID="lblNoOfItems" Font-Bole="true" runat="server" Text="0"></asp:Label>
                               &nbsp;
                                items<br/>
                               
                                Total Price: &nbsp; <b>R</b>
                                <asp:Label ID="lblTotalPrice" runat="server" Font-Bold="true" Text="0"></asp:Label>

                                
                                <br /><br />
                                <asp:Button ID="ViewOrder" runat="server" Text="View My Order" Width="126px" />

                            </td>
                            </tr>
                        </table>
                     </div>
                    </td>
                    </tr>
                <tr>
            <td colspan="2" align="center">
                <br />
                <br />
                <br />
                <div id="menuDiv">
                    <table>
                        <tr>
                            <th style="text-align: center">
                                Our Menu
                            </th>
                        </tr>
                        <tr>
                            <td>
                                <asp:Repeater ID="rpt" runat="server">
                                    <ItemTemplate>
                                        <table id="InLine">
                                            <tr>
                                                <td>
                                                    <a href="Item.aspx?id=<%# Eval("MealId") %>">
                                                        <img alt="" height="140px" width="140px" src='<%# Eval("image") %>' /></a>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label><br />
                                                    R<asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
        </header>   
        
        <script type="text/javascript">
            function slideshow()
            { var x = document.getElementById('checkone');
                if(x.style.display ===  "none")
                {
                    x.style.display = "block";
                }
                else
                {
                    x.style.display= "none";
                }
            }
        </script>
        </form>
    </body>
</html>
