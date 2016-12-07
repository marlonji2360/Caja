<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ingresoDepartamento.aspx.cs" Inherits="Caja.ingresoDepartamento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br>
    <div class="panel panel-default">
        <div class="panel-heading"><font color="grey"><label class="bold">Ingreso de Departamentos</label></font></div>
        <div class="panel-body">
            <div class="col-md-6">
                <fieldset>
                    <div class="form-group">
                        <label for="inputEmail" class="col-lg-5 control-label">Departamento</label>
                        <div class="col-lg-5">
                            <asp:TextBox ID="TxtDepartamento" class="form-control" placeholder="Departamento" runat="server" />
                        </div>
                    </div>



                </fieldset>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <asp:GridView ID="TablaDepartamento" runat="server" CssClass="table" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_departamento" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField HeaderText="Operaciones" ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="nombre" HeaderText="Departamento" SortExpression="nombre" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CajaConnectionString %>" DeleteCommand="DELETE FROM [Departamento] WHERE [id_departamento] = @original_id_departamento AND [nombre] = @original_nombre" InsertCommand="INSERT INTO [Departamento] ([nombre]) VALUES (@nombre)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Departamento]" UpdateCommand="UPDATE [Departamento] SET [nombre] = @nombre WHERE [id_departamento] = @original_id_departamento AND [nombre] = @original_nombre">
            <DeleteParameters>
                <asp:Parameter Name="original_id_departamento" Type="Decimal" />
                <asp:Parameter Name="original_nombre" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nombre" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="original_id_departamento" Type="Decimal" />
                <asp:Parameter Name="original_nombre" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
    <div class="form-group col-md-5 col-md-offset-5 ">
        <div>
            <asp:Button ID="BtnGuardar" CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="BtnGuardar_Click" />
        </div>
    </div>
</asp:Content>
