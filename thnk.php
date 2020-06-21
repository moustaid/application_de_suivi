<?php 
session_start(); 
$name2=$_SESSION["sname"];
$email=$_SESSION["semail"];
?>

<?php header('Refresh: 5; URL=index.php'); ?>

<!DOCTYPE html>
<html>
    <head>
       
    
    </head>
    
    <bod>
        <div style="background:rgba(84, 239, 3, 0.25);border:1px solid red;box-shadow:0px 0px 20px red;margin:5% 10%;">
        <center>
        <h1>Merci <?php echo $name2; ?> </h1>
        <h1>Votre  Email id <u><?php echo $email; ?></u>  est votre Login Id</h1>
        <h3>Maintenant vous pouvez logger avec votre mot de passe</h3>
            <h2>Cette page est redirigee automatiquement</h2></center>
            </div>
            
            <?php session_destroy();  ?>
    
    </bod>

</html>