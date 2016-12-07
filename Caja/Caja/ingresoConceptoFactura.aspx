<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ingresoConceptoFactura.aspx.cs" Inherits="Caja.ingresoConceptoFactura" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br>
    <div class="panel panel-default">
        <div class="panel-heading"><font color="grey"><label class="bold">Ingreso de Concepto de Factura</label></font></div>
        <div class="panel-body">
            <div class="col-md-6">
                <fieldset>
                    <div class="form-group">
                        <label for="inputEmail" class="col-lg-5 control-label">Concepto</label>
                        <div class="col-lg-5">
                            <asp:TextBox ID="TxtConcepto" class="form-control" placeholder="Concepto Factura" runat="server" />
                        </div>
                    </div>



                </fieldset>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <asp:GridView ID="TablaConceptoFactura" runat="server" CssClass="table" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_conceptofac" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Operaciones" />
                <asp:BoundField DataField="tipoconcepto" HeaderText="Concepto de Factura" SortExpression="tipoconcepto" />
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

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CajaConnectionString %>" DeleteCommand="DELETE FROM [Concepto_Factura] WHERE [id_conceptofac] = @original_id_conceptofac AND [tipoconcepto] = @original_tipoconcepto" InsertCommand="INSERT INTO [Concepto_Factura] ([tipoconcepto]) VALUES (@tipoconcepto)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Concepto_Factura]" UpdateCommand="UPDATE [Concepto_Factura] SET [tipoconcepto] = @tipoconcepto WHERE [id_conceptofac] = @original_id_conceptofac AND [tipoconcepto] = @original_tipoconcepto">
            <DeleteParameters>
                <asp:Parameter Name="original_id_conceptofac" Type="Decimal" />
                <asp:Parameter Name="original_tipoconcepto" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="tipoconcepto" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="tipoconcepto" Type="String" />
                <asp:Parameter Name="original_id_conceptofac" Type="Decimal" />
                <asp:Parameter Name="original_tipoconcepto" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>

    <div class="form-group col-md-5 col-md-offset-5 ">
        <div>
            <asp:Button ID="BtnGuardar" CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="BtnGuardar_Click" />
        </div>
    </div>
</asp:Content>
