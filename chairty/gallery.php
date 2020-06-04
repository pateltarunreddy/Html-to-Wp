<!-- ======= Gallery Section ======= -->
   <?php
if ( function_exists( 'ot_get_option' ) ) {
	$link=ot_get_option( 'link' );  
	$limit=10;
$images = explode( ',', ot_get_option( 'images', '' ) ,$limit );

}
    if ( ! empty( $images ) ) {
		?>
		
		

   <section id="gallery" class="gallery">
      <div class="container">

        <div class="section-title" data-aos="fade-up">
          <h2>Gallery</h2>
          <p>Check our Gallery</p>
        </div>

        <div class="row no-gutters" data-aos="fade-left">
<?php
foreach( $images as $id ) {
    if ( ! empty( $id ) ) {
$full_img_src = wp_get_attachment_image_src( $id, 'custom-thumb' );

		?>
          <div class="col-lg-3 col-md-4">
            <div class="gallery-item" data-aos="zoom-in" data-aos-delay="100">
              <a href="<?php echo $full_img_src[0];?> " class="venobox" data-gall="gallery-item">
                <img src="<?php echo $full_img_src[0];?>" alt="" class="img-fluid">
              </a>
            </div>
          </div>

         

	  <?php      	}
    }      }?>
        

          

         

          

          

          

        </div>

      </div>
    </section><!-- End Gallery Section -->