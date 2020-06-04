<?php
 //if ( function_exists( 'ot_get_option' ) ) {
  //$default_banner = ot_get_option( 'default_banner' );
//}

//$banner_image = get_post_meta( get_the_ID(), 'wpcf-banner-image' );
//$pagesubTitle = get_the_subtitle(get_the_ID(),'','',false);
$pageTitle = get_the_title(get_the_ID(),'','',false);

if(empty($pagesubTitle)){
$pagesubTitle = $pageTitle;
}
?> 
<section id="inner-banner">
<div class="overlay">
<div class="container">
<div class="row"> 
<div class="col-sm-6"><h1><?php echo $pageTitle;?></h1></div>
<div class="col-sm-6">
  <h6 class="breadcrumb"><?php if(!is_single()){contextual_nav_menu_breadcrumb();} ?></h6></div>

  
</div>
</div>
</div>
</section>



