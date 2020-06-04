<?php
	  get_header(); 
include (TEMPLATEPATH . '/inc/default-banner.php' );  
?>
<div class="container inner-wrapp">
  <div class="col-sm-8 inner-left-cont">
    <div class="blog-block clearfix no-border">
<?php 
              $post = $posts[0]; // Hack. Set $post so that the_date() works. ?>
			  			  <h3 class="subtitle">
              <?php /* If this is a category archive */ if (is_category()) { ?>
              Archive for the &#8216;<?php echo single_cat_title(); ?>&#8217; Category
              <?php /* If this is a daily archive */ } elseif (is_day()) { ?>
              Archive for
              <?php the_time('F jS, Y'); ?>
              <?php /* If this is a monthly archive */ } elseif (is_month()) { ?>
              Archive for
              <?php the_time('F, Y'); ?>
              <?php /* If this is a yearly archive */ } elseif (is_year()) { ?>
              Archive for
              <?php the_time('Y'); ?>
              <?php /* If this is an author archive */ } elseif (is_author()) { ?>
              Author Archives
              <?php /* If this is a paged archive */ } elseif (isset($_GET['paged']) && !empty($_GET['paged'])) { ?>
                Blog Archives
                
                <?php } ?></h3>
				
 <div class="blog-content">
        <?php 
 while(have_posts()){the_post();
	  the_post_thumbnail('thumbnail');?>
        <div class="blog-heading clearfix blog-heading-bottom-line">
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
           <a href="<?php comments_link(); ?>"><i class="fa fa-comment"></i>
            <?php comments_number('No Comment', 'One Comment', '% Comments' );?>
            </a> </div>
        </div>
        <?php  the_content(); ?>
        <?php if(!empty($facebook_url) && $twitter_url){ ?>
        <div class="blog-social-icons clearfix"> <span><?php echo $social_heading; ?></span> <a class="facebook-icon" target="_blank" href="<?php echo $facebook_url; ?>" tittle="facebook"> </a> <a class="twitter-icon" target="_blank" href="<?php echo $twitter_url; ?>" tittle="twitter"> </a> </div>
        <?php }}
        include (TEMPLATEPATH . '/inc/nav.php' );
wp_reset_query();
 ?>
      </div>
	  
 </div>
    </div>

  <?//php get_sidebar();?>
</div>
<?php get_footer(); // This fxn gets the footer.php file and renders it ?>
