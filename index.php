<?php
    include 'functions.php';
?>
<!DOCTYPE html>
<html lang="id">
  <head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>    
    <link rel="icon" href="favicon.ico"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300&display=swap" rel="stylesheet">
    <title>Sistem Informasi Geografis</title>
    <link href="assets/css/solar-bootstrap.min.css" rel="stylesheet"/>
    <link href="assets/css/general.css" rel="stylesheet"/>
    <link href="assets/css/index.css" rel="stylesheet"/>
    <link rel="stylesheet" href="assets/css/tempat_detail.css">
    <link rel="stylesheet" href="assets/css/tempat_list.css">
    <link rel="stylesheet" href="assets/css/login.css">
    <link rel="stylesheet" href="assets/css/tempat.css">    

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>  
    <script src="assets/tinymce/tinymce.min.js"></script> 
    <script>
        tinymce.init({
        selector: "textarea.mce",
            plugins: [
                "advlist autolink lists link image charmap print preview anchor",
                "searchreplace visualblocks code fullscreen",
                "insertdatetime media table contextmenu paste"
            ],
            menubar : false,
            toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
        });
    </script>   
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAFAAqQjvk-HVvrgdHnb87KXt5ypxZZRq8&language=id&region=ID"></script>
    <script>
        var default_lat = <?=get_option('default_lat')?>; 
        var default_lng = <?=get_option('default_lng')?>;
        var default_zoom = <?=get_option('default_zoom')?>;
    </script>
    <script src="assets/js/script.js"></script>
  </head>
  <body>
    <nav class="navbar navbar-default navbar-static-top">
      <div class="container">
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <?php if($_SESSION['login']):?>
                <?php if($_SESSION['login'] == 'admin'):?>
                <li><a href="?m=tempat_list"><span class="glyphicon glyphicon-map-marker"></span> Maps</a></li>
                <li><a href="?m=tempat"><span class="glyphicon glyphicon-home"></span> Dashboard Admin</a></li>
                <li><a href="?m=password"><span class="glyphicon glyphicon-lock"></span> Password</a></li>
                <li><a href="aksi.php?act=logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
                    <?php else:?>
                <li><a href="?m=tempat_list"><span class="glyphicon glyphicon-map-marker"></span> Maps</a></li>
                <li><a href="?m=password"><span class="glyphicon glyphicon-lock"></span> Password</a></li>
                <li><a href="aksi.php?act=logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
            <?php endif?>                   
            <?php else:?>
                <li><a href="?m=tempat_list"><span class="glyphicon glyphicon-map-marker"></span> Maps</a></li>
                <li><a href="?m=login"><span class="glyphicon glyphicon-user"></span> Login</a></li>
                <li><a href="?m=register"><span class="glyphicon glyphicon-user"></span> Register</a></li>
            <?php endif?>                   
          </ul>          
        </div>
      </div>
    </nav>

    <div class="container">
    <?php
        if(file_exists($mod.'.php'))
            include $mod.'.php';
        else
            include 'tempat_list.php';
    ?>
    </div>
</body>
</html>