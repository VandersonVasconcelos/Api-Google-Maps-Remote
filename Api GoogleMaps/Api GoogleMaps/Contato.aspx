<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="Api_GoogleMaps.Contato" %>

<!DOCTYPE html>

<html lang="pt-br">
<head runat="server">
    <meta charset="utf-8" />
        <title> Toth - Desenvolvimento Web </title> 
            
    <link rel="stylesheet" href="CSS.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <div class="linha">
                <header>
                    <div class="coluna  col4">
                        <h1 class="logo">inpo</h1>>
                        </div> 
                    <div class="coluna col8">
                        <nav>
                            <ul class="menu inline sem-marcador">
                                </ul>
                            </nav>
                        </div>
                    </header>
                </div>
            </div>
    <div class="linha">
        <section>
            <div class="coluna col5 sidebar">
                <h3> Localização </h3>
                <img src="sipon.jpg" alt=""/>
                <ul class="sem-padding sem marcador">
                    <li> Rua: Avenida Getulio Vargas, 2105 </li>
                    <li> Bairro: centro </li>
                    <li> Cidade: Conselheiro Pena - MG </li>
                    </ul>
                <h3>Contato Direto</h3>
                 <ul class="sem-padding sem marcador">
                    <li> Fone: xxxxxxxxxx </li>
                    <li> Cel: xxxxxxxxxxx </li>
                    </ul>
                <div class="coluna col7" >
    <h2> Envie sua Mensagem </h2>
                    <form action="">
                        <label for="nome">Nome:</label>
                        <input type="text" name="nome" id="nome" />

                        <label for="email">email:</label>
                        <input type="text" name="email" id="email" />

                        <label for="assunto">Assunto:</label>
                        <input type="text" name="assunto" id="assunto" />

                        <label for="mensagem">Mensagem:</label>
                         <textarea name="mensagem" id="mensagem"></textarea>
                        <input type="submit" class="botao" name="enviar" value="Enviar Mensagem &raquo;"/>

                        </form>

    </div>

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
