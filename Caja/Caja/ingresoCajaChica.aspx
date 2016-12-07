<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ingresoCajaChica.aspx.cs" Inherits="Caja.ingresoCajaChica" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br>
    <div class="panel panel-default">
        <div class="panel-heading"><font color="grey"><label class="bold">Ingreso de Tipo de Condicion</label></font></div>
        <div class="panel-body">
            <div class="col-md-6"> 

                 <fieldset>
                     <div class="form-group">
                        <label for="inputEmail" class="col-lg-5 control-label">Nombre Caja</label>
                        <div class="col-lg-5">
                            <asp:TextBox ID="TxtNombre" CssClass="form-control" placeholder="Nombre Caja" runat="server" />
                        </div>
                    </div>
                     <div class="form-group">
                        <label for="inputEmail" class="col-lg-5 control-label">Saldo Inicial</label>
                        <div class="col-lg-5">
                            <asp:TextBox ID="TxtSaldo" CssClass="form-control" placeholder="Saldo Inicial" runat="server" />
                        </div>
                    </div>
                     <div class="form-group">
                        <label for="inputEmail" class="col-lg-5 control-label">Empleado a Cargo</label>
                        <div class="col-lg-5">
                            <asp:DropDownList ID="DropEmpleado" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="id_empleado"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CajaConnectionString %>" SelectCommand="SELECT [id_empleado], [nombre] FROM [Empleados]"></asp:SqlDataSource>
                        </div>
                    </div>
                     </fieldset>
            </div>
            </div>
        </div>
    <div class="form-group col-md-5 col-md-offset-5 ">
        <div>
            <asp:Button ID="BtnGuardar" CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="BtnGuardar_Click" />
        </div>
    </div>
</asp:Content>
