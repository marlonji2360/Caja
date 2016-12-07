<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ingresoTipoCondicion.aspx.cs" Inherits="Caja.ingresoTipoCondicion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br>
    <div class="panel panel-default">
        <div class="panel-heading"><font color="grey"><label class="bold">Ingreso de Tipo de Condicion</label></font></div>
        <div class="panel-body">
            <div class="col-md-6">
                <fieldset>
                     <div class="form-group">
                        <label for="inputEmail" class="col-lg-5 control-label">Concepto</label>
                        <div class="col-lg-5">
                            <asp:DropDownList ID="DropConcepto" runat="server" DataSourceID="SqlDataSource1" DataTextField="tipoconcepto" DataValueField="id_conceptofac" CssClass="form-control"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CajaConnectionString %>" SelectCommand="SELECT * FROM [Concepto_Factura]"></asp:SqlDataSource>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="inputEmail" class="col-lg-5 control-label">Condicion</label>
                        <div class="col-lg-5">
                            <asp:DropDownList ID="DropCondicion" runat="server" CssClass="form-control">
                                <asp:ListItem Value="&gt;">Mayor Que</asp:ListItem>
                                <asp:ListItem Value="&gt;=">Mayor Igual Que</asp:ListItem>
                                <asp:ListItem Value="&lt;">Menor Que</asp:ListItem>
                                <asp:ListItem Value="&lt;=">Menor Igual Que</asp:ListItem>
                                <asp:ListItem Value="=">Igual a</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                   <div class="form-group">
                        <label for="inputEmail" class="col-lg-5 control-label">Monto</label>
                        <div class="col-lg-5">
                            <asp:TextBox ID="TxtMontoMaximo" CssClass="form-control" placeholder="Monto" runat="server" />
                        </div>
                    </div>



                </fieldset>
            </div>
        </div>
    </div>
    
    <div class="col-md-6">
    
        <asp:GridView ID="TablaTipoCondicion" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_condicion" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField HeaderText="Operaciones" ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="montomaximo" HeaderText="Monto Maximo" SortExpression="montomaximo" />
                <asp:BoundField DataField="condicion" HeaderText="Condicion" SortExpression="condicion" />
                <asp:BoundField DataField="concepto_factura_id_conceptofac" HeaderText="Concepto Factura" SortExpression="concepto_factura_id_conceptofac" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CajaConnectionString %>" DeleteCommand="DELETE FROM [Tipo_Condicion] WHERE [id_condicion] = @original_id_condicion AND [montomaximo] = @original_montomaximo AND [condicion] = @original_condicion AND [concepto_factura_id_conceptofac] = @original_concepto_factura_id_conceptofac" InsertCommand="INSERT INTO [Tipo_Condicion] ([montomaximo], [condicion], [concepto_factura_id_conceptofac]) VALUES (@montomaximo, @condicion, @concepto_factura_id_conceptofac)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Tipo_Condicion]" UpdateCommand="UPDATE [Tipo_Condicion] SET [montomaximo] = @montomaximo, [condicion] = @condicion, [concepto_factura_id_conceptofac] = @concepto_factura_id_conceptofac WHERE [id_condicion] = @original_id_condicion AND [montomaximo] = @original_montomaximo AND [condicion] = @original_condicion AND [concepto_factura_id_conceptofac] = @original_concepto_factura_id_conceptofac">
            <DeleteParameters>
                <asp:Parameter Name="original_id_condicion" Type="Decimal" />
                <asp:Parameter Name="original_montomaximo" Type="Double" />
                <asp:Parameter Name="original_condicion" Type="String" />
                <asp:Parameter Name="original_concepto_factura_id_conceptofac" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="montomaximo" Type="Double" />
                <asp:Parameter Name="condicion" Type="String" />
                <asp:Parameter Name="concepto_factura_id_conceptofac" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="montomaximo" Type="Double" />
                <asp:Parameter Name="condicion" Type="String" />
                <asp:Parameter Name="concepto_factura_id_conceptofac" Type="Decimal" />
                <asp:Parameter Name="original_id_condicion" Type="Decimal" />
                <asp:Parameter Name="original_montomaximo" Type="Double" />
                <asp:Parameter Name="original_condicion" Type="String" />
                <asp:Parameter Name="original_concepto_factura_id_conceptofac" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

    <div class="form-group col-md-5 col-md-offset-5 ">
        <div>
            <asp:Button ID="BtnGuardar" CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="BtnGuardar_Click" />
        </div>
    </div>
</asp:Content>
