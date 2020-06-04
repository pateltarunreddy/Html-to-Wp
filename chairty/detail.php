<!-- ======= Details Section ======= -->
    <?php if(function_exists('ot_get_option'))
	{
		$detail=ot_get_option('detail');
		$content=ot_get_option('content');
		$detail1=ot_get_option('detail1');
		$content1=ot_get_option('content1');
		$detail2=ot_get_option('detail2');
		$content2=ot_get_option('content2');
		$detail3=ot_get_option('detail3');
		$content3=ot_get_option('content3');
	}
	?>
	
	<section id="details" class="details">
      <div class="container">

        <div class="row content">
          <div class="col-md-4" data-aos="fade-right">
		  <?php
		  if(!empty($detail))
		  {
			  ?>
            <img src="<?php echo $detail;?>" class="img-fluid" alt="">
		  <?php }?>
          </div>
		  <?php
		  if(!empty($content))
		  {
			  ?>
          <div class="col-md-8 pt-4" data-aos="fade-up">
            <?php echo $content;?>
          </div>
		  <?php }?>
        </div>

        <div class="row content">
          <div class="col-md-4 order-1 order-md-2" data-aos="fade-left">
		  <?php
		  if(!empty($detail1))
		  {
			  ?>
			  
            <img src="<?php echo $detail1;?>" class="img-fluid" alt="">
		  <?php }?>
          </div>
          <div class="col-md-8 pt-5 order-2 order-md-1" data-aos="fade-up">
		  <?php if(!empty($content1))
		  {
			  ?>
            <?php echo $content1;?>
          </div>
		  <?php }?>
        </div>

        <div class="row content">
          <div class="col-md-4" data-aos="fade-right">
		  <?php
		  if(!empty($detail2))
		  {
			  ?>
            <img src="<?php echo $detail2; ?>" class="img-fluid" alt="">
		  <?php }?>
          </div>
          <div class="col-md-8 pt-5" data-aos="fade-up">
		  <?php
		  if(!empty($content2))
		  {
			  ?>
            <?php echo $content2;?>
          </div>
		  <?php }?>
        </div>

        <div class="row content">
          <div class="col-md-4 order-1 order-md-2" data-aos="fade-left">
		  <?php
		  if(!empty($detail3))
		  {
			  ?>
            <img src="<?php echo $detail3 ?>" class="img-fluid" alt="">
		  <?php }?>
          </div>
          <div class="col-md-8 pt-5 order-2 order-md-1" data-aos="fade-up">
            <?php if(!empty($content3))
			{
				?>
				  <?php echo $content3;?>
          </div>
			<?php }?>
        </div>

      </div>
    </section><!-- End Details Section -->
