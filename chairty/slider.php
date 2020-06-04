<?php
 if(function_exists(ot_get_option))
{
	$homeslider=ot_get_option('homeslider',array());
}
if(!empty($homeslider))
{
	$i = 0;	
?>
<div id="first-slider">
    <div id="carousel-example-generic" class="carousel slide carousel-fade">
        <!-- Indicators -->
        <ol class="carousel-indicators">
		<?php 
    foreach( $homeslider as $slide ) { ?>
            <li data-target="#carousel-example-generic" data-slide-to="<?php echo $i; ?>" class="<?php if($i == 0){?> active <?php } ?>"></li>
           <?php $i++; }  ?>
        </ol>
        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
           <?php 
  $i = 0;	
    foreach($homeslider as $slide ) { ?>
	
    <div class="item <?php if($i == 0){?>active <?php } ?>">
	<?php if(!empty($slide['image'])){ ?>
	
	
      <img src="<?php echo $slide['image']; ?>" width="100%" height="200">
	   
	  
	   <?php } ?>
	    
    </div>
	<?php $i++; }  ?>
           
           
          
    
        </div>
        <!-- End Wrapper for slides-->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <i class="fa fa-angle-left"></i><span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <i class="fa fa-angle-right"></i><span class="sr-only">Next</span>
        </a>
    </div>
</div>
 <?php } ?>