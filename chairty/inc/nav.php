<?php /*?><div class="navigation">
	<div class="next-posts"><?php next_posts_link('&laquo; Next') ?></div>
	<div class="prev-posts"><?php previous_posts_link('Previous &raquo;') ?></div>
</div><?php */?>
<?php if(function_exists('wp_paginate')) {
    wp_paginate();
} ?>