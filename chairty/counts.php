<!-- ======= Counts Section ======= -->
    <?php
	if(function_exists('ot_get_option'))
	{
		$title=ot_get_option('title');
		$link=ot_get_option('link');
		$description=ot_get_option('description');
		$counts=ot_get_option('counts',array());
	}
	if (!empty($counts))
	{
		?>
	
	<section id="counts" class="counts">
      <div class="container">

        <div class="row" data-aos="fade-up">
<?php foreach($counts as $row)
{
	?>
          <div class="col-lg-3 col-md-6">
            <div class="count-box">
              <?php echo $row['description'];?>
<span data-toggle="counter-up"><?php echo $row['link'];?></span>
              <p><?php echo $row['title'];?></p>
            </div>
          </div>

<?php }?>

          

         

        </div>

      </div>
    </section><!-- End Counts Section --><?php }?>
