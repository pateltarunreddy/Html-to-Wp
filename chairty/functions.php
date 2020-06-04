<?php

// Register Custom Navigation Walker

//require_once('inc/wp_bootstrap_navwalker.php');

add_theme_support( 'automatic-feed-links' );

add_theme_support( 'post-thumbnails' ); 

//add_theme_support( 'post-thumbnails' );
//set_post_thumbnail_size( 50, 50);


   // get the the role object
   $editor = get_role('editor');
   // add $cap capability to this role object
   $editor->add_cap('edit_theme_options');



/*-----------------------------------------------------------------------------------*/

/* Register main menu for Wordpress use

/*-----------------------------------------------------------------------------------*/

function register_my_menus() {
  register_nav_menus(
    array(
      'header-menu' => __( 'Header Menu' ),
      'extra-menu' => __( 'Extra Menu' )
    )
  );
}
add_action( 'init', 'register_my_menus' );


/*css menu walker*/
//add_action('wp_enqueue_scripts', 'cssmenumaker_scripts_styles' );


/* css menu style*/
/*function cssmenumaker_scripts_styles() {  
   wp_enqueue_style( 'css-styles', get_template_directory_uri() . '/css/styles.css');
    //wp_enqueue_script( 'index.js', get_template_directory_uri() . '/menu/script.js');
}*/











/*-----------------------------------------------------------------------------------*/

/* Activate sidebar for Wordpress use

/*-----------------------------------------------------------------------------------*/

function naked_register_sidebars() {

	

	

	register_sidebar(array(

    		'name' => 'Footer Block Menu',

    		'id'   => 'footer_block',

    		'description'   => 'Footer block area',

    		'before_widget' => '<div class="row">',

    		'after_widget'  => '</div>',

    		'before_title'  => '<h3>',

    		'after_title'   => '</h3>',

			

    	));

		
		

		

		register_sidebar(array(

    		'name' => 'Home Image Blocks',

    		'id'   => 'home_image_blocks',

    		'description'   => 'Home Image Block area',

    		'before_widget' => '<div class="row">',

    		'after_widget'  => '</div>',

    		'before_title'  => '<span>',

    		'after_title'   => '</span>'

    	));
		
		
		
		register_sidebar(array(

    		'name' => 'Home Services Blocks',

    		'id'   => 'home_services_blocks',

    		'description'   => 'Home Services Block area',

    		'before_widget' => '<div class="row">',

    		'after_widget'  => ' </div>',

    		'before_title'  => '<span>',

    		'after_title'   => '</span>'

    	));
		
		
		

		register_sidebar(array(

    		'name' => 'Subscribe Block',

    		'id'   => 'subscribe_block',

    		'description'   => 'Home Image Block area',

    		'before_widget' => '<div class="row">',

    		'after_widget'  => '</div>',

    		'before_title'  => '<h4>',

    		'after_title'   => '</h4>'

    	));

		

		register_sidebar(array(

    		'name' => 'Sidebar Block',

    		'id'   => 'sidebar_block',

    		'description'   => 'sidebar block area',

    		'before_widget' => '<div class="right-box-block">',

    		'after_widget'  => '</div>',

			'before_title'  => '<h5>',

    		'after_title'   => '</h5>'

    		

			

    	));

	

} 

// adding sidebars to Wordpress (these are created in functions.php)

add_action( 'widgets_init', 'naked_register_sidebars' );



/*-----------------------------------------------------------------------------------*/

/* Enqueue Styles and Scripts

/*-----------------------------------------------------------------------------------*/



function pp_scripts() {
// Registering Bootstrap style
wp_enqueue_style( 'bootstrap_min', get_stylesheet_directory_uri().'/css/bootstrap.min.css' );

wp_enqueue_script('jquery');
//Registering Bootstrap Script
wp_enqueue_script( 'bootstrap_min', get_template_directory_uri() . '/js/bootstrap.min.js', array(), '', true );
}
add_action( 'wp_enqueue_scripts', 'pp_scripts' );







add_action( 'init', 'custom_bootstrap_slider' );
/**
 * Register a Custom post type for.
 */
function custom_bootstrap_slider() {
	$labels = array(
		'name'               => _x( 'Slider', 'post type general name'),
		'singular_name'      => _x( 'Slide', 'post type singular name'),
		'menu_name'          => _x( 'Bootstrap Slider', 'admin menu'),
		'name_admin_bar'     => _x( 'Slide', 'add new on admin bar'),
		'add_new'            => _x( 'Add New', 'Slide'),
		'add_new_item'       => __( 'Name'),
		'new_item'           => __( 'New Slide'),
		'edit_item'          => __( 'Edit Slide'),
		'view_item'          => __( 'View Slide'),
		'all_items'          => __( 'All Slide'),
		'featured_image'     => __( 'Featured Image', 'text_domain' ),
		'search_items'       => __( 'Search Slide'),
		'parent_item_colon'  => __( 'Parent Slide:'),
		'not_found'          => __( 'No Slide found.'),
		'not_found_in_trash' => __( 'No Slide found in Trash.'),
	);

	$args = array(
		'labels'             => $labels,
		'menu_icon'	     => 'dashicons-star-half',
    	        'description'        => __( 'Description.'),
		'public'             => true,
		'publicly_queryable' => true,
		'show_ui'            => true,
		'show_in_menu'       => true,
		'query_var'          => true,
		'rewrite'            => true,
		'capability_type'    => 'post',
		'has_archive'        => true,
		'hierarchical'       => true,
		'menu_position'      => null,
		'supports'           => array('title','editor','thumbnail','custom-fields')
	);

	register_post_type( 'slider', $args );
}

/*testimonial*/
add_action( 'init', 'testimonial' );
/**
 * Register a Custom post type for.
 */
function testimonial() {
	$labels = array(
		'name'               => _x( 'Testimonial', 'post type general name'),
		'singular_name'      => _x( 'Test', 'post type singular name'),
		'menu_name'          => _x( 'Testimonials', 'admin menu'),
		'name_admin_bar'     => _x( 'Testimonial', 'add new on admin bar'),
		'add_new'            => _x( 'Add New', 'Testimonial'),
		'add_new_item'       => __( 'Name'),
		'new_item'           => __( 'New Testimonial'),
		'edit_item'          => __( 'Edit Testimonial'),
		'view_item'          => __( 'View Testimonial'),
		'all_items'          => __( 'All Testimonial'),
		'featured_image'     => __( 'Featured Image', 'text_domain' ),
		'search_items'       => __( 'Search Testimonial'),
		'parent_item_colon'  => __( 'Parent Testimonial:'),
		'not_found'          => __( 'No Testimonial found.'),
		'not_found_in_trash' => __( 'No Testimonial found in Trash.'),
	);

	$args = array(
		'labels'             => $labels,
		'menu_icon'	     => 'dashicons-star-half',
    	        'description'        => __( 'Description.'),
		'public'             => true,
		'publicly_queryable' => true,
		'show_ui'            => true,
		'show_in_menu'       => true,
		'query_var'          => true,
		'rewrite'            => true,
		'capability_type'    => 'post',
		'has_archive'        => true,
		'hierarchical'       => true,
		'menu_position'      => null,
		'supports'           => array('title','editor','thumbnail','custom-fields')
	);

	register_post_type( 'Testimonial', $args );
}

/*news*/
add_action( 'init', 'news' );
/**
 * Register a Custom post type for.
 */
function news() {
	$labels = array(
		'name'               => _x( 'News', 'post type general name'),
		'singular_name'      => _x( 'new', 'post type singular name'),
		'menu_name'          => _x( 'News', 'admin menu'),
		'name_admin_bar'     => _x( 'News', 'add new on admin bar'),
		'add_new'            => _x( 'Add New', 'News'),
		'add_new_item'       => __( 'Name'),
		'new_item'           => __( 'New News'),
		'edit_item'          => __( 'Edit News'),
		'view_item'          => __( 'View News'),
		'all_items'          => __( 'All News'),
		'featured_image'     => __( 'Featured Image', 'text_domain' ),
		'search_items'       => __( 'Search News'),
		'parent_item_colon'  => __( 'Parent News:'),
		'not_found'          => __( 'No News found.'),
		'not_found_in_trash' => __( 'No News found in Trash.'),
	);

	$args = array(
		'labels'             => $labels,
		'menu_icon'	     => 'dashicons-star-half',
    	        'description'        => __( 'Description.'),
		'public'             => true,
		'publicly_queryable' => true,
		'show_ui'            => true,
		'show_in_menu'       => true,
		'query_var'          => true,
		'rewrite'            => true,
		'capability_type'    => 'post',
		'has_archive'        => true,
		'hierarchical'       => true,
		'menu_position'      => null,
		'supports'           => array('title','editor','thumbnail','custom-fields')
	);

	register_post_type( 'News', $args );
}


// Product Custom Post Type
function product() {
    // set up product labels
    $labels = array(
        'name' => 'Products',
        'singular_name' => 'Product',
        'add_new' => 'Add New Product',
        'add_new_item' => 'Add New Product',
        'edit_item' => 'Edit Product',
        'new_item' => 'New Product',
        'all_items' => 'All Products',
        'view_item' => 'View Product',
        'search_items' => 'Search Products',
        'not_found' =>  'No Products Found',
        'not_found_in_trash' => 'No Products found in Trash', 
        'parent_item_colon' => '',
        'menu_name' => 'Products',
    );
    
    // register post type
    $args = array(
        'labels' => $labels,
        'public' => true,
        'has_archive' => true,
        'show_ui' => true,
        'capability_type' => 'post',
       
		'hierarchical'       => true,
        'rewrite' => array('slug' => 'product'),
        'query_var' => true,
        'menu_icon' => 'dashicons-randomize',
        'supports' => array(
            'title',
            'editor',
            'excerpt',
            'trackbacks',
            'custom-fields',
            'comments',
            'revisions',
            'thumbnail',
            'author',
            'page-attributes'
        )
    );
    register_post_type( 'product', $args );
    
    // register taxonomy
    register_taxonomy('product_category', 'product', array('hierarchical' => true, 'label' => 'Category', 'query_var' => true, 'rewrite' => array( 'slug' => 'product-category' )));
}
add_action( 'init', 'product' );



/*team*/
// Register Custom Post Type
function create_team_members() {

	$labels = array(
		'name'                  => _x( 'Team Members', 'Post Type General Name', 'cw-custom-post-types' ),
		'singular_name'         => _x( 'Team Member', 'Post Type Singular Name', 'cw-custom-post-types' ),
		'menu_name'             => __( 'Team Members', 'cw-custom-post-types' ),
		'name_admin_bar'        => __( 'Team Members', 'cw-custom-post-types' ),
		'archives'              => __( 'Team Member Archives', 'cw-custom-post-types' ),
		'parent_item_colon'     => __( 'Parent Team Member:', 'cw-custom-post-types' ),
		'all_items'             => __( 'All Team Members', 'cw-custom-post-types' ),
		'add_new_item'          => __( 'Add New Team Member', 'cw-custom-post-types' ),
		'add_new'               => __( 'Add New', 'cw-custom-post-types' ),
		'new_item'              => __( 'New Team Member', 'cw-custom-post-types' ),
		'edit_item'             => __( 'Edit Team Member', 'cw-custom-post-types' ),
		'update_item'           => __( 'Update Team Member', 'cw-custom-post-types' ),
		'view_item'             => __( 'View Team Member', 'cw-custom-post-types' ),
		'search_items'          => __( 'Search Team Member', 'cw-custom-post-types' ),
		'not_found'             => __( 'Not found', 'cw-custom-post-types' ),
		'not_found_in_trash'    => __( 'Not found in Trash', 'cw-custom-post-types' ),
		'featured_image'        => __( 'Featured Image', 'cw-custom-post-types' ),
		'set_featured_image'    => __( 'Set featured image', 'cw-custom-post-types' ),
		'remove_featured_image' => __( 'Remove featured image', 'cw-custom-post-types' ),
		'use_featured_image'    => __( 'Use as featured image', 'cw-custom-post-types' ),
		'insert_into_item'      => __( 'Insert into Team Member', 'cw-custom-post-types' ),
		'uploaded_to_this_item' => __( 'Uploaded to this Team Member', 'cw-custom-post-types' ),
		'items_list'            => __( 'Team Members list', 'cw-custom-post-types' ),
		'items_list_navigation' => __( 'Team Members list navigation', 'cw-custom-post-types' ),
		'filter_items_list'     => __( 'Filter Team Members list', 'cw-custom-post-types' ),
	);
	$args = array(
		'label'                 => __( 'Team Member', 'cw-custom-post-types' ),
		'description'           => __( 'Chalk and Ward Team Members', 'cw-custom-post-types' ),
		'labels'                => $labels,
		'supports'              => array( 'title', ),
		'taxonomies'            => array( 'category' ),
		'hierarchical'          => false,
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
		'menu_position'         => 20,
		'menu_icon'             => 'dashicons-groups',
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => true,
		'can_export'            => true,
		'has_archive'           => true,		
		'exclude_from_search'   => false,
		'publicly_queryable'    => true,
		'capability_type'       => 'page',
	);
	register_post_type( 'team-members', $args );

}
add_action( 'init', 'create_team_members', 0 );