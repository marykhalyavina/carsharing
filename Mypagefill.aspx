<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Mypagefill.aspx.cs" Inherits="carsharing.Mypagefill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron" style="background-color:orange;">
        <h1>Моя страница</h1>      
    </div>
    <asp:label runat="server"><b>Телефон: </b></asp:label>
    <asp:label id="Label1" runat="server"></asp:label>
    <br>
    <asp:label runat="server"><b>Имя: </b></asp:label>
    <asp:label id="Label2" runat="server"></asp:label>
    <br>
    <asp:label runat="server"><b>Фамилия: </b></asp:label>
    <asp:label id="Label8" runat="server"></asp:label>
    <br>
    <asp:label runat="server"><b>Дата рождения: </b></asp:label>
    <asp:label id="Label3" runat="server"></asp:label>
    <br>
    <asp:label runat="server"><b>Стаж: </b></asp:label>
    <asp:label id="Label4" runat="server"></asp:label>
    <br>
    <asp:label runat="server"><b>Фото прав: </b></asp:label>
    <asp:label id="Label5" runat="server"></asp:label>
    <br>
    <asp:label runat="server"><b>Фото паспорта: </b></asp:label>
    <asp:label id="Label6" runat="server"></asp:label>
    <br>
    <asp:label runat="server"><b>Время начала брони: </b></asp:label>
    <asp:label id="Label7" runat="server"></asp:label>
    <br>
    <asp:button id="b1" type="submit" runat="server" OnClick="Button1_Click" Text ="Выйти"></asp:button>
</asp:Content>
