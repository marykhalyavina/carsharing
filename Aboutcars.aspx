﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Aboutcars.aspx.cs" Inherits="carsharing.Aboutcars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron" style="background-color:orange;">
        <h1>Описание машины</h1>      
    </div>
    <asp:label runat="server"><b>Номера машины: </b></asp:label>
    <asp:label id="Label1" runat="server"></asp:label>
    <br>
    <asp:label runat="server"><b>Название машины: </b></asp:label>
    <asp:label id="Label2" runat="server"></asp:label>
    <br>
    <asp:label runat="server"><b>Цвет: </b></asp:label>
    <asp:label id="Label3" runat="server"></asp:label>
    <br>
    <asp:label runat="server"><b>Класс машины: </b></asp:label>
    <asp:label id="Label4" runat="server"></asp:label>
    <br>
    <asp:label runat="server"><b>Тип топлива: </b></asp:label>
    <asp:label id="Label5" runat="server"></asp:label>
    <br>
    <asp:label runat="server"><b>Объем бака: </b></asp:label>
    <asp:label id="Label6" runat="server"></asp:label>
    <br>
    <asp:label runat="server"><b>Кородка передач: </b></asp:label>
    <asp:label id="Label7" runat="server"></asp:label>
    <br>
    <asp:label runat="server"><b>Местоположение машины: </b></asp:label>
    <asp:label id="Label8" runat="server"></asp:label>
    <br>
    <asp:button id="b1" type="submit" runat="server" OnClick="Button1_Click" Text ="Забронировать"></asp:button>
</asp:Content>
