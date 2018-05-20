<%@ Page Title="Teste 4" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teste4.aspx.cs" Inherits="CallResults.Teste4" %>

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
            <h3 style="text-align: center">Listar Filmes</h3>
        </div>

        <span class="wpcf7-form-control-wrap nome">
            <asp:Label Text="Título:" runat="server" />
            <asp:TextBox runat="server" ID="txtFiltro" size="40" onfocus="ClearField(ctl00$MainContent$txtFilmId);" MaxLength="20" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" />
            <asp:Label Text="ID:" runat="server" />
            <asp:TextBox runat="server" ID="txtFilmId" onfocus="ClearField(ctl00$MainContent$txtFiltro);" MaxLength="20"  onkeypress="return soNumero( this , event ) ;"  size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" />

            <asp:Button runat="server" ID="btnListFilme" Text="Verificar" OnClick="btnListFilme_Click" CssClass="wpcf7-form-control wpcf7-submit" />
        </span>

        <asp:Repeater ID="rptFilm" runat="server">
            <HeaderTemplate>
                <table class="tableFilm">
                    <thead>
                        <tr style="background-color: #aaaaaa;">
                            <th>Id</th>
                            <th>Título</th>
                            <th>Ano</th>
                            <th>Imagem</th>
                        </tr>
                    </thead>
                    <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <th><%# DataBinder.Eval(Container.DataItem,"ID") %></th>
                    <th><%# DataBinder.Eval(Container.DataItem,"Titulo") %></th>
                    <th><%# DataBinder.Eval(Container.DataItem,"Ano") %></th>
                    <th>
                        <asp:Image runat="server" Text="" ID="ImgFile" Width="30px" ImageUrl='<%# DataBinder.Eval(Container.DataItem,"Imagem") %>' />

                    </th>

                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
                <asp:Repeater ID="rptAlbum" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th></th>
                            <th></th>
                            <th><%# DataBinder.Eval(Container.DataItem,"Titulo") %></th>
                        </tr>
                    </ItemTemplate>
                    <ItemTemplate>
                        <tr>
                            <th></th>
                            <th></th>
                            <th><%# DataBinder.Eval(Container.DataItem,"Ano") %></th>
                        </tr>
                    </ItemTemplate>
                    <AlternatingItemTemplate>
                        <tr style="background-color: #cccccc;">
                            <th></th>
                            <th></th>
                            <th><%# DataBinder.Eval(Container.DataItem, "Imagem")%></th>
                        </tr>
                    </AlternatingItemTemplate>
                </asp:Repeater>
            </ItemTemplate>
            <FooterTemplate>
                </tbody>
         
        </table>
            </FooterTemplate>
        </asp:Repeater>

    </div>
</asp:Content>
