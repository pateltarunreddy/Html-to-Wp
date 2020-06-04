 <?php
if ( function_exists( 'ot_get_option' ) ) {
	$link=ot_get_option( 'link' );  
	$limit=10;
$galleryimages = explode( ',', ot_get_option( 'galleryimages', '' ) ,$limit );

}
    if ( ! empty( $galleryimages ) ) {
		?>

<section id="gallery-sec">
<div class="container">
<div class="row text-center">
<h1>OUR GALLERY</h1>
<hr>
<h5>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</h5>

<ul class="clearfix">
<?php
foreach( $galleryimages as $id ) {
    if ( ! empty( $id ) ) {
$full_img_src = wp_get_attachment_image_src( $id, 'custom-thumb' );

		?>
<li>
<a href="<?php echo $full_img_src[0];?>" class="swipebox" title="My Caption">
<div class="image"><img src="<?php echo $full_img_src[0];?>">
<div class="overlay"><i class="fa fa-search-plus"></i></div>
</div></a>
</li>


 



<?php      	}
    }      }?>


</ul>
<div class="text-center">
<a href="gallery.html" class="btn1">View More</a>
</div>
</div>
</div>
</section>
