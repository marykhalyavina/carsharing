<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Enter.aspx.cs" Inherits="carsharing.Enter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <link rel="stylesheet" href="Style.css">
    <div class="jumbotron" style="background-color:orange;">
       <h1>
         Пожалуйста войдите в свой аккаунт
          </h1>
        </div>
    <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
        <div class="container">
            <hr>
            <asp:label id="Label1" runat="server" AssociatedControlID="telephone_number"><b>Телефон</b></asp:label>
            <asp:TextBox ID="telephone_number" runat="server" placeholder="Введи телефон"/>
            <br>
            <label id="Label2" runat="server" Text ="Пароль" AssociatedControlID="psw"><b>Пароль</b></label>
            <asp:TextBox ID="psw" runat="server" placeholder="Введи пароль"/>      
            <br>
            <hr>
            <asp:button type="submit" runat="server" OnClick="Button2_Click" Text ="Войти"></asp:button>
        </div>
        <div class="container signin">
            <p>Нет аккаунта?  <a runat="server" href="~/Registration">Зарегистрируйся</a>
        </div>
</asp:Content>
