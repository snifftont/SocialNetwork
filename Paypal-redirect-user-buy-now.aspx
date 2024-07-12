<%@ Page Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Paypal-redirect-user-buy-now.aspx.vb" Inherits="Paypal_redirect_user_buy_now" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
<center >
<form action="https://www.paypal.com/cgi-bin/webscr" method="post">
    Upgrade Membership</form>
</center>
    <center>
        <form action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="325051">
<table>
<tr><td><input type="hidden" name="on0" value="Credits">Credits</td></tr><tr><td><select name="os0">
<option value="Bronze" selected="selected">Bronze $10.00
<option value="Silver">Silver $30.00
<option value="Gold">Gold $50.00
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="AUD">
<input type="image" src="Images/paynow.gif" border="0" name="submit" alt="" width="50">
<img alt="" border="0" src="https://www.paypal.com/en_AU/i/scr/pixel.gif" width="1" height="1">
        </form>
    </center>
    <center>
        &nbsp;</center>
</asp:Content>

