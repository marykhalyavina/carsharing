<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="carsharing.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
            <link rel="stylesheet" href="Style.css">
    <div class="jumbotron" style="background-color:orange;">
       <h1>
         Регистрация
          </h1>
        </div>
    <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
    <div class="container">           
            <asp:label id="Label1" runat="server" AssociatedControlID="telephone_number"><b>Телефон</b></asp:label>
            <asp:TextBox ID="telephone_number" runat="server" placeholder="Введи телефон"/>
            <br>
            <label id="Label2" runat="server" Text ="Пароль" AssociatedControlID="psw"><b>Пароль</b></label>
            <asp:TextBox ID="psw" runat="server" placeholder="Введи пароль"/>      
            <br>
        <asp:button type="submit" runat="server" OnClick="Button1_Click" Text ="Зарегистрироваться"></asp:button>
            </div>
</asp:Content>
