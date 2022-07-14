<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="carsharing._Default" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %> 

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server"> 
    <link rel="stylesheet" href="Style.css"> 
    <div class="jumbotron" style="background-color:orange;"> 
        <h1> Каршеринг </h1>   
    </div> 
    <div class="row"> 
        <div class="col-sm-5 col-md-6"> 
            <p> 
                <asp:Image ID="I1" runat="server" Height="356px" ImageUrl="https://static.ngs.ru/news/99/preview/453f9b0e0a11a55c21bf5850e75cef910a949d35_1000.jpg" Width="539px" />  &nbsp; 
            </p> 
       </div>      
        <div class="col-sm-5 col-md-6" > 
            <p>                 
                <asp:button type="submit" runat="server" style="background-color:orange; height: 53px; width: 247px;" OnClick="Button2_Click" Text ="Вход"></asp:button>
            </p> 
           </div> 
    </div> 
</asp:Content>