<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmshowsit.aspx.cs" Inherits="OnlineExamSittingArrangement.frmshowsit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="flt1 rp_inner"> <span class="flt rp_txtour">Show Sitting </span>&nbsp;<span class="flt rp_nameband"><img src="images/cp_nameband.gif" width="287" height="14" alt="" /></span><img width="95" height="93" alt="" class="flt1 rp_abacus" src="images/welcome.jpg" />
 &nbsp; <span class="flt rp_weltxt"> 
 
 <table cellspacing="1" class="style4" style="border-style: groove; width: 505px;">
                    <tr>
                        <td class="style24">
                            Department :</td>
                        <td class="style10" style="width: 236px">
                            <asp:Label ID="lbldept" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                        </td>
                        <td class="style11" style="width: 79px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style24">
                            &nbsp;&nbsp;&nbsp;
                            Enrollment No :</td>
                        <td class="style10" style="width: 236px; color: #FF0000; font-size: large;" 
                            valign="top">
                            &nbsp;<asp:TextBox ID="txtenrollment" runat="server"></asp:TextBox>
                            &nbsp;*&nbsp;&nbsp;<asp:Button ID="btnshow" runat="server" Text="Show" onclick="btnshow_Click"  />
                        </td>
                        <td class="style11" style="width: 79px">
                            <asp:Button ID="btnclose" runat="server" Text="Close" 
                                onclick="btnclose_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style24">
                            Floor No :
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                        </td>
                        <td class="style10" style="width: 236px">
                            Room No : 
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
&nbsp;</td>
                        <td class="style11" style="width: 79px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style24" align="left" colspan="3" valign="top" style="height: 330px">
                            <table style="width: 100%; height: 322px">
                                <tr>
                                    <td align="center" style="width: 93px" valign="middle">
                                        R111</td>
                                    <td align="center" style="width: 99px" valign="middle">
                                        R2</td>
                                    <td align="center" style="width: 97px" valign="middle">
                                        R3</td>
                                    <td align="center" style="width: 97px" valign="middle">
                                        R4</td>
                                    <td align="center" valign="middle">
                                        R5</td>
                                </tr>
                                <tr>
                                    <td align="center" style="width: 93px" valign="middle">
                                        <asp:Button ID="btn10" runat="server" Text="10" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 99px" valign="middle">
                                        <asp:Button ID="btn20" runat="server" Text="20" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 97px" valign="middle">
                                        <asp:Button ID="btn30" runat="server" Text="30" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 97px" valign="middle">
                                        <asp:Button ID="btn40" runat="server" Text="40" Width="55px" />
                                    </td>
                                    <td align="center" valign="middle">
                                        <asp:Button ID="btn50" runat="server" Text="50" Width="55px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="width: 93px" valign="middle">
                                        <asp:Button ID="btn9" runat="server" Text="9" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 99px" valign="middle">
                                        <asp:Button ID="btn19" runat="server" Text="19" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 97px" valign="middle">
                                        <asp:Button ID="btn29" runat="server" Text="29" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 97px" valign="middle">
                                        <asp:Button ID="btn39" runat="server" Text="39" Width="55px" />
                                    </td>
                                    <td align="center" valign="middle">
                                        <asp:Button ID="btn49" runat="server" Text="49" Width="55px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="width: 93px" valign="middle">
                                        <asp:Button ID="btn8" runat="server" Text="8" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 99px" valign="middle">
                                        <asp:Button ID="btn18" runat="server" Text="18" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 97px" valign="middle">
                                        <asp:Button ID="btn28" runat="server" Text="28" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 97px" valign="middle">
                                        <asp:Button ID="btn38" runat="server" Text="38" Width="55px" />
                                    </td>
                                    <td align="center" valign="middle">
                                        <asp:Button ID="btn48" runat="server" Text="48" Width="55px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="width: 93px" valign="middle">
                                        <asp:Button ID="btn7" runat="server" Text="7" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 99px" valign="middle">
                                        <asp:Button ID="btn17" runat="server" Text="17" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 97px" valign="middle">
                                        <asp:Button ID="btn27" runat="server" Text="27" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 97px" valign="middle">
                                        <asp:Button ID="btn37" runat="server" Text="37" Width="55px" />
                                    </td>
                                    <td align="center" valign="middle">
                                        <asp:Button ID="btn47" runat="server" Text="47" Width="55px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="width: 93px" valign="middle">
                                        <asp:Button ID="btn6" runat="server" Text="6" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 99px" valign="middle">
                                        <asp:Button ID="btn16" runat="server" Text="16" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 97px" valign="middle">
                                        <asp:Button ID="btn26" runat="server" Text="26" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 97px" valign="middle">
                                        <asp:Button ID="btn36" runat="server" Text="36" Width="55px" />
                                    </td>
                                    <td align="center" valign="middle">
                                        <asp:Button ID="btn46" runat="server" Text="46" Width="55px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="width: 93px" valign="middle">
                                        <asp:Button ID="btn5" runat="server" Text="5" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 99px" valign="middle">
                                        <asp:Button ID="btn15" runat="server" Text="15" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 97px" valign="middle">
                                        <asp:Button ID="btn25" runat="server" Text="25" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 97px" valign="middle">
                                        <asp:Button ID="btn35" runat="server" Text="35" Width="55px" />
                                    </td>
                                    <td align="center" valign="middle">
                                        <asp:Button ID="btn45" runat="server" Text="45" Width="55px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="width: 93px" valign="middle">
                                        <asp:Button ID="btn4" runat="server" Text="4" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 99px" valign="middle">
                                        <asp:Button ID="btn14" runat="server" Text="14" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 97px" valign="middle">
                                        <asp:Button ID="btn24" runat="server" Text="24" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 97px" valign="middle">
                                        <asp:Button ID="btn34" runat="server" Text="34" Width="55px" />
                                    </td>
                                    <td align="center" valign="middle">
                                        <asp:Button ID="btn44" runat="server" Text="44" Width="55px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="width: 93px" valign="middle">
                                        <asp:Button ID="btn3" runat="server" Text="3" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 99px" valign="middle">
                                        <asp:Button ID="btn13" runat="server" Text="13" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 97px" valign="middle">
                                        <asp:Button ID="btn23" runat="server" Text="23" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 97px" valign="middle">
                                        <asp:Button ID="btn33" runat="server" Text="33" Width="55px" />
                                    </td>
                                    <td align="center" valign="middle">
                                        <asp:Button ID="btn43" runat="server" Text="43" Width="55px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="width: 93px" valign="middle">
                                        <asp:Button ID="btn2" runat="server" Text="2" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 99px" valign="middle">
                                        <asp:Button ID="btn12" runat="server" Text="12" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 97px" valign="middle">
                                        <asp:Button ID="btn22" runat="server" Text="22" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 97px" valign="middle">
                                        <asp:Button ID="btn32" runat="server" Text="32" Width="55px" />
                                    </td>
                                    <td align="center" valign="middle">
                                        <asp:Button ID="btn42" runat="server" Text="42" Width="55px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="width: 93px" valign="middle">
                                        <asp:Button ID="btn1" runat="server" Text="1" Width="55px" 
                                            onclick="btn1_Click" />
                                    </td>
                                    <td align="center" style="width: 99px" valign="middle">
                                        <asp:Button ID="btn11" runat="server" Text="11" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 97px" valign="middle">
                                        <asp:Button ID="btn21" runat="server" Text="21" Width="55px" />
                                    </td>
                                    <td align="center" style="width: 97px" valign="middle">
                                        <asp:Button ID="btn31" runat="server" Text="31" Width="55px" />
                                    </td>
                                    <td align="center" valign="middle">
                                        <asp:Button ID="btn41" runat="server" Text="41" Width="55px" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="style24">
                            &nbsp;</td>
                        <td class="style10" style="width: 236px">
                            &nbsp;</td>
                        <td class="style11" style="width: 79px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style26">
                            &nbsp;</td>
                        <td class="style22" style="width: 236px">
                            &nbsp;</td>
                        <td class="style12" style="width: 79px">
                            &nbsp;</td>
                    </tr>
                </table>

 <br />
         
          &nbsp;</span></div>
        <img src="images/rp_bottcorn.gif" width="560" height="14" alt="" class="flt1" /> </div>


</asp:Content>
