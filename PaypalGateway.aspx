<%@ Page Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="PaypalGateway.aspx.vb" Inherits="PaypalGateway" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
    <strong><span style="font-size: 14pt; color: #006600">Upgrade your &nbsp;membership<br />
    </span>
        <br />
    </strong>
    <table id="TABLE1" cellpadding="0" cellspacing="1" frame="void" onclick="return TABLE1_onclick()"
        style="border-right: #006600 thin solid; border-top: #006600 thin solid; font-weight: bold;
        border-left: #006600 thin solid; width: 417px; border-bottom: #006600 thin solid;
        height: 64px">
        <tr>
            <td colspan="4" style="height: 21px; text-align: center">
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
    <table cellpadding="0" cellspacing="1" frame="box" style="border-right: #006600 thin solid;
        border-top: #006600 thin solid; border-left: #006600 thin solid; width: 921px;
        border-bottom: #006600 thin solid; height: 137px">
        <tr>
            <td style="width: 454px; height: 20px; text-align: left">
                Your EmailAddress:</td>
            <td style="width: 1638px; height: 20px; text-align: left">
                <asp:TextBox ID="txtEmail" runat="server" Width="289px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEmail"
                    Display="Dynamic" ErrorMessage="Required Email"></asp:RequiredFieldValidator>&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                    Display="Dynamic" ErrorMessage="You must enter an email address" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 454px; height: 18px; text-align: left">
                Card Holder's Name:</td>
            <td style="width: 1638px; height: 18px; text-align: left">
                <asp:TextBox ID="txtCardHolder" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCardHolder"
                    Display="Dynamic" ErrorMessage="Required Name"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #006600">
            <td style="width: 454px; height: 18px; text-align: left">
                <strong><span style="color: #006600">Amount ($): &nbsp;&nbsp;</span></strong></td>
            <td style="font-weight: bold; width: 1638px; color: #006600; height: 18px; text-align: left">
                <asp:DropDownList ID="txtAmount" runat="server" Width="74px">
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>60</asp:ListItem>
                    <asp:ListItem>120</asp:ListItem>
                    <asp:ListItem Selected="True">0</asp:ListItem>
                </asp:DropDownList>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAmount"
                    Display="Dynamic" ErrorMessage="Out of range" MaximumValue="120" MinimumValue="10"
                    Type="Integer"></asp:RangeValidator></td>
        </tr>
        <tr>
            <td style="width: 454px; height: 19px; text-align: left">
                Credit Card Number: &nbsp;&nbsp;
            </td>
            <td style="width: 1638px; height: 19px; text-align: left">
                <asp:TextBox ID="txtcr1" runat="server" MaxLength="16" Width="317px"></asp:TextBox>
                &nbsp; &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                    ControlToValidate="txtcr1" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 454px; height: 18px; text-align: left">
                CVV Number:</td>
            <td style="width: 1638px; height: 18px; text-align: left">
                <asp:TextBox ID="txtCvv" runat="server" MaxLength="3" Width="75px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtCvv"
                    Display="Dynamic" ErrorMessage="Required"></asp:RequiredFieldValidator>&nbsp;
                <span style="color: #006600">3 digits number written back side of your card. </span>
            </td>
        </tr>
    </table>

    <script language="javascript" type="text/javascript">
// <!CDATA[

function PaymentAlert() {
alert([Yes])
}

// ]]>
    </script>

    <asp:Label ID="Label1" runat="server" ForeColor="#FF0000" Visible="False"></asp:Label><br />
    <span style="color: #006600"><strong>Card Holder's Address: </strong></span>
    <table cellspacing="1" style="width: 351px; height: 133px">
        <tr>
            <td style="width: 67px">
                Street</td>
            <td style="width: 157px">
                <asp:TextBox ID="txtStreet" runat="server"></asp:TextBox></td>
            <td style="width: 107px; text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtStreet"
                    Display="Dynamic" ErrorMessage="Required"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 67px">
                City</td>
            <td style="width: 157px">
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>
            <td style="width: 107px; text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCity"
                    Display="Dynamic" ErrorMessage="Required"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 67px">
                State</td>
            <td style="width: 157px">
                <asp:TextBox ID="txtState" runat="server"></asp:TextBox></td>
            <td style="width: 107px; text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtState"
                    Display="Dynamic" ErrorMessage="Required"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 67px">
                Zip</td>
            <td style="width: 157px">
                <asp:TextBox ID="txtZip" runat="server"></asp:TextBox></td>
            <td style="width: 107px; text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtZip"
                    Display="Dynamic" ErrorMessage="Required"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 67px">
                Country</td>
            <td style="width: 157px">
                <asp:DropDownList ID="ddlCountry" runat="server" Width="153px">
                    <asp:ListItem Selected="True">Australia</asp:ListItem>
                    <asp:ListItem>Algeria</asp:ListItem>
                    <asp:ListItem>Angola</asp:ListItem>
                    <asp:ListItem>Argentina</asp:ListItem>
                    <asp:ListItem>Albania</asp:ListItem>
                    <asp:ListItem>Armenia</asp:ListItem>
                    <asp:ListItem>Austria</asp:ListItem>
                    <asp:ListItem>Azerbaijan</asp:ListItem>
                    <asp:ListItem>Belgium</asp:ListItem>
                    <asp:ListItem>Britain</asp:ListItem>
                    <asp:ListItem>Bulgaria</asp:ListItem>
                    <asp:ListItem>Brazil</asp:ListItem>
                    <asp:ListItem>Bolivia</asp:ListItem>
                    <asp:ListItem>Bahrain</asp:ListItem>
                    <asp:ListItem>Bangladesh</asp:ListItem>
                    <asp:ListItem>Bhutan</asp:ListItem>
                    <asp:ListItem>Belarus</asp:ListItem>
                    <asp:ListItem>Bosnia</asp:ListItem>
                    <asp:ListItem>Burma</asp:ListItem>
                    <asp:ListItem>Cambodia</asp:ListItem>
                    <asp:ListItem>China</asp:ListItem>
                    <asp:ListItem>Cape Verde</asp:ListItem>
                    <asp:ListItem>Cameroon</asp:ListItem>
                    <asp:ListItem>Central African Repubic</asp:ListItem>
                    <asp:ListItem>Chad</asp:ListItem>
                    <asp:ListItem>Congo</asp:ListItem>
                    <asp:ListItem>Canada</asp:ListItem>
                    <asp:ListItem>Chile</asp:ListItem>
                    <asp:ListItem>Colombia</asp:ListItem>
                    <asp:ListItem>Croatia</asp:ListItem>
                    <asp:ListItem>Cuba</asp:ListItem>
                    <asp:ListItem>Cyprus</asp:ListItem>
                    <asp:ListItem>Czech Repbulic</asp:ListItem>
                    <asp:ListItem>Denmark</asp:ListItem>
                    <asp:ListItem>Djibouti</asp:ListItem>
                    <asp:ListItem>East Timor</asp:ListItem>
                    <asp:ListItem>Ecouador</asp:ListItem>
                    <asp:ListItem>Egypt</asp:ListItem>
                    <asp:ListItem>Estonia</asp:ListItem>
                    <asp:ListItem>Ethiopia</asp:ListItem>
                    <asp:ListItem>Fiji</asp:ListItem>
                    <asp:ListItem>France</asp:ListItem>
                    <asp:ListItem>Finland</asp:ListItem>
                    <asp:ListItem>Ghana</asp:ListItem>
                    <asp:ListItem>Guinea Bissu</asp:ListItem>
                    <asp:ListItem>Guyana</asp:ListItem>
                    <asp:ListItem>Georgia</asp:ListItem>
                    <asp:ListItem>Germany</asp:ListItem>
                    <asp:ListItem>Greece</asp:ListItem>
                    <asp:ListItem>Guantemala</asp:ListItem>
                    <asp:ListItem>Haiti</asp:ListItem>
                    <asp:ListItem>Hungary</asp:ListItem>
                    <asp:ListItem>Iceland</asp:ListItem>
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>Indonesia</asp:ListItem>
                    <asp:ListItem>Iran</asp:ListItem>
                    <asp:ListItem>Iraq</asp:ListItem>
                    <asp:ListItem>Ireland</asp:ListItem>
                    <asp:ListItem>Israel</asp:ListItem>
                    <asp:ListItem>Italy</asp:ListItem>
                    <asp:ListItem>Jamica</asp:ListItem>
                    <asp:ListItem>Japan</asp:ListItem>
                    <asp:ListItem>Jordan</asp:ListItem>
                    <asp:ListItem>Kazakhstan</asp:ListItem>
                    <asp:ListItem>Korea(North)</asp:ListItem>
                    <asp:ListItem>Korea(South)</asp:ListItem>
                    <asp:ListItem>Kuwait</asp:ListItem>
                    <asp:ListItem>Kyrghyzstan</asp:ListItem>
                    <asp:ListItem>Laos</asp:ListItem>
                    <asp:ListItem>Latvia</asp:ListItem>
                    <asp:ListItem>Lebanon</asp:ListItem>
                    <asp:ListItem>Liberia</asp:ListItem>
                    <asp:ListItem>Libya</asp:ListItem>
                    <asp:ListItem>Lithuania</asp:ListItem>
                    <asp:ListItem>Malaysia</asp:ListItem>
                    <asp:ListItem>Macedonia</asp:ListItem>
                    <asp:ListItem>Maladives</asp:ListItem>
                    <asp:ListItem>Mangolia</asp:ListItem>
                    <asp:ListItem>Malgasy Republic</asp:ListItem>
                    <asp:ListItem>Malawi</asp:ListItem>
                    <asp:ListItem>Mali</asp:ListItem>
                    <asp:ListItem>Mauritius</asp:ListItem>
                    <asp:ListItem>Mexico</asp:ListItem>
                    <asp:ListItem>Morocco</asp:ListItem>
                    <asp:ListItem>Mozambique</asp:ListItem>
                    <asp:ListItem>Namibia</asp:ListItem>
                    <asp:ListItem>Nauru</asp:ListItem>
                    <asp:ListItem>Nepal</asp:ListItem>
                    <asp:ListItem>Netherlands</asp:ListItem>
                    <asp:ListItem>New Zealand</asp:ListItem>
                    <asp:ListItem>Nicaragua</asp:ListItem>
                    <asp:ListItem>Niger</asp:ListItem>
                    <asp:ListItem>Nigeria</asp:ListItem>
                    <asp:ListItem>Norway</asp:ListItem>
                    <asp:ListItem>Pakistan</asp:ListItem>
                    <asp:ListItem>Palestine</asp:ListItem>
                    <asp:ListItem>Paraguay</asp:ListItem>
                    <asp:ListItem>Peru</asp:ListItem>
                    <asp:ListItem>Poland</asp:ListItem>
                    <asp:ListItem>Portugal</asp:ListItem>
                    <asp:ListItem>Philippines</asp:ListItem>
                    <asp:ListItem>Qatar</asp:ListItem>
                    <asp:ListItem>Rawanda</asp:ListItem>
                    <asp:ListItem>Romania</asp:ListItem>
                    <asp:ListItem>Russia</asp:ListItem>
                    <asp:ListItem>Saudi Arabia</asp:ListItem>
                    <asp:ListItem>Seychelles</asp:ListItem>
                    <asp:ListItem>Senegal</asp:ListItem>
                    <asp:ListItem>Serbia</asp:ListItem>
                    <asp:ListItem>Sierra Leone</asp:ListItem>
                    <asp:ListItem>Singapore</asp:ListItem>
                    <asp:ListItem>Slovakia</asp:ListItem>
                    <asp:ListItem>Somalia</asp:ListItem>
                    <asp:ListItem>South Africa</asp:ListItem>
                    <asp:ListItem>Spain</asp:ListItem>
                    <asp:ListItem>Sri Lanka</asp:ListItem>
                    <asp:ListItem>Sudan</asp:ListItem>
                    <asp:ListItem>Swaziland</asp:ListItem>
                    <asp:ListItem>Sweden</asp:ListItem>
                    <asp:ListItem>Syria</asp:ListItem>
                    <asp:ListItem>Switzerland</asp:ListItem>
                    <asp:ListItem>Suriname</asp:ListItem>
                    <asp:ListItem>Taiwan</asp:ListItem>
                    <asp:ListItem>Tartastan</asp:ListItem>
                    <asp:ListItem>Tanzania</asp:ListItem>
                    <asp:ListItem>Tajikistan</asp:ListItem>
                    <asp:ListItem>Thailand</asp:ListItem>
                    <asp:ListItem>Trinidad &amp; Tobago</asp:ListItem>
                    <asp:ListItem>Tunisia</asp:ListItem>
                    <asp:ListItem>Turkey</asp:ListItem>
                    <asp:ListItem>Turkmenistan</asp:ListItem>
                    <asp:ListItem>United Arab Emirates</asp:ListItem>
                    <asp:ListItem>Uganda</asp:ListItem>
                    <asp:ListItem>Ukraine</asp:ListItem>
                    <asp:ListItem>Upper Volta</asp:ListItem>
                    <asp:ListItem>United States</asp:ListItem>
                    <asp:ListItem>U.K</asp:ListItem>
                    <asp:ListItem>Uzbekistan</asp:ListItem>
                    <asp:ListItem>Vietnam</asp:ListItem>
                    <asp:ListItem>Venezuela</asp:ListItem>
                    <asp:ListItem>Yamen</asp:ListItem>
                    <asp:ListItem>Yougoslavia</asp:ListItem>
                    <asp:ListItem>Zaire</asp:ListItem>
                    <asp:ListItem>Zambia</asp:ListItem>
                    <asp:ListItem>Zimbabwe</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 107px">
            </td>
        </tr>
        <tr>
            <td style="width: 67px">
            </td>
            <td style="width: 157px">
                <asp:Button ID="Button1" runat="server" Text="Confirm" Width="103px" />
            </td>
            <td style="width: 107px">
            </td>
        </tr>
    </table>
    <br />
    &nbsp;<br />
</asp:Content>

