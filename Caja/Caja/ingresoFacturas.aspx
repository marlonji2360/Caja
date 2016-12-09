<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ingresoFacturas.aspx.cs" Inherits="Caja.ingresoFacturas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br>
    <div class="panel panel-default">
        <div class="panel-heading"><font color="grey"><label class="bold">Liquidacion de Facturas</label></font></div>
        <div class="panel-body">
            <div class="col-md-6">
                <fieldset>
                    <div class="form-group">
                        <label for="inputEmail" class="col-lg-5 control-label">Nombre Caja</label>
                        <div class="col-lg-5">
                            <asp:DropDownList ID="DropCaja" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre_caja" DataValueField="id_caja" AutoPostBack="True"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CajaConnectionString %>" SelectCommand="SELECT [id_caja], [nombre_caja] FROM [Caja]"></asp:SqlDataSource>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail" class="col-lg-5 control-label">No. Solicitud</label>
                        <div class="col-lg-5">
                            <asp:DropDownList ID="DropSolicitud" CssClass="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="id_solicitud" DataValueField="id_solicitud" EnableViewState="False"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CajaConnectionString %>" SelectCommand="SELECT [id_solicitud] FROM [Solicitud]">
                            </asp:SqlDataSource>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail" class="col-lg-5 control-label">Numero Factura</label>
                        <div class="col-lg-5">
                            <asp:TextBox ID="TxtNumero" CssClass="form-control" placeholder="Numero Factura" runat="server" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail" class="col-lg-5 control-label">Total Factura</label>
                        <div class="col-lg-5">
                            <asp:TextBox ID="TxtTotal" CssClass="form-control" placeholder="Total Factura" runat="server" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail" class="col-lg-5 control-label">Fecha Factura</label>
                        <div class="col-lg-5">
                            <asp:TextBox ID="TxtFecha" CssClass="form-control" runat="server" TextMode="Date" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail" class="col-lg-5 control-label">Concepto</label>
                        <div class="col-lg-5">
                            <asp:DropDownList ID="DropConcepto" AppendDataBoundItems="true" CssClass="form-control" runat="server" DataSourceID="SqlDataSource4" DataTextField="tipoconcepto" DataValueField="id_conceptofac" OnSelectedIndexChanged="DropConcepto_SelectedIndexChanged" AutoPostBack="True">
                                <asp:ListItem Text="Seleccionar" Value="" />
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CajaConnectionString %>" SelectCommand="SELECT * FROM [Concepto_Factura]"></asp:SqlDataSource>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail" class="col-lg-5 control-label">Descripcion</label>
                        <div class="col-lg-5">
                            <asp:TextBox ID="TxtDescripcion" CssClass="form-control" runat="server" TextMode="MultiLine" Rows="5" Visible="False" />
                        </div>
                    </div>
                    <div class="form-group col-md-5">
                        <div>
                            <asp:Button ID="BtnAgregar" CssClass="btn btn-primary" runat="server" Text="Agregar Factura" OnClick="BtnGuardar_Click" />
                        </div>
                    </div>
                </fieldset>
            </div>
           
        </div>
    </div>
     <div class="form-group col-md-6">
                <asp:GridView ID="TablaFacturas" runat="server" CssClass="table" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_factura" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Operaciones" />
                        <asp:BoundField DataField="numerofactura" HeaderText="Numero Factura" SortExpression="numerofactura" />
                        <asp:BoundField DataField="totalfactura" HeaderText="Total" SortExpression="totalfactura" />
                        <asp:BoundField DataField="fecha" HeaderText="Fecha" SortExpression="fecha" />
                        <asp:BoundField DataField="descripcion" HeaderText="Descripcion" SortExpression="descripcion" />
                        <asp:BoundField DataField="caja_id_caja" HeaderText="Caja" SortExpression="caja_id_caja" />
                        <asp:BoundField DataField="solicitud_id_solicitud" HeaderText="Solicitud" SortExpression="solicitud_id_solicitud" />
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
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CajaConnectionString %>" DeleteCommand="DELETE FROM [Factura] WHERE [id_factura] = @original_id_factura AND [numerofactura] = @original_numerofactura AND [totalfactura] = @original_totalfactura AND [fecha] = @original_fecha AND (([descripcion] = @original_descripcion) OR ([descripcion] IS NULL AND @original_descripcion IS NULL)) AND [caja_id_caja] = @original_caja_id_caja AND [solicitud_id_solicitud] = @original_solicitud_id_solicitud AND [concepto_factura_id_conceptofac] = @original_concepto_factura_id_conceptofac" InsertCommand="INSERT INTO [Factura] ([numerofactura], [totalfactura], [fecha], [descripcion], [caja_id_caja], [solicitud_id_solicitud], [concepto_factura_id_conceptofac]) VALUES (@numerofactura, @totalfactura, @fecha, @descripcion, @caja_id_caja, @solicitud_id_solicitud, @concepto_factura_id_conceptofac)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Factura]" UpdateCommand="UPDATE [Factura] SET [numerofactura] = @numerofactura, [totalfactura] = @totalfactura, [fecha] = @fecha, [descripcion] = @descripcion, [caja_id_caja] = @caja_id_caja, [solicitud_id_solicitud] = @solicitud_id_solicitud, [concepto_factura_id_conceptofac] = @concepto_factura_id_conceptofac WHERE [id_factura] = @original_id_factura AND [numerofactura] = @original_numerofactura AND [totalfactura] = @original_totalfactura AND [fecha] = @original_fecha AND (([descripcion] = @original_descripcion) OR ([descripcion] IS NULL AND @original_descripcion IS NULL)) AND [caja_id_caja] = @original_caja_id_caja AND [solicitud_id_solicitud] = @original_solicitud_id_solicitud AND [concepto_factura_id_conceptofac] = @original_concepto_factura_id_conceptofac">
                    <DeleteParameters>
                        <asp:Parameter Name="original_id_factura" Type="Decimal" />
                        <asp:Parameter Name="original_numerofactura" Type="Decimal" />
                        <asp:Parameter Name="original_totalfactura" Type="Double" />
                        <asp:Parameter DbType="Date" Name="original_fecha" />
                        <asp:Parameter Name="original_descripcion" Type="String" />
                        <asp:Parameter Name="original_caja_id_caja" Type="Decimal" />
                        <asp:Parameter Name="original_solicitud_id_solicitud" Type="Decimal" />
                        <asp:Parameter Name="original_concepto_factura_id_conceptofac" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="numerofactura" Type="Decimal" />
                        <asp:Parameter Name="totalfactura" Type="Double" />
                        <asp:Parameter DbType="Date" Name="fecha" />
                        <asp:Parameter Name="descripcion" Type="String" />
                        <asp:Parameter Name="caja_id_caja" Type="Decimal" />
                        <asp:Parameter Name="solicitud_id_solicitud" Type="Decimal" />
                        <asp:Parameter Name="concepto_factura_id_conceptofac" Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="numerofactura" Type="Decimal" />
                        <asp:Parameter Name="totalfactura" Type="Double" />
                        <asp:Parameter DbType="Date" Name="fecha" />
                        <asp:Parameter Name="descripcion" Type="String" />
                        <asp:Parameter Name="caja_id_caja" Type="Decimal" />
                        <asp:Parameter Name="solicitud_id_solicitud" Type="Decimal" />
                        <asp:Parameter Name="concepto_factura_id_conceptofac" Type="Decimal" />
                        <asp:Parameter Name="original_id_factura" Type="Decimal" />
                        <asp:Parameter Name="original_numerofactura" Type="Decimal" />
                        <asp:Parameter Name="original_totalfactura" Type="Double" />
                        <asp:Parameter DbType="Date" Name="original_fecha" />
                        <asp:Parameter Name="original_descripcion" Type="String" />
                        <asp:Parameter Name="original_caja_id_caja" Type="Decimal" />
                        <asp:Parameter Name="original_solicitud_id_solicitud" Type="Decimal" />
                        <asp:Parameter Name="original_concepto_factura_id_conceptofac" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                </div>
</asp:Content>
