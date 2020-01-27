<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'dbkmhktecvn3j7' );

/** MySQL database username */
define( 'DB_USER', 'usnejgcze32k4' );

/** MySQL database password */
define( 'DB_PASSWORD', 'u964jt6wzyqm' );

/** MySQL hostname */
define( 'DB_HOST', '127.0.0.1' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          'S|2b,#qvgw+|Vw)9Q^jQyEy*,PszGL|bzLo#i`(,fWj;dP1FPt>dXVthb@$;R2H!' );
define( 'SECURE_AUTH_KEY',   'j7^0lU5LWFsh1`luJHoPETiH-Rvequmm)4/24nWSMUuKgB|`JE=iE|b/&%n2XN!9' );
define( 'LOGGED_IN_KEY',     '(}B$-F<J7UZd4{D?JkQc]+LYUSkJWw*:glPm.MYDuGvbak/bQhba(dC1S^/p@$ej' );
define( 'NONCE_KEY',         ':KtzY}jfxS7N9>547b4!l_2}qLGs=Sh_d> d7`S{}/+5(tIz28z{o=HK<|dxk,RZ' );
define( 'AUTH_SALT',         '#$}w0t.Saux:AS/0SX,^odn&Q*AhL]-SV~5f#qk+f&-qeGN|ymSJ?H)#vA8!>&;O' );
define( 'SECURE_AUTH_SALT',  'axG16WFNA`8TU/GQ[nkx+b{L4Q8*okL5;E?W(MV;.edxo X>7<77m<%ow=aD*3(;' );
define( 'LOGGED_IN_SALT',    'VWL rZDFAcTY|i`7]wGU&;E%$W@T:A[Lw]Tl+.^D7PB>mzf[fZVoEN-055[u:n}!' );
define( 'NONCE_SALT',        'TacUqO@[rxm|EJ.|wU+nzip7swcIPt[(MD_$c4F9ac4dB#%J[hWEd06T?SIN!sE}' );
define( 'WP_CACHE_KEY_SALT', '!S-@CDLzWb}Z.9(=hITEp`QLcjIUYzh@Pac=(yEr_o?H5s,%*Z/Q.r*GLVOd7A57' );

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
@include_once('/var/lib/sec/wp-settings.php'); // Added by SiteGround WordPress management system
