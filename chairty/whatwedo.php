
<?php
if ( function_exists( 'ot_get_option' ) ) {
	$description=ot_get_option( 'description' );
 $title=ot_get_option( 'title' ); 
$link = ot_get_option( 'link');
$wedo = ot_get_option( 'wedo' ,array() );

}






if ( ! empty($wedo) ) {

?>

<section id="activities-sec">
<div class="container">
<div class="row text-center">
<h1>WHAT WE DO?</h1>
<hr>
<h5>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</h5>
 <?php 
  
    foreach( $wedo as $slide ) { ?>

<div class="text-left">
<div class="col-md-4 clearfix top-off">


<div class="grid-content-left"><?php echo $slide['link']; ?></div>
<div class="grid-content-wrapper"><h4><?php echo $slide['title']; ?></h4>

<p><?php echo $slide['description']; ?></p>
<a href="activities.html" title="" >Read More</a>
</div>
	
</div>


<?php }?>


</div>
</div>
</div>
</section><?php } ?>