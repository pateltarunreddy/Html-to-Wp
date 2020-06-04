<?php 
/*Template Name: Blog Page */
get_header();
include (TEMPLATEPATH . '/inc/default-banner.php' );  
?>

<!--slider-wrapp-->
<section id="welcome">
            <div class="container">

  <div class="col-sm-8 inner-left-cont">
    <?php 
$paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
$args = array('post_type' => 'post','paged' => $paged,'caller_get_posts' => 1 );
query_posts($args); 

while (have_posts()) { the_post();
$blog_img =get_post_meta( get_the_ID(), 'cw_post_type_news' );
?>
    <div class="blog-block clearfix">

      <div class="blog-content">
<?php if(!empty($blog_img)){?><img class="img-responsive col-sm-12" src="<?php echo $blog_img[0]; ?>" alt="" /><?php } ?>
        <div class="blog-heading clearfix">
          <div class="blog-date">
            <h5><span><?php echo get_the_date('j'); ?></span> <br/>
              <?php echo get_the_date('F'); ?></h5>
            <?php echo get_the_date('Y'); ?></div>
          <h4><a href="<?php the_permalink() ?>">
            <?php the_title(); ?>
            </a></h4>
          <div class="blog-comments-text clearfix">
		     <a href="<?php echo get_author_posts_url( get_the_author_meta( 'ID' ) ); ?>"	>	  
		  <i class="fa fa-user"></i>			
		   <?php the_author_meta( 'display_name' ); ?></a>
		  
            <a href="<?php comments_link(); ?>">
			<i class="fa fa-comment"></i>
            <?php comments_number('No Comment', 'One Comment', '% Comments' );?>
            </a> </div>
        </div>
        <?php the_excerpt(); ?>
        <h6><a href="<?php the_permalink() ?>" class="read_more">Read More</a></h6>
      </div>
    </div>
    <?php } 
//include (TEMPLATEPATH . '/inc/nav.php' );
?>
  </div>
  <?//php get_sidebar();?>
</div>
</div></section>
<!--container-->

<?php get_footer(); ?>
