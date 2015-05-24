<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GoogleMaps.aspx.cs" Inherits="Api_GoogleMaps.GoogleMaps" %>

<! DOCTYPE HTML>
<head runat="server">
    <title>Google Maps-API</title>
    <style type="text/css">
        #Button1 {
            background: #333333;
            color: #ffffff;
            cursor: pointer;
            height: 26px;
            border: 0;
        }
    </style>

 <link rel="stylesheet" href="Contato.aspx">
</head>

<body>
    <form id="form1" runat="server">
        <div class="header">
            <div class="linha">
                    <link rel="stylesheet" href="Contato.aspx">
                    <div class="coluna col1">
                     
                            <img src="sipon.jpg" alt="" />
                           <link rel="stylesheet" href="Contato.aspx">
                            
                        </div>
                    </div>
            </div>
        </div>
        <div class="coluna2">
            <nav>
                <ul class="menu inline sem-marcador">
                </ul>
                <li><a href="Contato.html">Contato</a></li>
                <link rel="stylesheet" href="Contato.aspx">
                
            </nav>
           
        </div>
      
       
        <div class="linha">
            <section>
                <div class="coluna col3 sidebar">
                    <h3>Google Maps</h3>
                    <link rel="stylesheet" href="Contato.aspx">
                        <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
                        <script language="javascript" type="text/javascript">
                            var exibirCaminhos;
                            var servicoDirecao = new google.maps.DirectionsService();

                            function IniciarMapa() {
                                exibirCaminhos = new google.maps.DirectionsRenderer();
                                var latlng = new google.maps.LatLng(-19.1741, -41.458);
                                var opcoes =
                                {
                                    zoom: 8,
                                    center: latlng,
                                    mapTypeId: google.maps.MapTypeId.ROADMAP
                                };
                                var mapa = new google.maps.Map(document.getElementById("mapa"), opcoes);
                                exibirCaminhos.setMap(mapa);
                                exibirCaminhos.setPanel(document.getElementById('direcaopainel'));
                                var controle = document.getElementById('controle');
                                controle.style.display = 'block';
                            }

                            function calcularRota() {
                                var start = document.getElementById('valor1').value;
                                var end = document.getElementById('valor2').value;
                                var request = {
                                    origin: start,
                                    destination: end,
                                    travelMode: google.maps.DirectionsTravelMode.DRIVING
                                };
                                servicoDirecao.route(request, function (response, status) {
                                    if (status == google.maps.DirectionsStatus.OK) {
                                        exibirCaminhos.setDirections(response);
                                    }
                                });

                            }
                            function Button1_onclick() {
                                calcularRota();
                            }
                            window.onload = IniciarMapa;

                        </script>

                   
                </div>
            </section>

            <table id="controle" style="height: 575px; width: 920px; margin: auto; overflow: hidden; background: #e3e3e3">
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td><strong>Inicio:</strong> </td>
                                <td>
                                    <input id="valor1" type="text" placeholder="Digite o local" style="width: 313px; margin: auto" /></td>
                            </tr>
                            <tr>
                                <td><strong>Fim:</strong> </td>
                                <td>
                                    <input id="valor2" type="text" placeholder="Digite o local" style="width: 315px; margin: auto" /></td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <input id="Button1" type="button" value="Obter Rota" onclick="return Button1_onclick()" /></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td valign="top">
                        <div id="direcaopainel" style="height: 450px; overflow: auto;"></div>
                    </td>
                    <td valign="top">
                        <div id="mapa" style="height: 500px; width: 500px; margin: auto;"></div>
                    </td>
                </tr>
              
            </table>
    </form>
     <div class="footer">
                    <div class="linha">
                        <footer>
                            <div class="coluna col12">
                                <span>&copy; 2015 - Toth Desenvolvimento Web</span>
                                </div>
                            </footer>
                        </div>
         </div>
</body>
</html>