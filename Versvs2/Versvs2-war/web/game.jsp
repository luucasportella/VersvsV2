<%-- 
    Document   : game
    Created on : 04/11/2016, 09:32:14
    Author     : fabio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Game - VERSVS </title>
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
            <!-- Game Start -->
            <div id="game" class="section white">
                <div class="row container">
                    <div class="col s12">
                        <h2 class="center-align">GAME</h2>                        
                    </div>
                    <div class="col s12">
                        <div class="row">
                            <div class="col s1"></div>

                            <div class="col s4 myCard">
                                <!-- Filme/Serie Title -->
                                <p class="card_title">HOMEM DE FERRO</p>
                                <!-- Banner Image Start -->   
                                <img src="img/bg_parallax_01.jpg" alt="" class="responsive-img"/>
                                <ul>
                                    <li><button>Runtime: 2h 45min</button></li>
                                    <li><button>Awards: 5 Oscars</button></li>
                                    <li><button>Imdb Votes: 8.9</button></li>
                                    <li><button>Meta Score: 95</button></li>
                                </ul>
                            </div>

                            <div class="col s2">
                                <div class="row">
                                    <div class="col s12 vs_position">
                                        <h2>VS</h2>
                                    </div>
                                </div>
                            </div>

                            <div class="col s4 myCard">
                                <!-- Filme/Serie Name -->
                                <p class="card_title">CAPITÃO AMÉRICA</p>
                                <!-- Banner Image -->   
                                <img src="img/bg_parallax_02.jpg" alt="" class="responsive-img"/>
                                <ul>
                                    <li><p>Runtime: 2h 15min</p></li>
                                    <li><p>Awards: 3 Oscars</p></li>
                                    <li><p>Imdb Votes: 7.9</p></li>
                                    <li><p>Meta Score: 84</p></li>
                                </ul>
                            </div>

                            <div class="col s1"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Game Ends -->
        </main>
        <!-- Main Start -->
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
