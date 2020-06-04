<footer class="footer">
		<div class="footer-body">
                <div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="footer-section">
						<h4 class="footer-section-title">About Charity</h4><!-- /.footer-section-title -->
						
						<div class="footer-section-body">
							<p> <?php if(is_active_sidebar('footer_block')):dynamic_sidebar('footer_block');endif;?></p>
							
						</div><!-- /.footer-section-body -->
					</div><!-- /.footer-section -->
				</div><!-- /.columns large-3 medium-12 -->
				
				<div class="col-md-3">
					<div class="footer-section">
						<h4 class="footer-section-title">Quick Links</h4><!-- /.footer-section-title -->
						
						<div class="footer-section-body">
							<?php if(is_active_sidebar('home_image_blocks')):dynamic_sidebar('home_image_blocks');endif;?><!-- /.list-links -->

						</div><!-- /.footer-section-body -->
					</div><!-- /.footer-section -->
				</div><!-- /.columns large-3 medium-12 -->
				
				<div class="col-md-3">
					<div class="footer-section">
						<h4 class="footer-section-title">Total Visitors</h4><!-- /.footer-section-title -->
						
						<div class="footer-section-body">
							<p><?php if(is_active_sidebar('subscribe_block')):dynamic_sidebar('subscribe_block');endif;?></p>

							<!-- /.subscribe -->
						</div><!-- /.footer-section-body -->
					</div><!-- /.footer-section -->
				</div>
				<!-- /.columns large-3 medium-12 -->
				
				<div class="col-md-3">
					<div class="footer-section">
						<h4 class="footer-section-title">Contact Us</h4><!-- /.footer-section-title -->
						<?php if(is_active_sidebar('home_services_blocks')):dynamic_sidebar('home_services_blocks');endif;?>
						<!-- /.footer-section-body -->
					</div><!-- /.footer-section -->
				</div><!-- /.columns large-3 medium-12 -->
			</div><!-- /.row -->
		</div>
        </div><!-- /.footer-body -->

		<div class="bwt-footer-copyright">
<div class="container">
<div class="row">
<div class="col-md-6 copyright">
<div class="left-text">Copyright &copy; Eemaan Foundation  2020. All Rights Reserved</div>
<div class="right-text">tttt</div>
</div>
        </div>
        </div>
        </div>
		
		
		
	</footer>

  
 <script type="text/javascript" src="<?php bloginfo('template_directory');?>/js/jquery.min.js"></script>
<script src="<?php bloginfo('template_directory');?>/js/bootstrap.js"></script>
<script src="<?php bloginfo('template_directory');?>/js/bootsnav.js"></script>
<script src="<?php bloginfo('template_directory');?>/js/banner.js"></script>  
<script src="<?php bloginfo('template_directory');?>/js/jquery.swipebox.js"></script>
<script type="text/javascript">
	$( document ).ready(function() {

			/* Basic Gallery */
			$( '.swipebox' ).swipebox();
			
			/* Video */
			$( '.swipebox-video' ).swipebox();

			/* Dynamic Gallery */
			$( '#gallery' ).click( function( e ) {
				e.preventDefault();
				$.swipebox( [
					{ href : 'http://swipebox.csag.co/mages/image-1.jpg', title : 'My Caption' },
					{ href : 'http://swipebox.csag.co/images/image-2.jpg', title : 'My Second Caption' }
				] );
			} );

      });
</script>
<script src="<?php bloginfo('template_directory');?>/js/script.js"></script>

</body>

</html>