<?php
	  get_header(); 
include (TEMPLATEPATH . '/inc/default-banner.php' );  
?>

<?php get_header(); ?>
<section id="welcome">
            <div class="container">
			
				<h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
	<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); 
	
	?>
	
				<div class="center">
				<?php the_post_thumbnail(); ?></div><br/><br/><br/><br/>
				<div id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
				
					<p><?php the_content();?></p>	
					
					<span class="post-meta">Posted by1203 <a href="#"><?php the_author(' ');?></a> on <?php the_time('F jS, Y')?><?php edit_post_link(__(' | Edit This Post'));?></span>

				</div><!-- .post --> 

		<?php endwhile; else: ?>
		<p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
		<?php endif; ?>

		<?comments_template( '', true );?>
</div></section>
<?php get_footer(); ?>