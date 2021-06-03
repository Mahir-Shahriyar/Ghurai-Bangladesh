<!DOCTYPE html>
<html>
<head>
<style>
.button {
  background-color: #FFFFFF; /* Green */
  border: none;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 18px;
  margin: 40px 20px;
  cursor: pointer;
}

.button1 {
  background-color: white; 
  color: black; 
  border: 5px solid #4CAF50;
}


.center {
  text-align: center;
  border: 5px solid green;
}
</style>

   <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

        <title>Admin Portal</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">

        <!-- Owl Carousel Link -->
        <link rel="stylesheet" href="https://cdn.boomcdn.com/libs/owl-carousel/2.3.4/assets/owl.theme.default.min.css">
        <link rel="stylesheet" href="https://cdn.boomcdn.com/libs/owl-carousel/2.3.4/assets/owl.carousel.min.css">

        <!-- Custom css -->
        <link rel="stylesheet" href="../css/custom.css">

        <!-- Responsive Style -->
      <link rel="stylesheet" href="../css/responsive.css">

        <!-- jQuery Magnific Popup LightBox Plugin -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css" />
</head>
<body>

    <header class="header" id="header">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <nav class="navbar navbar-expand-lg">
                        <a class="navbar-brand" href="../#"><img src="../images/GB_icon.png" alt="Logo"></a>
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
                                    <a class="nav-link" href="../home.html">Back to Home</a>
                                </li>
                               
                            </ul>
                        </div>
                      </nav>
                </div>
            </div>
        </div>
    </header>
</body>

     <body>   
    <?php
            
            require_once("../db_connect.php");
            session_start();

            if(isset($_POST["email"])&&isset($_POST["pass"]))
            {
                $email=$_POST["email"];
                $pass = $_POST["pass"];

                $_SESSION["email"]=$email;

                $connect = mysqli_connect(HOST, USER, PASS, DB) or die("Cannot connect with database");

                $result= mysqli_query($connect, "SELECT admin_name FROM admin WHERE admin_mail = '$email' and admin_pass = '$pass'") or die ("Cannot execute query");

                if($result->num_rows == 1)
                {
                     while($rows= mysqli_fetch_array($result))
                    {
                        extract($rows);
                        echo" <br><br><br><h3> Welcome Admin $admin_name !!!</h3><br>";
                    
                        echo" <button class= button button1> <a href = ../admin/adminportal.html>homepage</a> </button>";
                    }
                }

               
                else
                {
                  
                    echo "Sorry! Your Password is incorrect. Kindly Login again..<br><br><br><br> ";
                    echo "<p><a href= admin_login.html> Sign In>> </a> <br>";

                    printf('</div');
                }
            }

    ?>
    
</body>
</html>