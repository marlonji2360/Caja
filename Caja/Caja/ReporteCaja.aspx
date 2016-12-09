<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReporteCaja.aspx.cs" Inherits="Caja.ReporteCaja" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Reporte Facturas Por Caja</h1>

    <div class="col-md-6">
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre_caja" DataValueField="id_caja" CssClass="form-control" AutoPostBack="True"></asp:DropDownList>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CajaConnectionString %>" SelectCommand="SELECT * FROM [Caja]"></asp:SqlDataSource>

    </div>
    <div class="col-md-10">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id_factura" DataSourceID="SqlDataSource2" EnableViewState="False">
            <Columns>
                <asp:BoundField DataField="id_factura" HeaderText="id_factura" InsertVisible="False" ReadOnly="True" SortExpression="id_factura" />
                <asp:BoundField DataField="numerofactura" HeaderText="numerofactura" SortExpression="numerofactura" />
                <asp:BoundField DataField="totalfactura" HeaderText="totalfactura" SortExpression="totalfactura" />
                <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
                <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                <asp:BoundField DataField="caja_id_caja" HeaderText="caja_id_caja" SortExpression="caja_id_caja" />
                <asp:BoundField DataField="solicitud_id_solicitud" HeaderText="solicitud_id_solicitud" SortExpression="solicitud_id_solicitud" />
                <asp:BoundField DataField="concepto_factura_id_conceptofac" HeaderText="concepto_factura_id_conceptofac" SortExpression="concepto_factura_id_conceptofac" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CajaConnectionString %>" SelectCommand="SELECT * FROM [Factura] WHERE ([caja_id_caja] = @caja_id_caja)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="caja_id_caja" PropertyName="SelectedValue" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
