<!DOCTYPE html>
<script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub
</script>

<html>
    <head>
        <title>International Restaurant</title>
           <link rel ="stylesheet" type="text/css" href ="Style.css">
        <link rel ="stylesheet" type="text/css" href ="Stylesheet2">
       <link href="https://fonts.googleapis.com/css?family=Bangers" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Bangers|Playball" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <style type="text/css">
            .auto-style2 {
                width: 330px;
            }
            .auto-style3 {
                height: 400px;
            }
            .auto-style4 {
                height: 400px;
                width: 453px;
            }
            .auto-style5 {
                height: 368px;
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
            <td class="auto-style4">
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
                <td class="auto-style3">
                    <div id="orderDetailDiv">
                        <table class="auto-style5">
                            <tr>
                                <th style="text-align: center" class="auto-style2">
                                    Order Information
                                </th>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <br />
                                    Number of items added:<asp:Label ID="lblNoOfItems" Font-Bold="true" runat="server" Text="0"></asp:Label>
                                </td>
                            <%--<td align="center">
                                <br />
                                Number of items added:&nbsp;<asp:Label ID="lblNoOfItems" Font-Bole="true" runat="server" Text="0"></asp:Label>
                               &nbsp;
                                items<br/>
                               
                                Total Price: &nbsp; <b>R</b>
                                <asp:Label ID="lblTotalPrice" runat="server" Font-Bold="true" Text="0"></asp:Label>

                                
                                <br /><br />
                                <asp:Button ID="ViewOrder" runat="server" Text="View My Order" Width="126px" />

                            </td>--%>
                            </tr>
                        </table>
                        </div>
                    </table>
                         </form>
            </body>
</html>
