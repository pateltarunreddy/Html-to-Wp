<!-- ======= Testimonials Section ======= -->
   <?php
   
   if(function_exists(ot_get_option))
   {
	   $title=ot_get_option('title');
	    $link=ot_get_option('link');
		 $image=ot_get_option('image');
		  $description=ot_get_option('description');
		  $testimonials=ot_get_option('testimonials',array());
		  
   }
   if(!empty($testimonials))
   {
	   ?>


   <section id="testimonials" class="testimonials">
      <div class="container">

        <div class="owl-carousel testimonials-carousel" data-aos="zoom-in">
<?php foreach($testimonials as $row)

{
?>
          <div class="testimonial-item">
            <img src="<?php echo $row['image'];?>" class="testimonial-img" alt="">
            <h3><?php echo $row['title'];?></h3>
            <h4><?php echo $row['link'];?></h4>
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
<?php echo $row['description'];?>              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
          </div>
   
          
<?php }?>
          

          


        </div>

      </div>
    </section><!-- End Testimonials Section -->   <?php }?>
