<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmreg.aspx.cs" Inherits="OnlineExamSittingArrangement.frmreg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <div class="flt1 rp_inner"> <span class="flt rp_txtour">Registration </span>&nbsp;<span class="flt rp_nameband"><img src="images/cp_nameband.gif" width="287" height="14" alt="" /></span><img width="95" height="93" alt="" class="flt1 rp_abacus" src="images/welcome.jpg" />
 &nbsp; <span class="flt rp_weltxt"> 
 
 <table cellspacing="1" class="style4" style="border-style: groove">
                    <tr>
                        <td class="style24">
                            &nbsp;</td>
                        <td class="style10" style="width: 236px">
                            &nbsp;</td>
                        <td class="style11" style="width: 119px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style24">
                            &nbsp;&nbsp;&nbsp;
                            Enrollment No :</td>
                        <td class="style10" style="width: 236px; color: #FF0000; font-size: large;">
                            &nbsp;<asp:TextBox ID="txtenrollment" runat="server"></asp:TextBox>
                            &nbsp;*</td>
                        <td class="style11" style="width: 119px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style24">
                            &nbsp;</td>
                        <td class="style10" style="width: 236px">
                            &nbsp;</td>
                        <td class="style11" style="width: 119px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style24">
                            &nbsp;&nbsp;
                            Candidate Name:</td>
                        <td class="style10" style="width: 236px">
                            &nbsp;
                            <asp:TextBox ID="txtname" runat="server" Width="204px"></asp:TextBox>
                            <span class="style28"><strong style="color: #FF0000; font-size: large;">&nbsp; *</strong></span></td>
                        <td class="style11" valign="top" rowspan="6" style="width: 119px">
                            <asp:Image ID="Image1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="style19">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style25">
                            &nbsp;&nbsp;
                            Gender:</td>
                        <td class="style21" style="width: 236px">
                            <asp:RadioButton ID="rbtmale" runat="server" Text="Male" />
&nbsp;
                            <asp:RadioButton ID="rbtfemale" runat="server" Text="Female" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style13" colspan="2">
                            </td>
                    </tr>
                    <tr>
                        <td class="style26">
                            &nbsp;&nbsp;
                            DOB (DD/MM/YYYY)</td>
                        <td class="style22" style="width: 236px">
                            &nbsp;
                            <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
                            <span class="style28"><strong>&nbsp;</strong></span></td>
                    </tr>
                    <tr>
                        <td class="style8" colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style26">
                            &nbsp;&nbsp;
                            Religion :</td>
                        <td class="style22" style="width: 236px">
                            &nbsp;<asp:DropDownList ID="ddpreligion" runat="server">
                                <asp:ListItem>Hindu</asp:ListItem>
                                <asp:ListItem>Muslim</asp:ListItem>
                                <asp:ListItem>Christian</asp:ListItem>
                                <asp:ListItem>Sikh</asp:ListItem>
                                <asp:ListItem>Buddhist</asp:ListItem>
                                <asp:ListItem>Jain</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList> </td>
                        <td class="style12" style="width: 119px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style26">
                            &nbsp;</td>
                        <td class="style22" style="width: 236px">
                            &nbsp;</td>
                        <td class="style12" style="width: 119px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style26">
                            &nbsp;&nbsp; Cetegory&nbsp;:</td>
                        <td class="style22" style="width: 236px">
                            &nbsp;<asp:DropDownList 
                                ID="ddpcatog" runat="server" Height="16px" Width="77px">
                             <asp:ListItem>Open</asp:ListItem>
                              <asp:ListItem>ST</asp:ListItem>
                               <asp:ListItem>SC</asp:ListItem>
                                <asp:ListItem>OBC</asp:ListItem>
                            </asp:DropDownList> </td>
                        <td class="style12" style="width: 119px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style26">
                            &nbsp;</td>
                        <td class="style22" style="width: 236px">
                            &nbsp;</td>
                        <td class="style12" style="width: 119px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style26" valign="top">
                            &nbsp;&nbsp;
                            Address :</td>
                        <td class="style22" style="width: 236px">
                            &nbsp;<asp:TextBox ID="txtadd" 
                                runat="server" TextMode="MultiLine"></asp:TextBox></td>
                        <td class="style12" style="width: 119px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style26">
                            &nbsp;</td>
                        <td class="style22" style="width: 236px">
                            &nbsp;</td>
                        <td class="style12" style="width: 119px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style26">
                            &nbsp;&nbsp;Department:<br />
                            </td>
                        <td class="style22" style="width: 236px">
                            &nbsp;<asp:DropDownList ID="ddpDepartment" runat="server" 
                            Font-Bold="True" Height="28px" Width="169px">
                             <asp:ListItem>IT</asp:ListItem>
                                                <asp:ListItem>CM</asp:ListItem>
                                                <asp:ListItem>CE</asp:ListItem>
                                                <asp:ListItem>ME</asp:ListItem>
                                                <asp:ListItem>EE</asp:ListItem>
                                                <asp:ListItem>ETX</asp:ListItem>
                        </asp:DropDownList> </td>
                        <td class="style12" style="width: 119px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style26">
                            &nbsp;</td>
                        <td class="style22" style="width: 236px">
                            &nbsp;</td>
                        <td class="style12" style="width: 119px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style27">
                            &nbsp;&nbsp; Taluka:</td>
                        <td class="style23" style="width: 236px">
                            &nbsp;<asp:TextBox ID="txttaluka" runat="server"></asp:TextBox>
                            <strong>
                            &nbsp;</strong></td>
                        <td class="style18" style="width: 119px">
                            </td>
                    </tr>
                    <tr>
                        <td class="style27">
                            </td>
                        <td class="style23" style="width: 236px">
                            </td>
                        <td class="style18" style="width: 119px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style26">
                            &nbsp;&nbsp;&nbsp;PIN:</td>
                        <td class="style22" style="width: 236px">
                            &nbsp;<asp:TextBox ID="txtpin" runat="server"></asp:TextBox>
                            &nbsp; 
                            </td>
                        <td class="style12" style="width: 119px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style26">
                            &nbsp;</td>
                        <td class="style22" style="width: 236px">
                            &nbsp;</td>
                        <td class="style12" style="width: 119px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style26">
                            &nbsp;&nbsp; Mobile No :&nbsp;</td>
                        <td class="style22" style="width: 236px">
                            &nbsp;<asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
                            &nbsp; 
                            <span class="style28"><strong>*</strong></span></td>
                        <td class="style12" style="width: 119px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style26">
                            &nbsp;</td>
                        <td class="style22" style="width: 236px">
                            &nbsp;</td>
                        <td class="style12" style="width: 119px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style26">
                            &nbsp;&nbsp; E-Mail ID :&nbsp;</td>
                        <td class="style22" style="width: 236px">
                            &nbsp;<asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                            <span 
                                class="style28"><strong> &nbsp;</strong></span></td>
                        <td class="style12" style="width: 119px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style26">
                            &nbsp;</td>
                        <td class="style22" style="width: 236px">
                            &nbsp;</td>
                        <td class="style12" style="width: 119px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style26">
                            &nbsp;</td>
                        <td class="style22" style="width: 236px" align="center" valign="middle">
                         <asp:Button ID="btnsave" runat="server" Text="Registration" Width="110px" 
                                onclick="btnsave_Click" ForeColor="#3333CC" />
&nbsp;&nbsp;&nbsp;<asp:Button ID="btnclear" runat="server" Text="Clear" Width="50px" 
                                onclick="btnclear_Click" ForeColor="#3333CC" />
                            &nbsp;</td>
                        <td class="style12" style="width: 119px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style26">
                            &nbsp;</td>
                        <td class="style22" style="width: 236px">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#FF3300" 
                                Text="Label"></asp:Label>
                        </td>
                        <td class="style12" style="width: 119px">
                            &nbsp;</td>
                    </tr>
                </table>

 <br />
         
          &nbsp;</span></div>
        <img src="images/rp_bottcorn.gif" width="560" height="14" alt="" class="flt1" /> </div>

</asp:Content>
