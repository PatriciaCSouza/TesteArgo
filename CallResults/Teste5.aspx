<%@ Page Title="Teste 5" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teste5.aspx.cs" Inherits="CallResults.Teste5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div data-zozo-parallax-position="left top" class="page-title-section page-titletype-default page-titleskin-default page-titlealign-default">
        <div class="page-title-wrapper-outer">

            <!-- ===== Video Background -->

            <div class="page-title-wrapper clearfix">
                <div class="container page-title-container">
                    <div class="page-title-captions">
                        <h2><%: Title %></h2>
                        <h3></h3>
                        <p></p>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="col-md-12">
        <div class="vc_column-inner">
            <h3 style="text-align: center">Destinos</h3>
        </div>

        <span class="wpcf7-form-control-wrap nome">
            <asp:Label Text="ID: " runat="server" />
            <asp:TextBox runat="server" ID="txtIdDestino" value=""  MaxLength="5"  onkeypress="return soNumero( this , event ) ;" onfocus="ClearField(this);" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" />
            <asp:Button runat="server" ID="btnIdDestino" OnClick="btnIdDestino_Click" Text="Verificar" CssClass="wpcf7-form-control wpcf7-submit" />
            <asp:Button runat="server" ID="btnAllDestinos" OnClick="btnAllDestinos_Click" Text="Listar Todos" CssClass="wpcf7-form-control wpcf7-submit" />

        </span>

        <span class="wpcf7-form-control-wrap nome">
            <asp:TextBox runat="server" ID="txtResultDestino"  TextMode="MultiLine" Rows="10" Columns="27" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" />
        </span>
    </div>
</asp:Content>
