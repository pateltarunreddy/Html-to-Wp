<?php
if(function_exists('ot_get_option'))
{
	$homeabout=ot_get_option('homeabout');
	
			

}
if(!empty($homeabout))
{
	?>
	<section id="about-sec">
<div class="container">
<div class="row text-center">
<h1>WELCOME TO EEMAAN FOUNDATION</h1>
<hr>
<?php echo $homeabout;?>
<div class="text-center">
<a href="donate.html" class="btn1">donate now</a>
<a href="about-us.html" class="btn2">Read More</a>
</div>
</div>
</div>
</section>
	
	
	
	
	
	
	
	
	
	
	
	
   <?php }?>