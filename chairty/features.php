<!-- ======= Features Section ======= -->
  <?php
  if ( function_exists( 'ot_get_option' ) ) {
  
	  $title=ot_get_option('title');
	   $description=ot_get_option('description');
$features1=ot_get_option('features1' ,array() );
  }
  if ( ! empty($features1) ) {
	  ?>

  <section id="features" class="features">
      <div class="container">

        <div class="section-title" data-aos="fade-up">
          <h2>Features</h2>
          <p>Check The Features</p>
        </div>

        <div class="row" data-aos="fade-left">
		<?php
foreach($features1 as $row)
{
	?>
          <div class="col-lg-3 col-md-4 mt-4">
            <div class="icon-box" data-aos="zoom-in" data-aos-delay="50">
              <?php echo $row['description']; ?>
              <h3><a href=""><?php echo $row['title']; ?></a></h3>
            </div>
          </div>
          
          
          
          
          
          
<?php }?>
          
          
          
          
        </div>

      </div>
    </section><!-- End Features Section --><?php }?>
