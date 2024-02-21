<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmhalltickeet.aspx.cs" Inherits="OnlineExamSittingArrangement.frmhalltickeet" %>
<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <div class="flt1 rp_inner"> <span class="flt rp_txtour">Attendance</span><span class="flt rp_nameband"><img src="images/cp_nameband.gif" width="200" height="14" alt="" /></span><img width="95" height="93" alt="" class="flt1 rp_abacus" src="images/welcome.jpg" />
 &nbsp; <span class="flt rp_weltxt"> 
 
 <table cellspacing="1" class="style4" 
           style="border-style: groove; height: 86px; width: 504px;">
                    <tr>
                        <td class="style24" style="width: 112px">
                            &nbsp;</td>
                        <td class="style10" style="width: 181px">
                            &nbsp;</td>
                        <td class="style11" style="width: 63px">
                            &nbsp;</td>
                        <td class="style11" style="width: 79px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style24" style="width: 112px">
                            &nbsp;&nbsp;&nbsp;
                            <b>Department</b> :</td>
                        <td class="style10" style="width: 181px; color: #FF0000; font-size: large;" 
                            valign="top">
                            &nbsp;<asp:DropDownList ID="ddpDepartment" runat="server" Height="16px" 
                                Width="83px" AutoPostBack="True" onload="ddpDepartment_Load">

                                 <asp:ListItem>IT</asp:ListItem>
                                                <asp:ListItem>CM</asp:ListItem>
                                                <asp:ListItem>CE</asp:ListItem>
                                                <asp:ListItem>ME</asp:ListItem>
                                                <asp:ListItem>EE</asp:ListItem>
                                                <asp:ListItem>ETX</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="style11" style="width: 63px">
                            Floor No</td>
                        <td class="style11" style="width: 79px">
                            <asp:DropDownList ID="ddpfloor" runat="server" Height="16px" 
                                onload="ddpfloor_Load" Width="75px"  AutoPostBack="True">
                                <asp:ListItem>1st</asp:ListItem>
                                <asp:ListItem>2nd</asp:ListItem>
                                <asp:ListItem>3rd</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style24" style="width: 112px" align="right" valign="top">
                            <asp:CheckBox ID="chkcheck" runat="server" AutoPostBack="True" 
                                onload="chkcheck_Load" style="font-weight: 700" Text="Select All" />
                        </td>
                        <td class="style10" style="width: 181px; color: #FF0000; font-size: large;" 
                            valign="top">
                            &nbsp;</td>
                        <td class="style11" style="width: 63px">
                            Room No</td>
                        <td class="style11" style="width: 79px">
                            <asp:DropDownList ID="ddproomno" runat="server" AutoPostBack="True">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style24" align="left" colspan="2" valign="top">
                            
                            <asp:GridView ID="dgvSchedule" runat="server" AutoGenerateColumns="False" Width="343px" 
                             Height="82px" style="margin-top: 0px">
<Columns>
                <asp:BoundField DataField="EnrolmentNo" HeaderText="Enrol. No" >
                    <ControlStyle Width="0px" />
                    <ItemStyle Width="90px" />
                </asp:BoundField>
                <asp:BoundField DataField="CadidateName" HeaderText="Student Name" >
             

                <ItemStyle Width="210px" />
                </asp:BoundField>
   <asp:TemplateField HeaderText ="Allot">
   	<ItemTemplate>
           <asp:CheckBox ID ="chkup" runat="server" />
       </ItemTemplate>
       <ItemStyle VerticalAlign="Middle" Width="30px" />
    </asp:TemplateField>
  </Columns>
</asp:GridView>
                            
                            </td>
                        <td class="style11" align="left" colspan="2" valign="top">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="140px" 
                             Height="119px">
<Columns>
                <asp:BoundField DataField="RoomNo" HeaderText="Room No" >
                    <ControlStyle Width="0px" />
                    <ItemStyle Width="50px" />
                </asp:BoundField>
                
   <asp:TemplateField HeaderText ="Allot">
   	<ItemTemplate>
           <asp:CheckBox ID ="chkup" runat="server" />
       </ItemTemplate>
       <ItemStyle VerticalAlign="Middle" Width="30px" />
    </asp:TemplateField>
  </Columns>
</asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td class="style24" style="width: 112px">
                            &nbsp;</td>
                        <td class="style10" style="width: 181px" align="center" valign="middle">
                            <asp:Button ID="btnseatbook" runat="server" onclick="btnseatbook_Click" 
                                style="font-weight: 700" Text="Attend" />
                        </td>
                        <td class="style11" style="width: 63px">
                            &nbsp;</td>
                        <td class="style11" style="width: 79px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style26" style="width: 112px">
                            &nbsp;</td>
                        <td class="style22" style="width: 181px">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#FF3300" 
                                Text="Label"></asp:Label>
                        </td>
                        <td class="style12" style="width: 63px">
                            &nbsp;</td>
                        <td class="style12" style="width: 79px">
                            &nbsp;</td>
                    </tr>
                </table>

 <br />
         
          &nbsp;</span></div>
        <img src="images/rp_bottcorn.gif" width="560" height="14" alt="" class="flt1" /> </div>

</asp:Content>
