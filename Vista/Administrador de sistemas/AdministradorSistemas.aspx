<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="AdministradorSistemas.aspx.cs" Inherits="Vista.AdministradorSistemas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, user-scale=no, initial-scale=1.0, maximun-scale=1.0, minimum-scale=1.0" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            margin-left: 1066px;
        }
        .auto-style18 {
            margin-left: 0px;
        }
        .auto-style20 {
            height: 23px;
            width: 663px;
        }
        .auto-style22 {
            height: 30px;
            width: 663px;
        }
        .auto-style23 {
            width: 663px;
        }
        .auto-style9 {
            margin-right: 25px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style22">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style3" OnClick="Button1_Click" Text="Cerrar sesión" Height="24px" Width="124px" /> 
                </td>
            </tr>
            <tr>
                <td class="auto-style23">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23">
                 <asp:TextBox ID="txbbuscar" runat="server" CssClass="auto-style18" Height="21px" Width="110px" OnTextChanged="txbbuscar_TextChanged"></asp:TextBox>
                     <asp:Button ID="Button6" runat="server" Text="Buscar" OnClick="Button6_Click" Height="25px" Width="58px" />
                     
                </td>
            </tr>
            <tr>
                <td class="auto-style20">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Actualizar" style="height: 26px" />
                    </td>
            </tr>
            <tr>
                <td class="auto-style23">
                   <center><asp:GridView ID="gvCuentas" runat="server" AutoGenerateColumns="False"  CssClass="auto-style9" AllowPaging="True" OnRowEditing="gvCuentas_RowEditing" OnSelectedIndexChanged="gvCuentas_SelectedIndexChanged1" OnRowUpdating="gvCuentas_RowUpdating" Height="16px" Width="954px" OnRowCancelingEdit="gvCuentas_RowCancelingEdit" OnRowDeleting="gvCuentas_RowDeleting" OnPageIndexChanging="gvCuentas_PageIndexChanging" PageSize="6" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Horizontal">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            
                            <asp:TemplateField HeaderText="Documento">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txbdocumento" runat="server" Text='<%# Bind("idN_DocumentoP") %>'  Height="16px" Width="70px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("idN_DocumentoP") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Nombre">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txbnombre" runat="server" Text='<%# Bind("Nombre") %>' Height="16px" Width="70px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Apellido">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txbapellido" runat="server" Text='<%# Bind("Apellido") %>' Height="16px" Width="70px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Apellido") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Correo">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txbcorreo" runat="server" Text='<%# Bind("Correo") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Correo") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Telefono">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txbtelefono" runat="server" Text='<%# Bind("Telefono") %>' Height="16px" Width="70px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Telefono") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Celular">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txbcelular" runat="server" Text='<%# Bind("Celular") %>' Width="70px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Celular") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        
                            <asp:TemplateField HeaderText="Usuario">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txbusuario" runat="server" Text='<%# Bind("Usuario") %>' Width="70px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Usuario") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Contraseña">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txbcontraseña" runat="server" Text='<%# Bind("Contraseña") %>' Width="70px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("Contraseña") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        
                            <asp:TemplateField HeaderText="Tipo de usuario">
                                <EditItemTemplate>
                                   
                             <asp:TextBox ID="txbtipousuario" runat="server" Text='<%# Bind("Tipo_Usuario") %>' Width="70px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("Tipo_Usuario") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        
                            <asp:TemplateField HeaderText="Estado">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txbestado" runat="server" Text='<%# Bind("Estado") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Estado") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        
                            <asp:CommandField ShowEditButton="true" ShowCancelButton="true" AccessibleHeaderText="Opciones" ButtonType="Image" CancelImageUrl="~/Imagenes/Cancelar.png" DeleteImageUrl="~/Imagenes/Eliminar (2).png" EditImageUrl="~/Imagenes/editar2.png" UpdateImageUrl="~/Imagenes/Confirmar.png"  /> 
                        
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFFFFF" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView></center> 
                                </td>
            </tr>
        </table>
        <div>
                    <asp:Button ID="btncrear" runat="server" OnClick="btncrear_Click" Text="Crear cuenta" />
        </div>
        <p>
                    <asp:Label ID="txtmensaje" runat="server"></asp:Label>
                            </p>
    </form>
</body>
</html>
