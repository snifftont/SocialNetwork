<%@ Page Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="MakePayment.aspx.vb" Inherits="MakePayment" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">

    <strong><span style="font-size: 14pt; color: #006600">
    </span></strong>
    <table id="TABLE1" cellpadding="5" cellspacing="5" frame="void" onclick="return TABLE1_onclick()"
        style="border-right: #99ccff 10px solid; border-top: #99ccff 10px solid; font-weight: bold;
        font-size: 14pt; border-left: #99ccff 10px solid; color: #006600;
        border-bottom: #99ccff 10px solid; height: 60%; vertical-align: middle; line-height: normal; letter-spacing: normal; text-align: left;" width="70%">
        <tr>
            <td colspan="5" style="height: 21px; text-align: center">
                <span style="color: #006600">Membership Types</span></td>
        </tr>
        <tr style="color: #000000">
            <td>
                Type</td>
            <td style="width: 88px">
                Amount($)</td>
            <td style="width: 87px">
                Credits</td>
            <td style="width: 128px">
                Duration(Months)</td>
            <td style="width: 128px">
                </td>
        </tr>
        <tr>
            <td valign="top">
                Standard</td>
            <td style="width: 88px" valign="top">
                0</td>
            <td style="width: 87px" valign="top">
                0</td>
            <td style="width: 128px; text-align: center" valign="top">
                0</td>
            <td style="width: 128px; text-align: center" valign="top">
                None</td>
        </tr>
        <tr>
            <td>
            </td>
            <td style="width: 88px">
            </td>
            <td style="width: 87px">
            </td>
            <td style="width: 128px; text-align: center">
            </td>
            <td style="width: 128px; text-align: center">
            </td>
        </tr>
        <tr>
            <td valign="top">
                Local Friends
                Gold Member</td>
            <td style="width: 88px" valign="top">
                10</td>
            <td style="width: 87px" valign="top">
                10</td>
            <td style="width: 128px" valign="top">
                1</td>
            <td style="width: 128px; text-align: left;" valign="top"><form action="https://www.paypal.com/cgi-bin/webscr" method="post">
                <input type="hidden" name="cmd" value="_xclick">
                <input type="hidden" name="business" value="admin@localfriends.com.au">
                <input type="hidden" name="item_name" 
   value="Local Friends  Gold Membership">
                <input type="hidden" name="item_number" 
   value="1000001">
                <input type="hidden" name="amount" value="10.00">
                <input type="hidden" name="no_shipping" value="2">
                <input type="hidden" name="no_note" value="1">
                <input type="hidden" name="currency_code" value="USD">
                <input type="hidden" name="bn" value="IC_Sample">
                <input type="image" src="Images/paynow.gif" 
   name="submit" alt="Make payments" style="width: 63px; height: 43px">
                <img alt="" 
   src="https://www.paypal.com/en_US/i/scr/pixel.gif" 
   width="1" height="1">
            </form>
            </td>
        </tr>
        <tr>
            <td valign="top">
                Local Friends
                Diamond Member</td>
            <td style="width: 88px" valign="top">
                30</td>
            <td style="width: 87px" valign="top">
                45</td>
            <td style="width: 128px" valign="top">
                3</td>
            <td style="width: 128px; text-align: left;" valign="top"><form action="https://www.paypal.com/cgi-bin/webscr" method="post">
                <input type="hidden" name="cmd" value="_xclick">
                <input type="hidden" name="business" value="admin@localfriends.com.au">
                <input type="hidden" name="item_name" 
   value="Local Friends  Diamond Membership">
                <input type="hidden" name="item_number" 
   value="1000002">
                <input type="hidden" name="amount" value="30.00">
                <input type="hidden" name="no_shipping" value="2">
                <input type="hidden" name="no_note" value="1">
                <input type="hidden" name="currency_code" value="USD">
                <input type="hidden" name="bn" value="IC_Sample">
                <input type="image" src="Images/paynow.gif" 
   name="submit" alt="Make payments" id="Image1" onclick="return Image1_onclick()" style="width: 70px; height: 48px"></form>
            </td>
        </tr>
        <tr>
            <td valign="top">
                Local Friends
                Platinum Member</td>
            <td style="width: 88px" valign="top">
                60</td>
            <td style="width: 87px" valign="top">
                90</td>
            <td style="width: 128px" valign="top">
                6</td>
            <td style="width: 128px" valign="top"><form action="https://www.paypal.com/cgi-bin/webscr" method="post">
                <input type="hidden" name="cmd" value="_xclick">
                <input type="hidden" name="business" value="admin@localfriends.com.au">
                <input type="hidden" name="item_name" 
   value="Local Friends  Platinum Membership">
                <input type="hidden" name="item_number" 
   value="1000003">
                <input type="hidden" name="amount" value="60.00">
                <input type="hidden" name="no_shipping" value="2">
                <input type="hidden" name="no_note" value="1">
                <input type="hidden" name="currency_code" value="USD">
                <input type="hidden" name="bn" value="IC_Sample">
                <input type="image" src="Images/paynow.gif" 
   name="submit" alt="Make payments" style="width: 70px; height: 51px">
                <img alt="" 
   src="https://www.paypal.com/en_US/i/scr/pixel.gif" 
   width="1" height="1">
            </form>
            </td>
        </tr>
        <tr>
            <td valign="top">
                Local Friends
                Full Member</td>
            <td style="width: 88px" valign="top">
                120</td>
            <td style="width: 87px" valign="top">
                180</td>
            <td style="width: 128px" valign="top">
                12</td>
            <td style="width: 128px" valign="top"><form action="https://www.paypal.com/cgi-bin/webscr" method="post">
                <input type="hidden" name="cmd" value="_xclick">
                <input type="hidden" name="business" value="admin@localfriends.com.au">
                <input type="hidden" name="item_name" 
   value="Local Friends  Full Membership">
                <input type="hidden" name="item_number" 
   value="1000004">
                <input type="hidden" name="amount" value="120.00">
                <input type="hidden" name="no_shipping" value="2">
                <input type="hidden" name="no_note" value="1">
                <input type="hidden" name="currency_code" value="USD">
                <input type="hidden" name="bn" value="IC_Sample">
                <input type="image" src="Images/paynow.gif" 
   name="submit" alt="Make payments" style="width: 68px; height: 46px"><img alt="" 
   src="https://www.paypal.com/en_US/i/scr/pixel.gif" 
   width="1" height="1">
            </form>
            </td>
        </tr>
    </table>
</asp:Content>

