<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ingresoEmpleados.aspx.cs" Inherits="Caja.ingresoEmpleados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br>
    <div class="panel panel-default">
        <div class="panel-heading"><font color="grey"><label class="bold">Ingreso de Tipo de Condicion</label></font></div>
        <div class="panel-body">
            <div class="col-md-6">
                <fieldset>
                    <div class="form-group">
                        <label for="inputEmail" class="col-lg-5 control-label">Nombre</label>
                        <div class="col-lg-5">
                            <asp:TextBox ID="TxtNombre" CssClass="form-control" placeholder="Nombre" runat="server" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail" class="col-lg-5 control-label">Apellido</label>
                        <div class="col-lg-5">
                            <asp:TextBox ID="TxtApellido" CssClass="form-control" placeholder="Apellido" runat="server" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail" class="col-lg-5 control-label">Usuario</label>
                        <div class="col-lg-5">
                            <asp:TextBox ID="TxtUsuario" CssClass="form-control" placeholder="Usuario" runat="server" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail" class="col-lg-5 control-label">Password</label>
                        <div class="col-lg-5">
                            <asp:TextBox ID="TxtPassword" CssClass="form-control" placeholder="Password" runat="server" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="inputEmail" class="col-lg-5 control-label">Departamento</label>
                        <div class="col-lg-5">
                            <asp:DropDownList ID="DropDepto" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="id_departamento"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CajaConnectionString %>" SelectCommand="SELECT * FROM [Departamento]"></asp:SqlDataSource>
                        </div>
                    </div>

                </fieldset>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <asp:GridView ID="TablaEmpleados" CssClass="table" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_empleado" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField HeaderText="Operaciones" ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
                <asp:BoundField DataField="apellido" HeaderText="Apellido" SortExpression="apellido" />
                <asp:BoundField DataField="usuario" HeaderText="Usuario" SortExpression="usuario" />
                <asp:BoundField DataField="departamento_id_departamento" HeaderText="Departamento" SortExpression="departamento_id_departamento" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CajaConnectionString %>" DeleteCommand="DELETE FROM [Empleados] WHERE [id_empleado] = @original_id_empleado AND [nombre] = @original_nombre AND [apellido] = @original_apellido AND [usuario] = @original_usuario AND [password] = @original_password AND [departamento_id_departamento] = @original_departamento_id_departamento" InsertCommand="INSERT INTO [Empleados] ([nombre], [apellido], [usuario], [password], [departamento_id_departamento]) VALUES (@nombre, @apellido, @usuario, @password, @departamento_id_departamento)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Empleados]" UpdateCommand="UPDATE [Empleados] SET [nombre] = @nombre, [apellido] = @apellido, [usuario] = @usuario, [password] = @password, [departamento_id_departamento] = @departamento_id_departamento WHERE [id_empleado] = @original_id_empleado AND [nombre] = @original_nombre AND [apellido] = @original_apellido AND [usuario] = @original_usuario AND [password] = @original_password AND [departamento_id_departamento] = @original_departamento_id_departamento">
            <DeleteParameters>
                <asp:Parameter Name="original_id_empleado" Type="Decimal" />
                <asp:Parameter Name="original_nombre" Type="String" />
                <asp:Parameter Name="original_apellido" Type="String" />
                <asp:Parameter Name="original_usuario" Type="String" />
                <asp:Parameter Name="original_password" Type="String" />
                <asp:Parameter Name="original_departamento_id_departamento" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="apellido" Type="String" />
                <asp:Parameter Name="usuario" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="departamento_id_departamento" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="apellido" Type="String" />
                <asp:Parameter Name="usuario" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="departamento_id_departamento" Type="Decimal" />
                <asp:Parameter Name="original_id_empleado" Type="Decimal" />
                <asp:Parameter Name="original_nombre" Type="String" />
                <asp:Parameter Name="original_apellido" Type="String" />
                <asp:Parameter Name="original_usuario" Type="String" />
                <asp:Parameter Name="original_password" Type="String" />
                <asp:Parameter Name="original_departamento_id_departamento" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <div class="form-group col-md-5 col-md-offset-5 ">
        <div>
            <asp:Button ID="BtnGuardar" CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="BtnGuardar_Click" />
        </div>
    </div>
</asp:Content>
