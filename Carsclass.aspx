<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carsclass.aspx.cs" Inherits="carsharing.Carsclass" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server"> 

    <link rel="stylesheet" href="Style.css"> 

     <div class="jumbotron" style="background-color:orange;"> 

         <h1> Машины </h1>  

        </div> 

    <div class="breadcrumb" style="background-color:sandybrown;"> 

       <h2>  

           Класс Базовый 

          </h2>  

    </div> 

   <div class="row">  

        <div class="col-md-4"> 

            <h4> </h4> 

                     <p> 

                <asp:Image ID="Image1" runat="server" Height="286px" Width="411px" ImageUrl="https://himki.masmotors.ru/colors/hyundai-solaris/1.png" /> &nbsp; 

            </p> 

            <p>                 
                <asp:button id="Button1" type="submit" runat="server" OnClick="Button1_Click" Text ="Перейти"></asp:button>

            </p> 

       </div> 

              

        <div class="col-md-4"> 

            <h4>  

               </h4> 

             <p> 

                <asp:Image ID="Image2" runat="server" Height="286px" Width="411px" ImageUrl="https://himki.masmotors.ru/colors/volkswagen-polo/1.png" /> &nbsp; 

            </p> 

            <p> 

                <asp:button id="Button2" type="submit" runat="server" OnClick="Button2_Click" Text ="Перейти"></asp:button>

            </p> 

             

        </div> 

          <div class="col-md-4"> 

            <h4>  

               </h4> 

             <p> 

                <asp:Image ID="Image3" runat="server" Height="286px" Width="411px" ImageUrl="https://himki.masmotors.ru/colors/skoda-octavia-a8/7.png"  /> &nbsp; 

            </p> 

            <p> 

                <asp:button id="Button3" type="submit" runat="server" OnClick="Button3_Click" Text ="Перейти"></asp:button>

            </p> 

             

        </div> 

    </div> 

    <div class="breadcrumb" style="background-color:sandybrown;"> 

        <h2>  

          Класс Комфорт</h2>  

    </div> 

     <div class="row"> 

        <div class="col-md-4"> 

            <h4> 

              </h4> 

           <p> 

                <asp:Image ID="Image4" runat="server" Height="286px" Width="411px" ImageUrl="https://img.freepik.com/free-photo/super-fast-sports-car-color-blue-metallic-on-a-white-background-body-shape-sedan-tuning-is-a-version-of-an-ordinary-family-car-3d-rendering_101266-11142.jpg"/> &nbsp; 

            </p> 

            <p>                 

                 <asp:button id="Button4" type="submit" runat="server" OnClick="Button4_Click" Text ="Перейти"></asp:button>

            </p> 

       </div> 

              

        <div class="col-md-4"> 

            <h4> 

              </h4> 

            <p> 

                <asp:Image ID="Image5" runat="server" Height="286px" Width="411px" ImageUrl="https://cdn.kodixauto.ru/media/media/image/5fa9316ec742e80001d83a70" /> &nbsp; 

            </p> 

            <p> 

                <asp:button id="Button5" type="submit" runat="server" OnClick="Button5_Click" Text ="Перейти"></asp:button>

            </p> 

          </div> 

          <div class="col-md-4"> 

            <h4> 

              </h4> 

            <p> 

                <asp:Image ID="Image6" runat="server" Height="286px" Width="411px" ImageUrl="https://himki.masmotors.ru/colors/toyota-rav4/8.png"  /> &nbsp; 

            </p> 

            <p> 

                <asp:button id="Button6" type="submit" runat="server" OnClick="Button6_Click" Text ="Перейти"></asp:button>

            </p> 

          </div> 

     </div> 

     <div class="breadcrumb" style="background-color:sandybrown;"> 

       <h2> Класс Премиум 

         </h2>  

    </div> 

        <div class="row"> 

        <div class="col-md-4"> 

            <h4> 

              </h4> 

            <p> 

                <asp:Image ID="Image7" runat="server" Height="286px" Width="411px" ImageUrl="https://www.mercedes-benz.ru/passengercars/mercedes-benz-cars/models/c-class/saloon-w206/main/line-comparison/_jcr_content/comparisonslider/par/comparisonslide_1479651038/exteriorImage.MQ6.12.20210924095654.jpeg"  /> &nbsp; 

            </p> 

            <p>                 

                 <asp:button id="Button7" type="submit" runat="server" OnClick="Button7_Click" Text ="Перейти"></asp:button>

            </p> 

       </div> 

              

        <div class="col-md-4"> 

            <h4> 

             </h4> 

            <p> 

                <asp:Image ID="Image8" runat="server" Height="286px" Width="411px" ImageUrl="https://s1.1zoom.ru/b5154/88/Toyota_Camry_Red_White_background_540853_3840x2160.jpg"  />  &nbsp; 

            </p> 

            <p> 

                <asp:button id="Button8" type="submit" runat="server" OnClick="Button8_Click" Text ="Перейти"></asp:button>

            </p> 

        </div> 

             <div class="col-md-4"> 

            <h4> 

             </h4> 

            <p> 

                <asp:Image ID="Image9" runat="server" Height="286px" Width="411px" ImageUrl="https://cp-avtomir.ru/photo_bank/render/kia/k5_dl3/luxe_%D1%81%D0%B5%D0%B4%D0%B0%D0%BD/ABP_1.png"  />  &nbsp; 

            </p> 

            <p> 

                <asp:button id="Button9" type="submit" runat="server" OnClick="Button9_Click" Text ="Перейти"></asp:button>

            </p> 

        </div> 

     

    </div> 

</asp:Content> 

 
