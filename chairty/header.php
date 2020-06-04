<?php if ( function_exists( 'ot_get_option' ) ) 
{ 
$logo=ot_get_option('logo' );
 $phonenumber=ot_get_option( 'phonenumber' ); 
 $email=ot_get_option( 'email' );
//$social=ot_get_option( 'social' );
 $websiteurl=ot_get_option( 'websiteurl' ); 
 } ?>


<!DOCTYPE HTML>
<html class="no-js" lang="de">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="robots" content="index,follow">

<title><?php bloginfo('name'); ?> | <?php is_front_page() ? bloginfo('description') : wp_title(''); ?></title>

<link href="<?php bloginfo('template_directory'); ?>/css/font-awesome.min.css" rel="stylesheet">
<link href="<?php bloginfo('template_directory'); ?>/css/animate.css" rel="stylesheet">
<link href="<?php bloginfo('template_directory'); ?>/css/bootsnav.css" rel="stylesheet">
<link href="<?php bloginfo('template_directory'); ?>/css/bootstrap.css" rel="stylesheet">
<link href="<?php bloginfo('template_directory'); ?>/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/css/swipebox.css">

<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'> 
</head>
<body>
<div class="topbar">
<div class="container">
<div class="row"> 	
<div class="bar-phone"><?php if(!empty($phonenumber)){ ?>
<i class="fa fa-phone"></i> <span>Call Us :</span> <strong><?php echo $phonenumber;?></strong>
<?php }?>
</div>
<div class="bar-mail">
<?php if(!empty($email)){ ?>
<i class="fa fa-envelope"></i> <span>Mail Us :</span> <strong><?php echo $email;?></strong><?php }?>
</div>
<div class="header-social">
<a class="facebook" href="#" title="facebook" target="_blank" rel="nofollow"><i class="fa fa-facebook"></i>  </a>
<a class="twitter" href="#" title="twitter" target="_blank" rel="nofollow"><i class="fa fa-twitter"></i>  </a>
<a class="linkedin" href="#" title="linkedin" target="_blank" rel="nofollow"><i class="fa fa-linkedin"></i>  </a>
<a class="google" href="#" title="google-plus" target="_blank" rel="nofollow"><i class="fa fa-google-plus"></i>  </a>
<a class="youtube" href="#" title="youtube-play" target="_blank" rel="nofollow"><i class="fa fa-youtube-play"></i>  </a>
</div>
</div>
</div>
</div>
<nav class="navbar navbar-default navbar-sticky bootsnav">
<div class="container">
<div class="row"> 
<div class="attr-nav">
<a class="sponsor-button" href="sponsor-a-child.html">sponsor a child</a>
<a class="donation" href="donate.html">donate now</a>
</div>           
<div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
<i class="fa fa-bars"></i>
</button><?php if(!empty($websiteurl)){ ?>
<a class="navbar-brand logo" href="<?php echo$websiteurl;?>">
 <?php if(!empty($logo)){ ?>

<img src="<?php echo $logo;?>" class="img-responsive" />
 <?php }}?>

</a>
</div>
<div class="collapse navbar-collapse" id="navbar-menu">
<ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp">
<li><?php wp_nav_menu(array('theme_location'=> 'header-menu','container' => 'div', 'menu_id'=>'bs-example-navbar-collapse-1','menu_class'=>'nav navbar-nav navbar-right main-nav'
  ) );?>   </li> 
  </ul>
</div>
</div>
</div>
</nav>

  