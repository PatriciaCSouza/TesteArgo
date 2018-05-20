<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CallResults._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>.Net Developer Jr</h1>
        <p class="lead">Teste realizado para a vaga de desenvolvedor .Net na Argo Solutions.</p>
        <%-- <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>--%>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Informações do candidato:</h2>
            <p>
                Nome: Patricia Costa de Souza<br />
                E-mail:patricia.souza@live.com<br />
                Telefone: 94952-1937<br />
            </p>

        </div>
        <div class="col-md-4">
            <h2>Formação e Cursos</h2>
            <p>
                Sistemas para Internet (FATEC)<br />
                C# e O.O. (Caelum)<br />
                Intercâmbio Nova Zelândia (CCEL)
            </p>
        </div>
        <div class="col-md-4">
            <h2>Experiências</h2>
            <p>
                Analista de Desenvolvimento Jr. (Ingenico Group)<br />
                Estagiário em desenvolvimento web (Latinstock)
            </p>
        </div>
    </div>

</asp:Content>
