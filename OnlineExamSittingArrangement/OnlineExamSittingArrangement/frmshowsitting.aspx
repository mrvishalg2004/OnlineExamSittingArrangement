<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmshowsitting.aspx.cs" Inherits="OnlineExamSittingArrangement.frmshowsitting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="flt1 rp_inner"> <span class="flt rp_txtour">Show Sitting </span>
       <span class="flt rp_nameband"><img src="images/cp_nameband.gif" width="200" height="14" alt="" /></span><img width="95" height="93" alt="" class="flt1 rp_abacus" src="images/welcome.jpg" />
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
                        <td class="style24" colspan="2">
                            &nbsp;&nbsp;&nbsp;
                            Enrollment No :&nbsp;
                            <asp:TextBox ID="txtenrollment" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnshow" runat="server" onclick="btnshow_Click" style="font-weight: 700" 
                                Text="Show" />
                        </td>
                        <td class="style11" style="width: 63px">
                            &nbsp;</td>
                        <td class="style11" style="width: 79px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style24" style="width: 112px" align="right" valign="top">
                           
                        </td>
                        <td class="style10" style="width: 181px; color: #FF0000; font-size: large;" 
                            valign="top">
                            &nbsp;</td>
                        <td class="style11" style="width: 63px">
                            &nbsp;</td>
                        <td class="style11" style="width: 79px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style24" align="left" colspan="2" valign="top">
                            
                            <asp:GridView ID="dgvSchedule" runat="server" AutoGenerateColumns="False" Width="343px" 
                             Height="82px">
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
                            &nbsp;</td>
                        <td class="style11" style="width: 63px">
                            &nbsp;</td>
                        <td class="style11" style="width: 79px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style26" style="width: 112px">
                            &nbsp;</td>
                        <td class="style22" style="width: 181px">
                            &nbsp;</td>
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
