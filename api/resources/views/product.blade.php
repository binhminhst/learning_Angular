<!DOCTYPE html>
<html lang="{{ config('app.locale') }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Raleway', sans-serif;
                font-weight: 100;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 12px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
        </style>
    </head>
    <body>
        <div class="flex-center position-ref full-height">
            @if (Route::has('login'))
                <div class="top-right links">
                    @if (Auth::check())
                        <a href="{{ url('/home') }}">Home</a>
                    @else
                        <a href="{{ url('/login') }}">Login</a>
                        <a href="{{ url('/register') }}">Register</a>
                    @endif
                </div>
            @endif

            <div class="content">
                <div style="padding:20px; font-family: sans-serif !important ;">
                    <div style="border: 0px solid #ff0000; float: left; width: 100%; padding:20px; color: #292929 !important;">
                        <a href="product/preInsert">Insert new product</a> |
                        <a href="logout">Logout</a>
                    </div>
                    <?php
                        foreach ($data As $key => $value){
                    ?>
                        <div style="border: 0px solid #ff0000; float: left; width: 100%; padding:20px; color: #292929 !important;">
                                <div style="float: left; width: 20%; text-align: left;"><b>Tên SP:</b></div>
                                <div style="float: left; width: 25%; text-align: left; color: #292929 !important;"> <?php echo $value->name_product ;?></div>
                                <div style="float: left; width: 20%; text-align: left;"><b>Giá SP:</b></div>
                                <div style="float: left; width: 25%; text-align: left; color: #292929 !important ;"> <?php echo $value->price_product ;?></div>
                                <div style="float: left; width: 10%; text-align: left;"><a href="projectLaravelExp/public/product/preEdit/?pro=<?php echo $value->id ;?>">Edit</a> - <a href="projectLaravelExp/public/product/preDel/?pro=<?php echo $value->id ;?>">Del</a></div>
                        </div>

                    <?php
                        }
                    ?>

                </div>

            </div>
        </div>
    </body>
</html>
