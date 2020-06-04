<?php get_header(); ?>
<section id="welcome">
            <div class="container">
                <div class="row">
                   <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
				
				<div id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
					<h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
					<p><?php the_content();?></p>	
					
					<span class="post-meta">Posted by <a href="#"><?php the_author(' ');?></a> on <?php the_time('F jS, Y')?><?php edit_post_link(__(' | Edit This Post'));?></span>

				</div><!-- .post --> 

		<?php endwhile; else: ?>
		<p><?php _e('Sorry, no posts matched your criteriass.'); ?></p>
		<?php endif; ?>

                </div>
                <!--End of row-->
            </div>
            <!--End of container-->
        </section>
        <!--end of welcome section--><?php get_footer(); ?>