<%-- 
    Document   : index
    Created on : 08/09/2016, 15:15:18
    Author     : fabio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Home - VERSVS </title>
        <!--Import Google Icon Font -->
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!-- Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="materialize/css/materialize.css"  media="screen,projection"/>

        <!-- Versvs Style -->
        <link href="css_versvs/style_versvs.css" rel="stylesheet">

        <!-- Favicon -->
        <link rel="apple-touch-icon" sizes="57x57" href="img/favicon/apple-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="60x60" href="img/favicon/apple-icon-60x60.png">
        <link rel="apple-touch-icon" sizes="72x72" href="img/favicon/apple-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="76x76" href="img/favicon/apple-icon-76x76.png">
        <link rel="apple-touch-icon" sizes="114x114" href="img/favicon/apple-icon-114x114.png">
        <link rel="apple-touch-icon" sizes="120x120" href="img/favicon/apple-icon-120x120.png">
        <link rel="apple-touch-icon" sizes="144x144" href="img/favicon/apple-icon-144x144.png">
        <link rel="apple-touch-icon" sizes="152x152" href="img/favicon/apple-icon-152x152.png">
        <link rel="apple-touch-icon" sizes="180x180" href="img/favicon/apple-icon-180x180.png">
        <link rel="icon" type="image/png" sizes="192x192"  href="img/favicon/android-icon-192x192.png">
        <link rel="icon" type="image/png" sizes="32x32" href="img/favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="96x96" href="img/favicon/favicon-96x96.png">
        <link rel="icon" type="image/png" sizes="16x16" href="img/favicon/favicon-16x16.png">
        <link rel="manifest" href="/manifest.json">
    </head>
    <body id="topPage">

        <!-- Header Start -->
        <%@include file="menu.jspf" %>
        <!-- Header Ends -->

        <!-- Main Start -->
        <main>
            <!-- Image Parallax Start -->
            <div class="parallax-container parallax-first">
                <div class="parallax"><img src="img/bg_parallax_01.jpg" alt=""></div>
            </div>
            <!-- Image Parallax Ends -->

            <!-- Game Start -->
            <div id="game" class="section white">
                <div class="row container">
                    <div class="col s12">
                        <h2 class="center-align">GAME</h2>                        
                    </div>                   
                    <div class="col s5"></div>
                    <div class="col s2">
                        <a class="btn waves-effect btn-game center-align" href="game.jsp">JOGAR</a>                        
                    </div>
                    <div class="col s5"></div>
                </div>
            </div>
            <!-- Game Ends -->

            <!-- Image Parallax Start -->
            <div class="parallax-container">
                <div class="parallax"><img src="img/bg_parallax_02.jpg" alt=""></div>
            </div>
            <!-- Image Parallax Ends -->

            <!-- Rules Start -->
            <div class="section white" id="rules">
                <div class="row container">
                    <div class="col s12">
                        <h2 class="center-align">RULES</h2>
                    </div>
                    <div class="col s12">
                        <h3>Objetivo:</h3>
                        <p>Tomar todas as cartas do seu adversário.</p>
                        <h3>Como Jogar:</h3>
                        <p>Na sua vez de jogar, escolha um dos atributos da sua carta. Se o atributo por você escolhido for maior que o do adversário, você toma a carta dele e continua jogando. Se o adversário tomar sua carta, ele passa a escolher o atributo em primeiro lugar. Em caso de empate, cada um fica com a sua carta e quem tiver escolhido o último critério escolhe novamente.
                        </p>
                        <h3>Super Trunfo:</h3>
                        <p>A carta Super Trunfo ganha de todas as outras, com exceção daquelas com a letra “A” (1A, 2A, 3A, 4A, 5A, 6A, 7A e 8A).</p>
                        <h3>Fim do Jogo:</h3>
                        <p>Vence quem tomar todas as cartas do adversário em primeiro lugar.</p>
                    </div>
                </div>
            </div>
            <!-- Rules Ends -->

            <!-- Image Parallax Start -->
            <div class="parallax-container">
                <div class="parallax"><img src="img/bg_parallax_03.jpg" alt=""></div>
            </div>
            <!-- Image Parallax Ends -->

            <!-- About Start -->
            <div class="section white" id="about">
                <div class="row container">
                    <div class="col s12">
                        <h2 class="center-align">ABOUT</h2>
                    </div>
                    <div class="col s12">
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc convallis enim vitae tempus sollicitudin. Nam eu semper metus. Maecenas neque eros, vestibulum sit amet lectus id, bibendum accumsan orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent orci mauris, pretium ut massa nec, blandit molestie ex. Pellentesque elit libero, euismod quis lacus ut, lobortis euismod libero. Mauris ultricies ligula eget lorem efficitur, at accumsan purus commodo.

                            In arcu eros, pharetra sit amet leo vitae, molestie elementum nibh. Aliquam non est tortor. Maecenas pretium fringilla massa, nec luctus ligula. Morbi ante magna, lobortis non interdum at, laoreet eget eros. Etiam placerat euismod malesuada. Aliquam erat volutpat. Praesent finibus consectetur enim, et accumsan diam consectetur vitae. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec tempor tristique libero, eget fringilla sapien egestas in. In hac habitasse platea dictumst. Mauris rutrum libero mi, eget tincidunt elit sagittis non. Duis eget eros erat. Vestibulum posuere pharetra rhoncus. Mauris ultrices felis sit amet est maximus, at fringilla est mollis.
                        </p>
                    </div>
                </div>
            </div>
            <!-- About Ends -->

            <!-- Image Parallax Start -->
            <div class="parallax-container">
                <div class="parallax"><img src="img/bg_parallax_04.jpg" alt=""></div>
            </div>
            <!-- Image Parallax Ends -->

            <!-- Contact Start -->
            <div class="section white" id="contact">
                <div class="row container">
                    <div class="col s12">
                        <h2 class="center-align">CONTACT US</h2>
                    </div>
                    <div class="col s12">
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc convallis enim vitae tempus sollicitudin. Nam eu semper metus. Maecenas neque eros, vestibulum sit amet lectus id, bibendum accumsan orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent orci mauris, pretium ut massa nec, blandit molestie ex. Pellentesque elit libero, euismod quis lacus ut, lobortis euismod libero. Mauris ultricies ligula eget lorem efficitur, at accumsan purus commodo.

                            In arcu eros, pharetra sit amet leo vitae, molestie elementum nibh. Aliquam non est tortor. Maecenas pretium fringilla massa, nec luctus ligula. Morbi ante magna, lobortis non interdum at, laoreet eget eros. Etiam placerat euismod malesuada. Aliquam erat volutpat. Praesent finibus consectetur enim, et accumsan diam consectetur vitae. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec tempor tristique libero, eget fringilla sapien egestas in. In hac habitasse platea dictumst. Mauris rutrum libero mi, eget tincidunt elit sagittis non. Duis eget eros erat. Vestibulum posuere pharetra rhoncus. Mauris ultrices felis sit amet est maximus, at fringilla est mollis.
                        </p>
                    </div>
                </div>
            </div>
            <!-- Contact Ends -->
        </main>
        <!-- Main Ends -->
        <a class="btn-floating btn-large waves-effect waves-light purple" id="backToTop"><i class="material-icons">call_made</i></a>
        <!-- Footer Start -->
        <%@include file="footer.jspf" %>
        <!-- Footer Ends -->

        <!-- jQuery Materialize -->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="materialize/js/materialize.min.js"></script>

        <!-- Versvs JS -->
        <script src="js_versvs/script.js" type="text/javascript"></script>
    </body>
</html>