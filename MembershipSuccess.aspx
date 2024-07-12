<%@ Page Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="MembershipSuccess.aspx.vb" Inherits="MembershipSuccess" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
    <span style="color: #006600"><strong>
        <br />
        <br />
        Congratulations!<br />
        Your membership has been upgraded !<br />
        Now you can send messages to member as per your credits available.<br />
        You need one credit to send one message.<br />
        <br />
        <span style="color: #ff0000">You will be redirected to home page within 5 seconds.<br />
        </span>
        <br />
        <table id="TABLE1" cellpadding="0" cellspacing="1" frame="void" onclick="return TABLE1_onclick()"
            style="border-right: #006600 thin solid; border-top: #006600 thin solid; border-left: #006600 thin solid;
            width: 393px; border-bottom: #006600 thin solid; height: 64px">
            <tr>
                <td colspan="4" style="height: 21px; text-align: center">
                    <span style="color: #006600"><strong>Membership Types</strong></span></td>
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
            </tr>
            <tr>
                <td>
                    Standard</td>
                <td style="width: 88px">
                    0</td>
                <td style="width: 87px">
                    0</td>
                <td style="width: 128px; text-align: center">
                    0</td>
            </tr>
            <tr>
                <td>
                    Gold</td>
                <td style="width: 88px">
                    10</td>
                <td style="width: 87px">
                    10</td>
                <td style="width: 128px">
                    1</td>
            </tr>
            <tr>
                <td>
                    Diamond</td>
                <td style="width: 88px">
                    30</td>
                <td style="width: 87px">
                    45</td>
                <td style="width: 128px">
                    3</td>
            </tr>
            <tr>
                <td>
                    Platinum</td>
                <td style="width: 88px">
                    60</td>
                <td style="width: 87px">
                    90</td>
                <td style="width: 128px">
                    6</td>
            </tr>
            <tr>
                <td>
                    Full</td>
                <td style="width: 88px">
                    120</td>
                <td style="width: 87px">
                    180</td>
                <td style="width: 128px">
                    12</td>
            </tr>
        </table>
        <br />
        <br />
    </strong>
        <br />
    </span>
</asp:Content>

