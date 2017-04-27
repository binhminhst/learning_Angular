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


            <div class="content">
                <div style="padding:20px; font-family: sans-serif !important ;">
                    <div style="border: 0px solid #ff0000; float: left; width: 100%; padding:20px; color: #292929 !important;">
                         Show Data:
                         <a href="">All</a> | <a href="">Fab_ric</a> | <a href="">Type</a> | <a href="">Fab_ric And Type</a> |
                    </div>

                    <?php   $order = 1 ;
                            foreach ($data_shop['query_shop'] As $key => $value){
                    ?>
                                    Order:  <?php echo $order ; ?>
                                    Fab_ric: <?php echo $value->fab_ric ; ?>
                                    Type: <?php echo $value->type ; ?>
                                    Family:  <?php echo $value->family ; ?>
                                    Misa_code:  <?php echo $value->misa_code ; ?>
                                    Desc:  <?php echo $value->desc ; ?>
                                    Price:  <?php echo '<b>'.$value->price.'</b>' ; ?>
                    <?php
                            $order++ ;
                            }
                    ?>


                </div>

            </div>
        </div>
    </body>
</html>
