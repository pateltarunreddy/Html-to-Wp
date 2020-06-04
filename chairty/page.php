<?php
get_header();
include (TEMPLATEPATH . '/inc/default-banner.php' ); ?>
<?php get_header(); ?>
<section id="welcome">
            <div class="container">
	<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
				
				<div id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
					
					<p><?php the_content();?></p>	
					
					<span class="post-meta"><?php edit_post_link(__('Edit This Post'));?></span>

				</div><!-- .post --> 

		<?php endwhile; else: ?>
		<p><?php _e('Sorry, no posts matched your criteriaes.'); ?></p>
		<?php endif; ?>

</div></section>
<?php get_footer(); ?>