<%@ Page Title="Teste 2" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teste2.aspx.cs" Inherits="CallResults.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
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

    <div class="col-md-6">
        <div class="vc_column-inner">
            <h3 style="text-align: center">Criar Lista</h3>
        </div>

        <span class="wpcf7-form-control-wrap nome">
            <asp:TextBox runat="server" ID="txtQtdLista" value="Quantidade" size="40" onkeypress="return soNumero( this , event ) ;" onfocus="ClearField(this);" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" />
            <asp:Button runat="server" ID="btnList" OnClick="btnList_Click" Text="Verificar" CssClass="wpcf7-form-control wpcf7-submit" />
            <br /><br />
            <asp:TextBox runat="server" ID="txtResultList" TextMode="MultiLine" Rows="10" Columns="27" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" />
        </span>
    </div>



    <div class="col-md-6">
        <div class="vc_column-inner">
            <h3 style="text-align: center">Ordenar Lista</h3>
        </div>

        <span class="wpcf7-form-control-wrap nome">
            <asp:TextBox runat="server" ID="txtValores" value="Valores" size="40" onkeypress="return NumeroVirgula( this , event ) ;" onfocus="ClearField(this);" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" />
            <asp:Button runat="server" ID="btnOrdenarList" OnClick="btnOrdenarList_Click" Text="Ordenar" CssClass="wpcf7-form-control wpcf7-submit" />
            <asp:Label Text="Números separados por vírgula" runat="server" CssClass="lblMessage" />
            <asp:TextBox runat="server" ID="txtResultOrdenar" TextMode="MultiLine" Rows="10" Columns="27" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" />
        </span>
        <br />
        <br />
        <br />
    </div>
</asp:Content>
