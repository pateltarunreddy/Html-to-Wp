    <!-- ======= Team Section ======= -->
   <?php if(function_exists(ot_get_option))
   {
	  $title=ot_get_option('title');
	$link=ot_get_option('link');

		$image=ot_get_option('image');
$teams=ot_get_option('teams',array());
	}
	if(!empty($teams))
	{
		
	?>
   <section id="team" class="team">
      <div class="container">

        <div class="section-title" data-aos="fade-up">
          <h2>Team</h2>
          <p>Our Great Team</p>
        </div>

        <div class="row" data-aos="fade-left">
<?php foreach($teams as $row)
		
		{
			
			?>
          <div class="col-lg-3 col-md-6">
            
			
		
			<div class="member" data-aos="zoom-in" data-aos-delay="100">
			
              <div class="pic"><img src="<?php echo $row['image'];?>" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4><?php echo $row['title'];?></h4>
                <span><?php echo $row['link'];?></span>
                <div class="social">
                  <a href=""><i class="icofont-twitter"></i></a>
                  <a href=""><i class="icofont-facebook"></i></a>
                  <a href=""><i class="icofont-instagram"></i></a>
                  <a href=""><i class="icofont-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>
		<?php }?>

       

          

         

        </div>

      </div>
    </section><!-- End Team Section -->
	<?php }?>
