<%@ Page Title="Teste 1" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teste1.aspx.cs" Inherits="CallResults.About" %>

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


    <div class="col-md-3">
        <div class="vc_column-inner">
            <h3 style="text-align: center">Soma</h3>
        </div>

        <span class="wpcf7-form-control-wrap nome">
            <asp:TextBox runat="server" ID="txtFirstNumber" value="First Number" MaxLength="5" onkeypress="return soNumero( this , event ) ;" onfocus="ClearField(this);" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" />
        </span>
        <br />

        <span class="wpcf7-form-control-wrap nome">
            <asp:TextBox runat="server" ID="txtSecondNumber" value="Second number" MaxLength="5" onkeypress="return soNumero( this , event ) ;" onfocus="ClearField(this);" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" />
        </span>

        <div>
            <asp:Button runat="server" ID="btnSum" OnClick="btnSum_Click" Text="Verificar" CssClass="wpcf7-form-control wpcf7-submit" />
        </div>

        <span class="wpcf7-form-control-wrap nome">
            <asp:TextBox runat="server" ID="txtResultSum" value="Result" MaxLength="10" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" />
        </span>
    </div>

    <div class="col-md-3">
        <div class="vc_column-inner">
            <h3 style="text-align: center">Subtrair</h3>
        </div>

        <span class="wpcf7-form-control-wrap nome">
            <asp:TextBox runat="server" ID="txtFirstNumberSubtrair" value="First Number" MaxLength="5" onkeypress="return soNumero( this , event ) ;" onfocus="ClearField(this);" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" />
        </span>
        <br />

        <span class="wpcf7-form-control-wrap nome">
            <asp:TextBox runat="server" ID="txtSecondNumberSubtrair" value="Second number" MaxLength="5" onkeypress="return soNumero( this , event ) ;" onfocus="ClearField(this);" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" />
        </span>

        <div>
            <asp:Button runat="server" ID="btnSubtrair" OnClick="btnSubtrair_Click" Text="Verificar" CssClass="wpcf7-form-control wpcf7-submit" />
        </div>

        <span class="wpcf7-form-control-wrap nome">
            <asp:TextBox runat="server" ID="txtResultSubtracao" value="Result" MaxLength="5" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" />
        </span>
    </div>

    <div class="col-md-3">
        <div class="vc_column-inner">
            <h3 style="text-align: center">Média</h3>
        </div>

        <span class="wpcf7-form-control-wrap nome">
            <asp:TextBox runat="server" ID="txtNumberMedia" value="Numbers" MaxLength="10" onkeypress="return NumeroVirgula( this , event ) ;" onfocus="ClearField(this);" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" />
            <asp:Label Text="Números separados por vírgula" runat="server" CssClass="lblMessage" />
        </span>
        <br />
        <br />
        <div>
            <asp:Button runat="server" ID="btnMedia" OnClick="btnMedia_Click" Text="Verificar" CssClass="wpcf7-form-control wpcf7-submit" />
        </div>


        <span class="wpcf7-form-control-wrap nome">
            <asp:TextBox runat="server" ID="txtResultMedia" value="Result" MaxLength="10" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" />
        </span>
    </div>

    <div class="col-md-3">
        <div class="vc_column-inner">
            <h3 style="text-align: center">Calcular Idade</h3>
        </div>

        <span class="wpcf7-form-control-wrap nome">
            <asp:TextBox runat="server" ID="txtAno" value="2018" size="15" MaxLength="4" onkeypress="return soNumero( this , event ) ;" onfocus="ClearField(this);" class="wpcf7-form-control wpcf7-text LittleText" aria-required="true" aria-invalid="false" />
            <asp:TextBox runat="server" ID="txtMes" value="05" size="15" MaxLength="2" onkeypress="return soNumero( this , event ) ;" onfocus="ClearField(this);" class="wpcf7-form-control wpcf7-text LittleText" aria-required="true" aria-invalid="false" />
            <asp:TextBox runat="server" ID="txtDia" value="20" size="15" MaxLength="2" onkeypress="return soNumero( this , event ) ;" onfocus="ClearField(this);" class="wpcf7-form-control wpcf7-text LittleText" aria-required="true" aria-invalid="false" />

        </span>
        <br />
        <br />
        <br />

        <div>
            <asp:Button runat="server" ID="btnIdade" OnClick="btnIdade_Click" Text="Verificar" CssClass="wpcf7-form-control wpcf7-submit" />
        </div>

        <span class="wpcf7-form-control-wrap nome">
            <asp:TextBox runat="server" ID="txtResultIdade" value="Idade" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" />
        </span>
        <br />
        <br />
        <br />

    </div>

</asp:Content>

