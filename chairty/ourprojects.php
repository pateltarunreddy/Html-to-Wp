<section id="projects-sec">
<div class="container">
<div class="row text-center">
<h1>OUR PROJECTS</h1>
<hr>
<h5>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</h5>

<?php 
$per_page = get_option('posts_per_page');
$paged = (get_query_var('post') && get_query_var('paged') > 1) ? get_query_var('paged') : 1;
$show = ($offset == 0) ? 'posts_per_page=3' : 'posts_per_page='.$per_page;
$cat = wp_get_recent_posts( $show );

query_posts("cat=$cat&paged=$paged&$show");
			while (have_posts()) { the_post();


?>


<div class="text-center">
<div class="col-md-4 clearfix top-off">
 

<div class="grid-image">
<?php 
$blog_img1 =the_post_thumbnail('thumbnail');
if(!empty($blog_img1)){?>
<img src="<?php echo $blog_img1;?>" alt="" >
<?php  } ?>
</div>
<div class="post-content">
<h3><?php the_title(); ?></h3>
<hr>
<p><?php the_excerpt(); ?></p>
<a href="<?php the_permalink() ?>" title="" >View Project</a>
</div>
</div>



</div><?php } ?>
</div>
</section>