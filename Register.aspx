<%@ Page Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Register.aspx.vb" Inherits="CreateProfile" title="Local Friends Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
    <div style="text-align: center">
        <center style="text-align: center">
            <table id="TABLE1" align="center" atomicselection="true" frame="void" onclick="return TABLE1_onclick()"
                rules="none" style="border-right: #cccccc 80px solid; border-top: #cccccc 80px solid; border-left: #cccccc 80px solid;
                width: 100%; color: #000000; border-bottom: #cccccc 80px solid; position: static; height: 100%;
                background-color: transparent; font-size: 9pt;">
                <tr>
                    <td colspan="2" style="height: 27px; text-align: center">
                        <span style="color: #009900"><span style="font-size: 12pt">
                        <strong><span>Signup to Local Friends!</span></strong>&nbsp;
                        </span></span>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center; height: 27px;">
                        <span><strong><span></span></strong>
            <asp:Label ID="lbl5" runat="server" Font-Size="9pt" Visible="False"></asp:Label>
            <asp:Label ID="lblSession" runat="server" Font-Size="10pt" Visible="False"></asp:Label>&nbsp;
                <asp:Label ID="lblErr" runat="server" BackColor="Transparent" Font-Size="11pt" ForeColor="Green" Font-Bold="True"></asp:Label><strong><span> </span></strong></span></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:Label ID="Label1" runat="server" Font-Size="10pt" Text="User ID" Visible="False"
                            Width="117px"></asp:Label><asp:Label ID="txtID" runat="server" Font-Size="10pt" Visible="False"></asp:Label>
            <asp:Label ID="lblMessage" runat="server" Font-Size="Medium"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 113px; height: 27px; text-align: left">
                        <span>Email</span></td>
                    <td style="width: 182px; height: 27px; text-align: left">
                        <asp:TextBox ID="txtEmail" runat="server" BackColor="White" BorderColor="#8080FF"
                            BorderStyle="None" Width="226px"></asp:TextBox><span style="direction: ltr;
                                line-height: normal; letter-spacing: normal; text-align: center">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail"
                                    ErrorMessage="Required" Font-Size="10pt"></asp:RequiredFieldValidator></span></td>
                </tr>
                <tr style="color: #000000">
                    <td style="width: 113px; height: 23px; text-align: left">
                        <span>User Name</span></td>
                    <td style="width: 182px; height: 23px; text-align: left">
                        <asp:TextBox ID="txtUserName" runat="server" BackColor="White" BorderStyle="None"
                            Width="120px" MaxLength="20"></asp:TextBox>
                        <asp:Button ID="btnUserCheck" runat="server" Text="Check Availablity" BackColor="#80FF80" BorderColor="#00C000" BorderStyle="Solid" CausesValidation="False" Font-Size="8pt" ToolTip="Click to Check Availablity" Width="90px" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                                runat="server" ControlToValidate="txtUserName" ErrorMessage="Required" Font-Size="8pt"></asp:RequiredFieldValidator>
                        <asp:Label ID="LabelUserCheck" runat="server" ForeColor="Red" Width="178px" Font-Size="9pt"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 113px; height: 27px; text-align: left">
                        <span>Password</span></td>
                    <td style="width: 182px; height: 27px; text-align: left">
                        <asp:TextBox ID="txtPassword" runat="server" BackColor="White" BorderStyle="None"
                            TextMode="Password" Width="121px" MaxLength="10"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                                runat="server" ControlToValidate="txtPassword" ErrorMessage="Required" Font-Size="10pt"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="width: 113px; height: 3px; text-align: left">
                        <span>Confirm Password</span></td>
                    <td style="width: 182px; height: 3px; text-align: left">
                        <asp:TextBox ID="txtConfirm" runat="server" Width="117px" TextMode="Password" MaxLength="10"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword"
                            ControlToValidate="txtConfirm" ErrorMessage="Password Must Match" Font-Size="9pt" Display="Dynamic"></asp:CompareValidator></td>
                </tr>
                <tr>
                    <td style="width: 113px; height: 16px; text-align: left">
                        <span>Age</span></td>
                    <td style="width: 182px; height: 16px; text-align: left">
                        <asp:DropDownList ID="txtAge" runat="server" Width="96px">
                            <asp:ListItem Value="18">18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>
                            <asp:ListItem>26</asp:ListItem>
                            <asp:ListItem>27</asp:ListItem>
                            <asp:ListItem>28</asp:ListItem>
                            <asp:ListItem>29</asp:ListItem>
                            <asp:ListItem>30</asp:ListItem>
                            <asp:ListItem>31</asp:ListItem>
                            <asp:ListItem>32</asp:ListItem>
                            <asp:ListItem>33</asp:ListItem>
                            <asp:ListItem>34</asp:ListItem>
                            <asp:ListItem>35</asp:ListItem>
                            <asp:ListItem>36</asp:ListItem>
                            <asp:ListItem>37</asp:ListItem>
                            <asp:ListItem>38</asp:ListItem>
                            <asp:ListItem>39</asp:ListItem>
                            <asp:ListItem>40</asp:ListItem>
                            <asp:ListItem>41</asp:ListItem>
                            <asp:ListItem>42</asp:ListItem>
                            <asp:ListItem>43</asp:ListItem>
                            <asp:ListItem>44</asp:ListItem>
                            <asp:ListItem>45</asp:ListItem>
                            <asp:ListItem>46</asp:ListItem>
                            <asp:ListItem>47</asp:ListItem>
                            <asp:ListItem>48</asp:ListItem>
                            <asp:ListItem>49</asp:ListItem>
                            <asp:ListItem>50</asp:ListItem>
                            <asp:ListItem>51</asp:ListItem>
                            <asp:ListItem>52</asp:ListItem>
                            <asp:ListItem>53</asp:ListItem>
                            <asp:ListItem>54</asp:ListItem>
                            <asp:ListItem>55</asp:ListItem>
                            <asp:ListItem>56</asp:ListItem>
                            <asp:ListItem>57</asp:ListItem>
                            <asp:ListItem>58</asp:ListItem>
                            <asp:ListItem>59</asp:ListItem>
                            <asp:ListItem>60</asp:ListItem>
                            <asp:ListItem>61</asp:ListItem>
                            <asp:ListItem>62</asp:ListItem>
                            <asp:ListItem>63</asp:ListItem>
                            <asp:ListItem>64</asp:ListItem>
                            <asp:ListItem>65</asp:ListItem>
                            <asp:ListItem>66</asp:ListItem>
                            <asp:ListItem>67</asp:ListItem>
                            <asp:ListItem>68</asp:ListItem>
                            <asp:ListItem>69</asp:ListItem>
                            <asp:ListItem>70</asp:ListItem>
                            <asp:ListItem>71</asp:ListItem>
                            <asp:ListItem>72</asp:ListItem>
                            <asp:ListItem>73</asp:ListItem>
                            <asp:ListItem>74</asp:ListItem>
                            <asp:ListItem>75</asp:ListItem>
                            <asp:ListItem>76</asp:ListItem>
                            <asp:ListItem>77</asp:ListItem>
                            <asp:ListItem>78</asp:ListItem>
                            <asp:ListItem>79</asp:ListItem>
                            <asp:ListItem>80</asp:ListItem>
                            <asp:ListItem>81</asp:ListItem>
                            <asp:ListItem>82</asp:ListItem>
                            <asp:ListItem>83</asp:ListItem>
                            <asp:ListItem>84</asp:ListItem>
                            <asp:ListItem>85</asp:ListItem>
                            <asp:ListItem>86</asp:ListItem>
                            <asp:ListItem>87</asp:ListItem>
                            <asp:ListItem>88</asp:ListItem>
                            <asp:ListItem>89</asp:ListItem>
                            <asp:ListItem>90</asp:ListItem>
                            <asp:ListItem>91</asp:ListItem>
                            <asp:ListItem>92</asp:ListItem>
                            <asp:ListItem>93</asp:ListItem>
                            <asp:ListItem>94</asp:ListItem>
                            <asp:ListItem>95</asp:ListItem>
                            <asp:ListItem>96</asp:ListItem>
                            <asp:ListItem>97</asp:ListItem>
                            <asp:ListItem>98</asp:ListItem>
                            <asp:ListItem>99</asp:ListItem>
                            <asp:ListItem>100</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        Years.<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAge"
                            ErrorMessage="Required" Font-Size="10pt"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="width: 113px; height: 16px; text-align: left">
                        <span>Sex</span></td>
                    <td style="width: 182px; height: 16px; text-align: left">
                        <asp:DropDownList ID="txtSex" runat="server" Width="94px">
                            <asp:ListItem Selected="True">Female</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td style="width: 113px; height: 16px; text-align: left; position: static;">
                        <span>Birthday</span></td>
                    <td style="width: 182px; height: 16px; text-align: left; position: static;">
                        <asp:DropDownList ID="txtMonth" runat="server" Width="131px">
                            <asp:ListItem Selected="True">Month</asp:ListItem>
                            <asp:ListItem>January</asp:ListItem>
                            <asp:ListItem>February</asp:ListItem>
                            <asp:ListItem>March</asp:ListItem>
                            <asp:ListItem>April</asp:ListItem>
                            <asp:ListItem>May</asp:ListItem>
                            <asp:ListItem>June</asp:ListItem>
                            <asp:ListItem>July</asp:ListItem>
                            <asp:ListItem>August</asp:ListItem>
                            <asp:ListItem>September</asp:ListItem>
                            <asp:ListItem>October</asp:ListItem>
                            <asp:ListItem>November</asp:ListItem>
                            <asp:ListItem>December</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="txtDay" runat="server" Width="64px">
                            <asp:ListItem>Day</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>
                            <asp:ListItem>26</asp:ListItem>
                            <asp:ListItem>27</asp:ListItem>
                            <asp:ListItem>28</asp:ListItem>
                            <asp:ListItem>29</asp:ListItem>
                            <asp:ListItem>30</asp:ListItem>
                            <asp:ListItem>31</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="txtYear" runat="server" Width="79px">
                            <asp:ListItem>1990</asp:ListItem>
                            <asp:ListItem>1989</asp:ListItem>
                            <asp:ListItem>1988</asp:ListItem>
                            <asp:ListItem>1987</asp:ListItem>
                            <asp:ListItem>1986</asp:ListItem>
                            <asp:ListItem>1985</asp:ListItem>
                            <asp:ListItem>1984</asp:ListItem>
                            <asp:ListItem>1983</asp:ListItem>
                            <asp:ListItem>1982</asp:ListItem>
                            <asp:ListItem>1981</asp:ListItem>
                            <asp:ListItem>1980</asp:ListItem>
                            <asp:ListItem>1979</asp:ListItem>
                            <asp:ListItem>1978</asp:ListItem>
                            <asp:ListItem>1977</asp:ListItem>
                            <asp:ListItem>1976</asp:ListItem>
                            <asp:ListItem>1975</asp:ListItem>
                            <asp:ListItem>1974</asp:ListItem>
                            <asp:ListItem>1973</asp:ListItem>
                            <asp:ListItem>1972</asp:ListItem>
                            <asp:ListItem>1971</asp:ListItem>
                            <asp:ListItem>1970</asp:ListItem>
                            <asp:ListItem>1969</asp:ListItem>
                            <asp:ListItem>1968</asp:ListItem>
                            <asp:ListItem>1967</asp:ListItem>
                            <asp:ListItem>1966</asp:ListItem>
                            <asp:ListItem>1965</asp:ListItem>
                            <asp:ListItem>1964</asp:ListItem>
                            <asp:ListItem>1963</asp:ListItem>
                            <asp:ListItem>1962</asp:ListItem>
                            <asp:ListItem>1961</asp:ListItem>
                            <asp:ListItem>1960</asp:ListItem>
                            <asp:ListItem>1959</asp:ListItem>
                            <asp:ListItem>1958</asp:ListItem>
                            <asp:ListItem>1957</asp:ListItem>
                            <asp:ListItem>1956</asp:ListItem>
                            <asp:ListItem>1955</asp:ListItem>
                            <asp:ListItem>1954</asp:ListItem>
                            <asp:ListItem>1953</asp:ListItem>
                            <asp:ListItem>1952</asp:ListItem>
                            <asp:ListItem>1951</asp:ListItem>
                            <asp:ListItem>1950</asp:ListItem>
                            <asp:ListItem>1949</asp:ListItem>
                            <asp:ListItem>1948</asp:ListItem>
                            <asp:ListItem>1947</asp:ListItem>
                            <asp:ListItem>1946</asp:ListItem>
                            <asp:ListItem>1945</asp:ListItem>
                            <asp:ListItem>1944</asp:ListItem>
                            <asp:ListItem>1943</asp:ListItem>
                            <asp:ListItem>1942</asp:ListItem>
                            <asp:ListItem>1941</asp:ListItem>
                            <asp:ListItem>1940</asp:ListItem>
                            <asp:ListItem>1939</asp:ListItem>
                            <asp:ListItem>1938</asp:ListItem>
                            <asp:ListItem>1937</asp:ListItem>
                            <asp:ListItem>1936</asp:ListItem>
                            <asp:ListItem>1935</asp:ListItem>
                            <asp:ListItem>1934</asp:ListItem>
                            <asp:ListItem>1933</asp:ListItem>
                            <asp:ListItem>1932</asp:ListItem>
                            <asp:ListItem>1931</asp:ListItem>
                            <asp:ListItem>1930</asp:ListItem>
                            <asp:ListItem>1929</asp:ListItem>
                            <asp:ListItem>1928</asp:ListItem>
                            <asp:ListItem>1927</asp:ListItem>
                            <asp:ListItem>1926</asp:ListItem>
                            <asp:ListItem>1925</asp:ListItem>
                            <asp:ListItem>1924</asp:ListItem>
                            <asp:ListItem>1923</asp:ListItem>
                            <asp:ListItem>1922</asp:ListItem>
                            <asp:ListItem>1921</asp:ListItem>
                            <asp:ListItem>1920</asp:ListItem>
                            <asp:ListItem>1919</asp:ListItem>
                            <asp:ListItem>1918</asp:ListItem>
                            <asp:ListItem>1917</asp:ListItem>
                            <asp:ListItem>1916</asp:ListItem>
                            <asp:ListItem>1915</asp:ListItem>
                            <asp:ListItem>1914</asp:ListItem>
                            <asp:ListItem>1913</asp:ListItem>
                            <asp:ListItem>1912</asp:ListItem>
                            <asp:ListItem>1911</asp:ListItem>
                            <asp:ListItem>1910</asp:ListItem>
                            <asp:ListItem>1909</asp:ListItem>
                            <asp:ListItem>1908</asp:ListItem>
                            <asp:ListItem Selected="True">Year</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td style="width: 113px; height: 16px; text-align: left">
                        <span>Height</span></td>
                    <td style="width: 182px; height: 16px; text-align: left">
                        <span>
                            <asp:DropDownList ID="txtHeight" runat="server" Width="82px">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem Selected="True">4</asp:ListItem>
                                <asp:ListItem>4.1</asp:ListItem>
                                <asp:ListItem>4.2</asp:ListItem>
                                <asp:ListItem>4.3</asp:ListItem>
                                <asp:ListItem>4.4</asp:ListItem>
                                <asp:ListItem>4.5</asp:ListItem>
                                <asp:ListItem>4.6</asp:ListItem>
                                <asp:ListItem>4.7</asp:ListItem>
                                <asp:ListItem>4.8</asp:ListItem>
                                <asp:ListItem>4.9</asp:ListItem>
                                <asp:ListItem>4.10</asp:ListItem>
                                <asp:ListItem>4.11</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>5.1</asp:ListItem>
                                <asp:ListItem>5.2</asp:ListItem>
                                <asp:ListItem>5.3</asp:ListItem>
                                <asp:ListItem>5.4</asp:ListItem>
                                <asp:ListItem>5.5</asp:ListItem>
                                <asp:ListItem>5.6</asp:ListItem>
                                <asp:ListItem>5.7</asp:ListItem>
                                <asp:ListItem>5.8</asp:ListItem>
                                <asp:ListItem>5.9</asp:ListItem>
                                <asp:ListItem>5.10</asp:ListItem>
                                <asp:ListItem>5.11</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>6.1</asp:ListItem>
                                <asp:ListItem>6.2</asp:ListItem>
                                <asp:ListItem>6.3</asp:ListItem>
                                <asp:ListItem>6.4</asp:ListItem>
                                <asp:ListItem>6.5</asp:ListItem>
                                <asp:ListItem>6.6</asp:ListItem>
                                <asp:ListItem>6.7</asp:ListItem>
                                <asp:ListItem>6.8</asp:ListItem>
                                <asp:ListItem>6.9</asp:ListItem>
                                <asp:ListItem>6.10</asp:ListItem>
                                <asp:ListItem>6.11</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>7.1</asp:ListItem>
                                <asp:ListItem>7.2</asp:ListItem>
                                <asp:ListItem>7.3</asp:ListItem>
                                <asp:ListItem>7.4</asp:ListItem>
                                <asp:ListItem>7.5</asp:ListItem>
                                <asp:ListItem>7.6</asp:ListItem>
                                <asp:ListItem>7.7</asp:ListItem>
                                <asp:ListItem>7.8</asp:ListItem>
                                <asp:ListItem>7.9</asp:ListItem>
                                <asp:ListItem>7.10</asp:ListItem>
                                <asp:ListItem>7.11</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                            </asp:DropDownList>
                            Feet</span></td>
                </tr>
                <tr>
                    <td style="width: 113px; text-align: left">
                        <span>
                            <asp:Label ID="Label9" runat="server" Font-Size="10pt" Text="Country"></asp:Label></span></td>
                    <td style="width: 182px; text-align: left">
                        <asp:DropDownList ID="txtcountry" runat="server" Width="149px">
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
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6"
                                runat="server" ControlToValidate="txtCountry" ErrorMessage="Required" Font-Size="10pt"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="width: 113px; height: 20px; text-align: left">
                        <span>City</span></td>
                    <td style="width: 182px; height: 20px; text-align: left">
                        <asp:TextBox ID="txtCity" runat="server" BackColor="White" BorderStyle="None" Visible="False"
                            Width="229px" MaxLength="20"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                                runat="server" ControlToValidate="txtCity" ErrorMessage="Required" Font-Size="10pt"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="width: 113px; height: 20px; text-align: left">
                        <span>Locality</span></td>
                    <td style="width: 182px; height: 20px; text-align: left">
                        <asp:TextBox ID="txtLocality" runat="server" Width="223px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 113px; height: 24px; text-align: left" valign="top">
                        <span>About Me</span></td>
                    <td style="width: 182px; height: 24px; text-align: left">
                        <asp:TextBox ID="txtAbout" runat="server" Height="129px" TextMode="MultiLine" Width="491px"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td style="width: 113px; height: 28px; text-align: left">
                        <span>Here For</span></td>
                    <td style="width: 182px; height: 28px; text-align: left">
                        <asp:DropDownList ID="txtHereFor" runat="server" Width="229px">
                            <asp:ListItem Selected="True">Friends</asp:ListItem>
                            <asp:ListItem>Dating Men</asp:ListItem>
                            <asp:ListItem>Dating Women</asp:ListItem>
                            <asp:ListItem>Dating Men and Women</asp:ListItem>
                            <asp:ListItem>Fun</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td style="width: 113px; height: 28px; text-align: left">
                        <span>School</span></td>
                    <td style="width: 182px; height: 28px; text-align: left">
                        <asp:TextBox ID="txtSchool" runat="server" Width="223px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 113px; height: 28px; text-align: left">
                        <span>College</span></td>
                    <td style="width: 182px; height: 28px; text-align: left">
                        <asp:TextBox ID="txtCollege" runat="server" Width="223px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 113px; height: 28px; text-align: left">
                        <span>Profession</span></td>
                    <td style="width: 182px; height: 28px; text-align: left">
                        <asp:TextBox ID="txtProfession" runat="server" Width="223px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 113px; height: 28px; text-align: left">
                        <span>Contact Email</span></td>
                    <td style="width: 182px; height: 28px; text-align: left">
                        <asp:TextBox ID="txtContactEmail" runat="server" Width="223px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 113px; height: 28px; text-align: left">
                        <span>Mobile Number</span></td>
                    <td style="width: 182px; height: 28px; text-align: left">
                        <asp:TextBox ID="txtMobile" runat="server" Width="223px"></asp:TextBox><span>Optional</span></td>
                </tr>
                <tr>
                    <td style="width: 113px; height: 28px; text-align: left">
                        <span>Messenger -1</span></td>
                    <td style="width: 182px; height: 28px; text-align: left">
                        <asp:TextBox ID="txtYahoo" runat="server" Width="223px">Yahoo !</asp:TextBox>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td style="width: 113px; height: 28px; text-align: left">
                        <span>Messenger -2</span></td>
                    <td style="width: 182px; height: 28px; text-align: left">
                        <asp:TextBox ID="txtGtalk" runat="server" Width="221px">GoogleTalk</asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 113px; height: 28px; text-align: left">
                        <span>Messenger- 3</span></td>
                    <td style="width: 182px; height: 28px; text-align: left">
                        <asp:TextBox ID="txtMSN" runat="server" Width="223px">MSN</asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 113px; height: 28px; text-align: left">
                        <span>
                            <asp:TextBox ID="txtDate" runat="server" BackColor="White" BorderStyle="None" ReadOnly="True"
                                Visible="False" Width="1px"></asp:TextBox></span></td>
                    <td style="width: 182px; height: 28px; text-align: left" align="center">
                        <asp:Button ID="btnSubmit" runat="server" Height="30px" Text="Create my account" Width="229px" /></td>
                </tr>
            </table>
            </center>
    </div>
</asp:Content>

