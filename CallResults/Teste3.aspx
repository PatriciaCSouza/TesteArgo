<%@ Page Title="Teste 3" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teste3.aspx.cs" Inherits="CallResults.Teste3" %>


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

    <div class="col-md-6">
        <div class="vc_column-inner">
            <h3 style="text-align: center">Letra Maiúscula</h3>
        </div>

        <span class="wpcf7-form-control-wrap nome">
            <asp:TextBox runat="server" ID="txtNome" value="Nome" size="40" onfocus="ClearField(this);" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" />
            <asp:Button runat="server" ID="btnList" OnClick="btnList_Click" Text="Verificar" CssClass="wpcf7-form-control wpcf7-submit" />
        </span>

        <span class="wpcf7-form-control-wrap nome">
            <asp:TextBox runat="server" ID="txtResultMaiuscula" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" />
        </span>
    </div>

    <div class="col-md-6">
        <div class="vc_column-inner">
            <h3 style="text-align: center">Tirar nome do meio</h3>
        </div>

        <span class="wpcf7-form-control-wrap nome">
            <asp:TextBox runat="server" ID="txtFullName" value="Nome" size="40" onfocus="ClearField(this);" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" />
            <asp:Button runat="server" ID="btnFullName" OnClick="btnFullName_Click" Text="Verificar" CssClass="wpcf7-form-control wpcf7-submit" />
        </span>

        <span class="wpcf7-form-control-wrap nome">
            <asp:TextBox runat="server" ID="txtResultFullName" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" />
        </span>
        <br /><br /><br />
    </div>
</asp:Content>
