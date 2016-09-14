<%-- 
    Document   : register
    Created on : 06/09/2016, 14:55:10
    Author     : fabio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Register - VERSVS </title>

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
    <body class="my_gradient">        
        <!-- Main Starts -->
        <main>
            <div class="row">
                <div class="col m4"></div>
                <div class="col m4">
                    <section>
                        <div class="row" id="login-page">
                            <div class="col s12 z-depth-4 card-panel">
                                <!-- Title of Page-->
                                <h2 class="center-align">Create Account</h2>
                                <form class="login_form col s12" method="POST" action="Controller">
                                    <!-- Form Starts-->
                                    <div class="row row_register">
                                        <div class="input-field col s6">
                                            <input type="text" name="firstname" class="validate" id="firstname" />
                                            <label for="firstname">First Name</label>
                                        </div>
                                        <div class="input-field col s6">
                                            <input type="text" name="lastname" class="validate" id="lastname" />
                                            <label for="lastname">Last Name</label>
                                        </div>
                                    </div>
                                    <div class="row row_register">
                                        <div class="input-field col s12">
                                            <input type="text" name="username" class="validate" id="userversvs" />
                                            <label for="userversvs">Username</label>
                                        </div>
                                    </div>
                                    <div class="row row_register">
                                        <div class="input-field col s6">
                                            <input type="password" name="password" class="validate" id="pass" />
                                            <label for="pass">Password</label>
                                        </div>
                                        <div class="input-field col s6">
                                            <input type="password" name="password2" class="validate" id="pass2" />
                                            <label for="pass2">Confirm Password</label>
                                        </div>
                                    </div>
                                    <div class="row row_register">
                                        <div class="input-field col s12">
                                            <input type="email" name="email" class="email validate" id="email1" />
                                            <label for="email1" data-error="wrong" data-success="right">Email</label>
                                        </div>
                                    </div>
                                    <div class="row row_register">
                                        <div class="input-field col s12">
                                            <input type="email" name="email" class="email validate" id="email2" />
                                            <label for="email2" data-error="wrong" data-success="right">Confirm Email</label>
                                        </div>
                                    </div>
                                    <div class="row row_register">
                                        <div class="input-field col s6">
                                            <label for="birth">Birthday</label>
                                            <input type="date" class="datepicker" id="birth" name="birthday"/>
                                        </div>
                                    </div>
                                    <input type="hidden" name="command" value="Userversvs.register" />
                                    <input type="submit" class="waves-effect btn btn-register" name="Register" value="Register" />
                                </form>
                                <!-- Form Ends -->
                                <div class="input-group-login center-align separa_linha">
                                    <label class="alredy_account">Already have an account? <a href="login.jsp">Login</a></label>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
                <div class="col m4"></div>
            </div>
        </main>
        <!-- Main Ends -->
        <!-- jQuery Materialize -->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="materialize/js/materialize.min.js"></script>

        <!-- Versvs JS -->
        <script src="js_versvs/script.js" type="text/javascript"></script>
    </body>
</html>
