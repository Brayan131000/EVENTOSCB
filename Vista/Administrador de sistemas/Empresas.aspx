<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empresas.aspx.cs" Inherits="Vista.Administrador_de_sistemas.Empresas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 94%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 324px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            width: 54px;
        }
        .auto-style6 {
            width: 603px;
        }
        .auto-style7 {
            width: 584px;
        }
        .auto-style8 {
            margin-left: 8px;
        }
        .auto-style9 {
            width: 227px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btnbuscar" runat="server" Height="21px" Text="Buscar" Width="54px" OnClick="btnbuscar_Click" />
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txbbuscar" runat="server" CssClass="auto-style4" Width="133px"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td colspan="5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="5">
                   <center><asp:GridView ID="gvEmpresa" runat="server" AutoGenerateColumns="False" Width="896px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="auto-style4" ForeColor="Black" GridLines="Vertical" Height="53px" OnRowUpdating="gvEmpresa_RowUpdating" OnRowEditing="gvEmpresa_RowEditing" OnRowCancelingEdit="gvEmpresa_RowCancelingEdit" AllowPaging="True" OnPageIndexChanging="gvEmpresa_PageIndexChanging" PageSize="6">
                       <AlternatingRowStyle BackColor="#CCCCCC" />
                       <Columns>
                           <asp:TemplateField HeaderText="Nit empresa">
                               <EditItemTemplate>
                                   <asp:TextBox ID="txbnitempresa" runat="server" Text='<%# Bind("NitEM") %>'></asp:TextBox>
                               </EditItemTemplate>
                               <ItemTemplate>
                                   <asp:Label ID="Label1" runat="server" Text='<%# Bind("NitEM") %>'></asp:Label>
                               </ItemTemplate>
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="Documento administrador">
                               <EditItemTemplate>
                                   <asp:TextBox ID="txbdocumento" runat="server" Text='<%# Bind("idN_DocumentoEn") %>'></asp:TextBox>
                               </EditItemTemplate>
                               <ItemTemplate>
                                   <asp:Label ID="Label7" runat="server" Text='<%# Bind("idN_DocumentoEn") %>'></asp:Label>
                               </ItemTemplate>
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="Tipo de empresa">
                               <EditItemTemplate>
                                   <asp:TextBox ID="txbtipoempresa" runat="server" Text='<%# Bind("per_clien") %>'></asp:TextBox>
                               </EditItemTemplate>
                               <ItemTemplate>
                                   <asp:Label ID="Label2" runat="server" Text='<%# Bind("per_clien") %>'></asp:Label>
                               </ItemTemplate>
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="Nombre">
                               <EditItemTemplate>
                                   <asp:TextBox ID="txbnombre" runat="server" Text='<%# Bind("nombre") %>'></asp:TextBox>
                               </EditItemTemplate>
                               <ItemTemplate>
                                   <asp:Label ID="Label3" runat="server" Text='<%# Bind("nombre") %>'></asp:Label>
                               </ItemTemplate>
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="Dirección ">
                               <EditItemTemplate>
                                   <asp:TextBox ID="txbdireccion" runat="server" Text='<%# Bind("direccion") %>'></asp:TextBox>
                               </EditItemTemplate>
                               <ItemTemplate>
                                   <asp:Label ID="Label4" runat="server" Text='<%# Bind("direccion") %>'></asp:Label>
                               </ItemTemplate>
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="Correo">
                               <EditItemTemplate>
                                   <asp:TextBox ID="txbcorreo" runat="server" Text='<%# Bind("correo") %>'></asp:TextBox>
                               </EditItemTemplate>
                               <ItemTemplate>
                                   <asp:Label ID="Label5" runat="server" Text='<%# Bind("correo") %>'></asp:Label>
                               </ItemTemplate>
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="Telefono/Celular">
                               <EditItemTemplate>
                                   <asp:TextBox ID="txbcelular" runat="server" Text='<%# Bind("Telefono_Cel") %>'></asp:TextBox>
                               </EditItemTemplate>
                               <ItemTemplate>
                                   <asp:Label ID="Label6" runat="server" Text='<%# Bind("Telefono_Cel") %>'></asp:Label>
                               </ItemTemplate>
                           </asp:TemplateField>
                           <asp:CommandField HeaderText="Opciones" ShowDeleteButton="True" ShowEditButton="True" ButtonType="Image" CancelImageUrl="~/Imagenes/Cancelar.png" DeleteImageUrl="~/Imagenes/Eliminar (2).png" EditImageUrl="~/Imagenes/editar2.png" UpdateImageUrl="~/Imagenes/Confirmar.png" />
                       </Columns>
                       <FooterStyle BackColor="#CCCCCC" />
                       <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                       <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                       <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                       <SortedAscendingCellStyle BackColor="#F1F1F1" />
                       <SortedAscendingHeaderStyle BackColor="#808080" />
                       <SortedDescendingCellStyle BackColor="#CAC9C9" />
                       <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView></center>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Crear empresa" CssClass="auto-style8" />
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="txtmensaje" runat="server"></asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
