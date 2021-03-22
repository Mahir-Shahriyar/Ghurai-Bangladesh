<!doctype html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

        <title>Booking</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">

        <!-- Owl Carousel Link -->
        <link rel="stylesheet" href="https://cdn.boomcdn.com/libs/owl-carousel/2.3.4/assets/owl.theme.default.min.css">
        <link rel="stylesheet" href="https://cdn.boomcdn.com/libs/owl-carousel/2.3.4/assets/owl.carousel.min.css">

        <!-- Custom css -->
        <link rel="stylesheet" href="css/custom.css">

        <!-- Responsive Style -->
        <link rel="stylesheet" href="css/responsive.css">
        <link rel="stylesheet" href="css/symentic.min.css">
    </head>

    <body>
        <!-- Header Top Section Start Here -->

        <!-- Header Top Section Ends Here -->

        <!-- Header Section Start Here -->
        <header class="header" id="header">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <nav class="navbar navbar-expand-lg">
                            <a class="navbar-brand" href="#"><img src="images/GB_icon.png " alt="Logo"></a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <!-- <span class="navbar-toggler-icon"></span> -->
                                <span class="sr-only">Toggle navigation </span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>

                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav ml-auto">
                                    <li class="nav-item">
                                        <a class="nav-link" href="index.html">Home</a>
                                    </li>

                                    <li class="nav-item">
                                        <a class="nav-link" href="menu.html">Menu</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="gallery.html">Gallery</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link active" href="booking.html">Booking</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="contact.html">Contact</a>
                                    </li>
                                </ul>
                            </div>
                          </nav>
                    </div>
                </div>
            </div>
        </header>
    </body>

    <br><br><br><br><br>
    <body>
        <?php
            require_once('db_connect.php');
            $connect = mysqli_connect( HOST, USER, PASS, DB )
                 or die("Can not connect");
            
            $results = mysqli_query( $connect, "SELECT * FROM destination where Regionregion_id = 105" )
        or die("Can not execute query");

        //echo "<table border> \n";
        printf('<div class = "ui text container">');

        printf('<table class = "ui unstackable table">');

        echo "<th>  Tourist Spot  </th> <th> Local Transport </th> <th> Local Transport Fare </th> <th></th> \n";

        while( $rows = mysqli_fetch_array( $results ) ) {
         extract( $rows );
            echo "<tr>";
            echo "<td> $destination_name </td>";
            echo "<td> $local_transport </td>";
            echo "<td> $local_transport_fare</td>";

           echo "<td> <a href = 'booking.html'> Book Now </a> </td>";
        
            echo "</tr> \n";
        }

       // echo "</table> \n";

        printf('</table');
        printf('</div');


        ?>





        <!-- jQuery first, then , then  -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <!-- Popper.js -->
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <!-- Bootstrap JS -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
        <!-- Font Awesome -->
        <script src="https://kit.fontawesome.com/8d5b29c7bc.js" crossorigin="anonymous"></script>

        <script src="js/isotope.pkgd.min.js"></script>
        <!-- Custom Js -->
        <script src="js/custom.js"></script>
    </body>

</html>